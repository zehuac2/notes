- [Overview](#overview)
- [Applications](#applications)
- [Similarity Matching](#similarity-matching)
  - [Similarity](#similarity)
- [Challenges](#challenges)

# Overview

A time series is a collection of observations made sequentially in time; large
volumes of time series appear in virtually every discipline,

- Images and texts can be converted to time series data
- Large data typically live on disk and are consumed in streams, i.e. time
  series data

# Applications

All applications of time series data involve similarity matching; the definition
of similarity depends on the user, the domain, and the task at hand

- Clustering
  - Image similarity
  - Video tracking and surveillance
- Classification
- Query by content

# Similarity Matching

Compare the given query with all sequences in database and return the k most
similar sequences to the query

- Solution to most time series problem boils down to a proper definition of a
  **similarity functions**

## Similarity

- Context dependent
  - Specific to application
  - Depends on the features we consider
- [**Distance function**](Distances.ipynb) is a function that defines a distance
  between pairs of elements (ex time series sequences)

About 80% of published work in time-series analysis uses Euclidean distance

- Euclidean distance cannot compensate for small distortions in time axis;
  **Solution**: Allow for compression & decompression in time
- Cross correlation measure: Keep one sequence static and slide the other to
  compute the correlation (i.e., inner product) for each shift

# Challenges

- Differing data format (e.g., xml vs. csv, seconds vs. Hz)
- Differing sampling rates (e.g., every hour vs. every minute)
- Noise (e.g., indoor vs. outdoor signals)
- Missing values (e.g., change of sensor)
- Distortions (e.g., linear trend)

We need to efficiently handle problems with data either through pre-processing
steps or “on the fly” while performing a task.
