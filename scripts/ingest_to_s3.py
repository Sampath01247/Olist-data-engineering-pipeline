print("Script started...")

import pandas as pd
import os

RAW_PATH = "data/raw"
CLEAN_PATH = "data/cleaned"

FILES = [
    "orders.csv",
    "order_items.csv",
    "customers.csv",
    "products.csv",
    "payments.csv"
]

os.makedirs(CLEAN_PATH, exist_ok=True)

def clean_dataframe(df):
    df.columns = [col.strip().lower() for col in df.columns]
    df = df.drop_duplicates()
    df = df.dropna(how="all")
    return df

for file in FILES:
    print(f"\nProcessing {file}...")

    input_path = os.path.join(RAW_PATH, file)
    output_path = os.path.join(CLEAN_PATH, file)

    try:
        df = pd.read_csv(input_path)
        df = clean_dataframe(df)

        print(f"{file} shape after cleaning: {df.shape}")

        df.to_csv(output_path, index=False)
        print(f"{file} processed successfully")

    except FileNotFoundError:
        print(f"File not found: {file}")

print("\n All files processed!")