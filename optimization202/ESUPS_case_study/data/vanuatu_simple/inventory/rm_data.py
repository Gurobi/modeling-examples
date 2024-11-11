import pandas as pd

df=pd.read_csv('actual.csv')
print(df)

# Drop rows where ItemName is not 'Blankets' or 'Bucket'
df_filtered = df[df['ItemName'].isin(['Blankets', 'Bucket'])]

# Display filtered DataFrame
print("\nFiltered DataFrame:")
print(df_filtered)

df_filtered.to_csv('actual.csv', index=False)