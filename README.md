# OPA PoC Jenkins - CI
Policy as code driven CI using OPA

This example shows how OPA can enforce the requirements for pipeline.json file
Instead of checking policies at CI level within the shared libraries in an ad-hoc way you can leverage OPA. OPA enables you to make your implicit policies explicit and declarative.

## Policy
The rego file checks for 2 key params: app_name & app_type in the pipeline.json that Jenkinsfile can reference.

## Test
Please follow the steps given here https://www.openpolicyagent.org/docs/latest/#running-opa to run OPA.

```bash
opa eval -i pipeline.json --data jenkins-pipeline.rego --format pretty --fail-defined data.opa.jenkins.pipeline
```
