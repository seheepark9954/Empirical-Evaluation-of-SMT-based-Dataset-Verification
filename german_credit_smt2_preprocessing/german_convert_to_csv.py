import pandas as pd

input_path = "german.data-numeric" 

output_path = "german_numeric.csv"

df = pd.read_csv(input_path, header=None, delim_whitespace=True)

df = pd.read_csv(input_path, header=None, sep=r'\s+')

print(f"✅ Saved as '{output_path}' — shape: {df.shape}")