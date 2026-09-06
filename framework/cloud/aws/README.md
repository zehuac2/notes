# AWS

# Overview

- Determine nearest AWS datacenter:
  [cloudping.info](https://www.cloudping.info/)

# Services

- Autoscale, Elastic Load Balancer, Elastic Beanstalk: horizontal scaling
- Lex: chat bot
- Elastic Container Services (ECS): auto-scale containers
  - Container Registry: docker image repository
- SageMaker: end to end, zero setup, flexible model training, pay by second

## Compute

- EC2: virtual machine
- Fargate: allows you to run containers without having to provision servers

## Cluster

- **Fargate**: serverless container runner
- **ECS**: container orchestration services developed by Amazon
  - Better integrated with AWS services
- **EKS**: hosted Kubernetes service
- **Elastic Beanstalk**: fully managed web apps and service workers
  - Customization of resources
  - Pay for resources individually; Pay for infrastructure
- **App Runner**: fully managed web apps
  - No customization of resources
  - Integrated billing; Pay per requests

## Storage

- **S3**: cloud storage
- **Cloud Front**: CDN

## Serverless

- **Amplify**: complete solution for web and mobile applications
  - Backend cumbersome
- **Lambda**: serverless functions
- **SAM (Serverless Application Model)**: CLI for managing serverless
  applications
- **Event Bridge**: event bus

## CI/CD

- **CodePipeline**: customizable CI/CD
  - Serves as the trigger to CI/CD
- **CodeBuild**: fully managed build service, auto-scales, no servers to manage,
  pay by minute, monitor through cloud watch
  - Similar to Jenkins
  - By default AWS caches the latest version of
    [some build types](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html)
    to reduce build time
- **CodeDeploy**: automates deployments to instance and lambda, avoid downtime,
  rollback automatically

## Network

- VPC
- NAT Gateway: used for communications outside of the VPC

## Tools

- **Auto pilot**: command line tool

# Concepts

- IAM User: an IAM user has limited access
- Group: a group associates users with permissions

# Resources

- [YouTube: AWS Online Tech Talks](https://www.youtube.com/c/AWSOnlineTechTalks)

[Elastic Load Balancing (ELB)](elastic-load-balancing.md)

# Topics

- [API Gateway](api-gateway/README.md)
- [AWS CDK](cdk.md)
- [CI/CD](ci-cd.md)
- [Elastic Load Balancing](elastic-load-balancing.md)
- [Lambda](lambda.md)
- [Lex](lex.md)
- [S3](s3.md)
