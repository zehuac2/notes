- [Overview](#overview)
  - [Approaches](#approaches)
  - [Loss Functions](#loss-functions)
- [Hybrid](#hybrid)
  - [Shared Backbone](#shared-backbone)
  - [Individual Network for Each Tasks](#individual-network-for-each-tasks)

# Overview

Solve multiple types of tasks using machine learning

## Approaches

1. One neural network for multiple tasks
2. Separate network for each task
3. Hybrid

## Loss Functions

# Hybrid

## Shared Backbone

```mermaid
graph LR;
  Input --> Shared1;
  Shared1 --> Shared2;
  Shared2 --> Task1_1;
  Shared2 --> Task2_1;
  Task1_1 --> Task1_2;
  Task2_1 --> Task2_2;
```

## Individual Network for Each Tasks

```mermaid
graph LR;
  Input --> Task1_1;
  Input --> Task2_1;
  Task1_1 --> Task1_2;
  Task2_1 --> Task2_2;
```
