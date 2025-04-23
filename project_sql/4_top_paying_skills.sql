/*
Answer: What are the top skills based on salary?
- Look at the average salary associated with each skill for Data Analyst positions
- Focuses on roles with specified salaries, regardless of location
- Why? It reveals how different skills impact salary levels for Data Analysts and 
    helps identify the most financially rewarding skills to acquire or improve
*/

SELECT
    skills AS skills_name,
    ROUND(AVG(salary_year_avg), 2) AS avg_salary
FROM
    job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL
    AND job_work_from_home = True
GROUP BY
    skills
ORDER BY
    avg_salary DESC
LIMIT 25

/*
Here's a breakdown of the results for top paying skills for Data Analysts:
- High Demand for Big Data & ML Skills: Top salaries are commanded by analysts skilled in big data technologies (PySpark, Couchbase), machine learning tools (DataRobot, Jupyter), and Python libraries (Pandas, NumPy), reflecting the industry's high valuation of data processing and predictive modeling capabilities.
- Software Development & Deployment Proficiency: Knowledge in development and deployment tools (GitLab, Kubernetes, Airflow) indicates a lucrative crossover between data analysis and engineering, with a premium on skills that facilitate automation and efficient data pipeline management.
- Cloud Computing Expertise: Familiarity with cloud and data engineering tools (Elasticsearch, Databricks, GCP) underscores the growing importance of cloud-based analytics environments, suggesting that cloud proficiency significantly boosts earning potential in data analytics.

[
  {
    "skills_name": "pyspark",
    "avg_salary": "208172.25"
  },
  {
    "skills_name": "bitbucket",
    "avg_salary": "189154.50"
  },
  {
    "skills_name": "couchbase",
    "avg_salary": "160515.00"
  },
  {
    "skills_name": "watson",
    "avg_salary": "160515.00"
  },
  {
    "skills_name": "datarobot",
    "avg_salary": "155485.50"
  },
  {
    "skills_name": "gitlab",
    "avg_salary": "154500.00"
  },
  {
    "skills_name": "swift",
    "avg_salary": "153750.00"
  },
  {
    "skills_name": "jupyter",
    "avg_salary": "152776.50"
  },
  {
    "skills_name": "pandas",
    "avg_salary": "151821.33"
  },
  {
    "skills_name": "elasticsearch",
    "avg_salary": "145000.00"
  },
  {
    "skills_name": "golang",
    "avg_salary": "145000.00"
  },
  {
    "skills_name": "numpy",
    "avg_salary": "143512.50"
  },
  {
    "skills_name": "databricks",
    "avg_salary": "141906.60"
  },
  {
    "skills_name": "linux",
    "avg_salary": "136507.50"
  },
  {
    "skills_name": "kubernetes",
    "avg_salary": "132500.00"
  },
  {
    "skills_name": "atlassian",
    "avg_salary": "131161.80"
  },
  {
    "skills_name": "twilio",
    "avg_salary": "127000.00"
  },
  {
    "skills_name": "airflow",
    "avg_salary": "126103.00"
  },
  {
    "skills_name": "scikit-learn",
    "avg_salary": "125781.25"
  },
  {
    "skills_name": "jenkins",
    "avg_salary": "125436.33"
  },
  {
    "skills_name": "notion",
    "avg_salary": "125000.00"
  },
  {
    "skills_name": "scala",
    "avg_salary": "124903.00"
  },
  {
    "skills_name": "postgresql",
    "avg_salary": "123878.75"
  },
  {
    "skills_name": "gcp",
    "avg_salary": "122500.00"
  },
  {
    "skills_name": "microstrategy",
    "avg_salary": "121619.25"
  }
]
*/