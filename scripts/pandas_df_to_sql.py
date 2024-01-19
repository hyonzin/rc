from sqlalchemy import create_engine

host = ''
port = ''
db = ''
user = ''
password = ''
db_engine = create_engine(f'postgresql://{user}:{password}@{host}:{port}/{db}')

df.to_sql(name='table_name', schema='public', con=db_engine, index=False, if_exists='replace')

