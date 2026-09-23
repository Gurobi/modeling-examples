#!/usr/bin/env python3
"""After-hours HVAC dispatch MIP. Runs on pip gurobipy size-limited license."""
from __future__ import annotations

import gurobipy as gp
from gurobipy import GRB

TECHS = ["Ana", "Ben", "Cara"]
JOBS = [
    {"id": "leak-hialeah", "value": 420, "duration": 90, "latest": 180},
    {"id": "no-cool-tampa", "value": 310, "duration": 60, "latest": 120},
    {"id": "emergency-miami", "value": 540, "duration": 120, "latest": 150},
    {"id": "frozen-line", "value": 260, "duration": 45, "latest": 90},
    {"id": "overflow-drain", "value": 380, "duration": 75, "latest": 210},
    {"id": "capacitor", "value": 190, "duration": 40, "latest": 240},
]
SHIFT = 240  # minutes on-call


def build_and_solve() -> gp.Model:
    m = gp.Model("afterhours_hvac_dispatch")
    x = m.addVars(
        ((t, j["id"]) for t in TECHS for j in JOBS),
        vtype=GRB.BINARY,
        name="assign",
    )
    start = m.addVars((j["id"] for j in JOBS), lb=0, ub=SHIFT, name="start")

    m.setObjective(
        gp.quicksum(j["value"] * x[t, j["id"]] for t in TECHS for j in JOBS),
        GRB.MAXIMIZE,
    )

    for j in JOBS:
        m.addConstr(x.sum("*", j["id"]) <= 1, name=f"one_tech_{j['id']}")
        m.addConstr(
            start[j["id"]] + j["duration"] <= j["latest"] + SHIFT * (1 - x.sum("*", j["id"])),
            name=f"window_{j['id']}",
        )

    for t in TECHS:
        m.addConstr(
            gp.quicksum(j["duration"] * x[t, j["id"]] for j in JOBS) <= SHIFT,
            name=f"shift_{t}",
        )

    m.Params.OutputFlag = 1
    m.optimize()
    return m, x


def main() -> None:
    m, x = build_and_solve()
    if m.Status != GRB.OPTIMAL:
        raise SystemExit(f"status={m.Status}")
    print(f"captured_job_value={m.ObjVal:.0f}")
    for t in TECHS:
        assigned = [j["id"] for j in JOBS if x[t, j["id"]].X > 0.5]
        print(f"{t}: {assigned or 'idle'}")
    missed = [j["id"] for j in JOBS if sum(x[t, j["id"]].X for t in TECHS) < 0.5]
    print(f"voicemail_leak={missed}")


if __name__ == "__main__":
    main()
