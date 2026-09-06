# Apache Spark

- **RDD**: resilient distributed dataset
  - Built and manipulated through transformations
  - Transform: transform RDD into another RDD
  - Action: takes RDD and produces a result
  - Programmers specifies number of partitions for an RDD
- Two Types of API
  - Low Level: RDDs
  - High Level: Dataframes
- Spark Programs: made of two programs: driver and worker program
  - Driver contains Spark context
  - Spark context manages cluster manager and local threads
  - Cluster manager manages workers that contains Spark executors
  - Data comes from S3, HDFS or other file storage

# Overview

- Application
- Session
- Job: parallel computation consists of multiple tasks
- Stage: each job is divided into smaller sets of tasks called stages that
  depend on each other
- Task: a single unit of work sent to Spark executor
- Transformations are lazily evaluated
  - Narrow: one input partition
  - Wide transformation: multiple input partition
- Actions trigger evaluation of transformations
- Shared variables
  - Broadcast variables: efficiently send large, read-only value to all workers
    - Saved at workers for use in spark operations
    - Ex. large readonly lookup table to all nodes
  - Accumulators: aggregate values from worker back to driver
    - Only driver can access value of accumulator
    - Tasks can only write to accumulators
    - Ex. count errors

```python
signal = sc.broadcast(values)

def process():
    return lookup(value, signal.value)

rdd = rdd.map(process)
```

## Installation

### PySpark

```bash
pip install pyspark
# pip install pyspark[sql] is not recognized correctly in some shells
pip install 'pyspark[sql]'
```

# Components

![Spark components](images/components.png)

## Spark SQL

- DataFrames are RDDs full of records with a known schema
  - Schemas can sometimes be inferred
  - Schema is required; schema + rows make RDD
- DataFrames are untyped
- To run raw SQL (`spark.sql(’…’)`), create a temporary view from dataframe
  first

## Spark Streaming

## Machine Learning

## GraphX

# Architecture

![Spark architecture](images/architecture.png)

- SparkSession is the entry point to spark API
- A single executor runs on each node

## Modes

- Local
- Standalone
- YARN (client)
- YARN (cluster)
- Kubernetes

## Resources

- Learning Spark: Lightning Fast Data Analytics
- [Apache Spark Paper Summary](https://app.notion.com/p/Map-Reduce-c676da162bc24ddf83b3312e2955cd62?pvs=21)

# Resources

- [Zehua-Chen’s Sample Code](https://github.com/Zehua-Chen/spark-examples)
