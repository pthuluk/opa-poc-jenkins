# jenkins-pipeline.rego. Notice the package. The opa.pipelines package is used for policies that get checked when a pipeline is saved.
package opa.jenkins.pipeline

# The pipeline.json is presumed faulty
default allow = false

# Returns true only if there are no violations
allow = true {
    input.app_name
}

# Returns true only if there are no violations
deny ["Pipleine json needs to have app_name"] {
    not input.app_name
}

deny ["Pipleine json needs to have app_type"] {
    not input.app_type
}
