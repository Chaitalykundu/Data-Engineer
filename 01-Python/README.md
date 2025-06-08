# Python Learning Plan for Data Engineering (15 Days)

| Day    | Topic                 | Key Concepts                                             | Practice / Project                                                                                                                                                                                      | Status | Project status |
| ------ | --------------------- | -------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------ | -------------- |
| **1**  | Python Basics         | Install Python, Jupyter, and VS Code                     | Simple calculator                                                                                                                                                                                       | Done   |
|        |                       | Data types: int, float, string, bool                     | string reverser                                                                                                                                                                                         | Done   |
|        |                       | Variables and type casting                               | Done                                                                                                                                                                                                    |
|        |                       | Basic operations                                         | Done                                                                                                                                                                                                    |
| **2**  | Control Structures    | `if-else`, `elif`                                        | FizzBuzz                                                                                                                                                                                                |
|        |                       | `for` and `while`                                        | loops factorial                                                                                                                                                                                         |
|        |                       | List comprehensions                                      | pattern printing                                                                                                                                                                                        |
| **3**  | Functions & Modules   | Defining functions                                       | Reusable functions                                                                                                                                                                                      |
|        |                       | Arguments (\*args, \*\*kwargs)                           | mini library                                                                                                                                                                                            |
|        |                       | Importing and using modules                              |                                                                                                                                                                                                         |
| **4**  | Data Structures       | Lists, Tuples, Sets, Dictionaries                        | Word frequency counter                                                                                                                                                                                  |
|        |                       | CRUD operations on these                                 | shopping cart simulator                                                                                                                                                                                 |
|        |                       | Nesting and comprehensions                               |
| **5**  | File Handling         | Reading/writing .txt, .csv, .json                        | Log reader                                                                                                                                                                                              |
|        |                       | with open(), file modes                                  | JSON flattener                                                                                                                                                                                          |
|        |                       | Working with os and glob                                 |
| **6**  | Pandas & NumPy        | DataFrame creation, indexing, slicing                    | Clean messy CSV                                                                                                                                                                                         |
|        |                       | Cleaning and transforming data                           | normalize dataset                                                                                                                                                                                       |
|        |                       | NumPy arrays and vectorized operations                   |
| **7**  | Mini Project 1        | Combine file I/O + Pandas + cleaning                     | CSV cleaning script with `pandas`                                                                                                                                                                       |
| **8**  | SQL + Python          | `sqlite3`, `SQLAlchemy`, `psycopg2`, run SQL from Python | Load CSV to DB, query filtered data                                                                                                                                                                     |
| **9**  | API Handling          | requests module                                          | Extract data from a public API (e.g., weather or currency)                                                                                                                                              |
|        |                       | GET, POST, authentication, headers                       |
|        |                       | JSON parsing and error handling                          |
| **10** | Web Scraping          | Use BeautifulSoup                                        | Scrape job listings from Indeed                                                                                                                                                                         |
|        |                       | requests.get() + parsing HTML/XML                        |
|        |                       | Pagination and saving to CSV                             |
| **11** | Advanced File Formats | Read/write Parquet using pyarrow, fastparquet            | Build CSV → Parquet converter                                                                                                                                                                           |
|        |                       | Convert JSON to Parquet and vice versa                   |
| **12** | Install PySpark       | RDD, DataFrame, `filter`, `map`, `groupBy`               | Analyze large CSV with PySpark locally                                                                                                                                                                  |
|        |                       | Create RDDs and DataFrames                               |
|        |                       | Basic transformations (filter, map, groupBy)             |
| **13** | Workflow Automation   | What is Airflow? DAGs, Tasks                             | Create a DAG that extracts and saves API data to a file                                                                                                                                                 |
|        |                       | Install and write your first DAG                         |
|        |                       | Schedule a dummy ETL workflow                            |
| **14** | Cloud Integration     | AWS: Use boto3 to list/upload/download S3 objects        | Upload a file to cloud bucket from Python and download to S3 or GCS                                                                                                                                     |
|        |                       | GCP: Use google-cloud-storage library                    |
| **15** | Capstone Project      | Full ETL: Extract → Transform → Load (+ schedule)        | Build a complete ETL pipeline <br> Steps: <br> Extract: Get data from an API or CSV <br> Transform: Clean using Pandas <br> Load: Save to PostgreSQL / Cloud <br> Bonus: Schedule using Airflow or cron |

&nbsp;

&nbsp;

&nbsp;

# Tips for Success

- Use logging instead of print()
- Break code into functions/modules
- Add error handling to scripts
- Use Git to version your projects
