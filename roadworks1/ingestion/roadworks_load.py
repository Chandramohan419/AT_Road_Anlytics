import snowflake.connector
import pandas as pd


conn = snowflake.connector.connect(
    user="CHANDRAPOK",
    account="JAccount_id",
    authenticator="externalbrowser",
    warehouse="AT_PROJECTS_WH",
    database="ROADWORKS_DB",
    schema="RAW1",
    role="ACCOUNTADMIN"
)

print("Connected successfully")

conn.close()
query  = """
SELECT * FROM RAW1.ROADWORKS_DB
"""
DF = pd.read_csv('raw1.roadworks1.csv', index=False)
print("csv file loaded successfully")