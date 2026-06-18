import pandas as pd
import numpy as np
import random
from datetime import datetime, timedelta

# Number of records
num_records = 25000

# Date range
start_date = datetime(2024, 1, 1)
end_date = datetime(2025, 12, 31)

# Regions
regions = ["North", "South", "East", "West", "Central"]

# Departments
departments = [
    "Sales",
    "Marketing",
    "Operations",
    "Supply Chain",
    "Finance"
]

# Product Categories
product_categories = [
    "Beverages",
    "Dairy",
    "Snacks",
    "Personal Care",
    "Home Care",
    "Packaged Foods"
]

# Region performance factors
region_factor = {
    "North": 1.20,
    "South": 1.10,
    "West": 1.35,
    "East": 0.95,
    "Central": 0.85
}

# Seasonal sales patterns
seasonality = {
    1: 0.85,
    2: 0.80,
    3: 0.95,
    4: 1.00,
    5: 1.05,
    6: 0.95,
    7: 1.10,
    8: 1.15,
    9: 1.20,
    10: 1.40,
    11: 1.60,
    12: 1.85
}

# Category-specific profit margins
category_margin = {
    "Beverages": (0.25, 0.40),
    "Dairy": (0.15, 0.30),
    "Snacks": (0.30, 0.45),
    "Personal Care": (0.35, 0.50),
    "Home Care": (0.25, 0.40),
    "Packaged Foods": (0.20, 0.35)
}

data = []

for i in range(1, num_records + 1):

    random_days = random.randint(
        0,
        (end_date - start_date).days
    )

    date = start_date + timedelta(days=random_days)

    month = date.month

    region = random.choice(regions)

    category = random.choice(product_categories)

    base_revenue = random.randint(50000, 250000)

    revenue = int(
        base_revenue *
        seasonality[month] *
        region_factor[region]
    )

    profit_margin = random.uniform(
        category_margin[category][0],
        category_margin[category][1]
    )

    profit = round(
        revenue * profit_margin,
        2
    )

    expenses = round(
        revenue - profit,
        2
    )

    budget_target = round(
        revenue * random.uniform(1.05, 1.20),
        2
    )

    quarter = f"Q{((date.month - 1) // 3) + 1}"

    data.append([
        f"TXN{i:05d}",
        date.strftime("%Y-%m-%d"),
        region,
        random.choice(departments),
        category,
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