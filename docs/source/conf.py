# Configuration file for the Sphinx documentation builder.

import os

# -- Project information

project = "Gurobi Modeling Examples"
copyright = "Gurobi Optimization"
author = "Gurobi Optimization"

version = "0.1.0"
release = version

html_title = "Gurobi Modeling Examples"

extensions = [
    "sphinx_copybutton",
    "sphinx_design",
    "sphinx.ext.duration",
    "sphinx.ext.extlinks",
    "sphinx.ext.intersphinx",
]

intersphinx_mapping = {
    "python": ("https://docs.python.org/3/", None),
    "numpy": ("https://numpy.org/doc/stable/", None),
    "pandas": ("https://pandas.pydata.org/pandas-docs/stable/", None),
    "scipy": ("https://docs.scipy.org/doc/scipy/", None),
}

templates_path = ["_templates"]

# Shared snippet pulled in via `.. include::`, not a document of its own.
exclude_patterns = ["examples/_*.rst"]

html_theme = "gurobi_sphinxtheme"
html_favicon = "https://docs.gurobi.com/current/_static/favicon.ico"
html_show_sphinx = False
html_static_path = ["_static"]
html_css_files = ["custom.css"]

# -- Include only prompt lines, continuation lines included
copybutton_prompt_text = r">>> |\.\.\. "
copybutton_prompt_is_regexp = True

extlinks_detect_hardcoded_links = True

# Repository holding the notebooks. Once they are published, each example page
# gets a "View Example" button pointing at
# https://colab.research.google.com/github/<user>/<repo>/blob/<branch>/notebooks/...
github_user = "bonami"
github_repo = "nonlinear_examples"
github_version = "main"

if os.environ.get("READTHEDOCS", "") == "True":
    html_context = {
        "READTHEDOCS": True,
        "github_user": github_user,
        "github_repo": github_repo,
        "github_version": github_version,
        "display_github": True,
        "conf_py_path": "/docs/source/",
    }
