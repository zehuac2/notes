# CI/CD

# CDK

- For CDK projects, using `aws-cdk/pipeline` instead of `aws-cdk/code-pipeline`:
  duplicate resources in staging, production and development; setup pipeline
  only for staging and production and manual deployment for development

# Code Pipeline

- CDK’s Pipeline construct by default create KMS keys to support cross account
  deployment. **This would incur costs**.

## Artifacts

```tsx
const artifact = codepipeline.Artifact.artifact("Source");
```

- Artifact names must be unique in a pipeline
- Artifacts will be stored in S3 buckets

# Code Build

Code Build is a serverless executor that can be used for Code Pipeline

## Artifacts

```yaml
# codebuild build spec
artifacts:
  files:
    - lambdas/bundle.zip
  name: Bundle
```

- Code build can have secondary artifacts

### Code Pipeline Stage Action

```tsx
// defined in CDK
const bundle = codepipeline.Artifact.artifact("Bundle");
const source = codepipeline.Artifact.artifact("Source");

// project1's build spec should have the following snippet
//
// artifacts:
//  files:
//    - files
//  name: Bundle
new codepipeline_actions.CodeBuildAction({
  actionName: 'Action1',
  project: project1,
  input: source,
	outputs: [bundle]
}),

new codepipeline_actions.CodeBuildAction({
  actionName: 'Action2',
  project: someProject,
  input: bundle,
}),
```

A code build artifact and a code pipeline artifact that share the same name
points to the same object stored in S3 buckets. This enables code build to send
its output to other actions as inputs
