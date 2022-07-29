# OPA PoC Jenkins - CI
Policy as code driven CI using OPA

This example shows how OPA can enforce the requirements for pipeline.json file. Assumption is that pipeline.json abstracts all parameters needed for any pipeline framework. For example, Jenkinsfile (pipeline file of Jenkins) can refer to a standard pipeline.json file for information about the applicatoin.
In the case of Jenkins, instead of checking policies at CI build/pre-build level within the shared libraries in an ad-hoc way--you can leverage OPA.
OPA enables you to make your implicit policies explicit and declarative.

## Policy
The jenkins-pipeline.rego file checks for 2 key params: app_name & app_type in the pipeline.json that Jenkinsfile can reference.

## Test
Please follow the steps given here https://www.openpolicyagent.org/docs/latest/#running-opa to run OPA.

```bash
opa eval -i pipeline.json --data jenkins-pipeline.rego --format pretty --fail-defined data.opa.jenkins.pipeline
```
