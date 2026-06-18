import pandas as pd
import numpy as np
import random
from datetime import datetime, timedelta

# Number of records
num_records = 25000

# Date range
start_date = datetime(2024, 1, 1)
end_date = datetime(2025, 12, 31)

# Categories
regions = ["North", "South", "East", "West", "Central"]

departments = [
    "Sales",
    "Marketing",
    "Operations",
    "Supply Chain",
    "Finance"
]

product_categories = [
    "Beverages",
    "Dairy",
    "Snacks",
    "Personal Care",
    "Home Care",
    "Packaged Foods"
]

data = []

for i in range(1, num_records + 1):

    random_days = random.randint(
        0,
        (end_date - start_date).days
    )

    date = start_date + timedelta(days=random_days)

    revenue = random.randint(50000, 250000)

    expense_ratio = random.uniform(0.50, 0.85)

    expenses = round(revenue * expense_ratio, 2)

    profit = round(revenue - expenses, 2)

    budget_target = round(
        revenue * random.uniform(1.05, 1.20),
        2
    )

    quarter = f"Q{((date.month - 1) // 3) + 1}"

    data.append([
        f"TXN{i:05d}",
        date.strftime("%Y-%m-%d"),
        random.choice(regions),
        random.choice(departments),
        random.choice(product_categories),
        revenue,
        expenses,
        profit,
        budget_target,
        quarter,
        date.year
    ])

columns = [
    "Transaction_ID",
    "Date",
    "Region",
    "Department",
    "Product_Category",
    "Revenue",
    "Expenses",
    "Profit",
    "Budget_Target",
    "Quarter",
    "Year"
]

df = pd.DataFrame(data, columns=columns)

df.to_csv(
    "data/financial_data.csv",
    index=False
)

print("Dataset Generated Successfully!")
print(f"Total Records: {len(df)}")
