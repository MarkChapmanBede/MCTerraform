pipeline {
    agent any

    environment {
        // Env Vars for Terraform/Created cluster details
        TF_VAR_node_role_arn = credentials('TF_VAR_node_role_arn')
        TF_VAR_cluster_role_arn = credentials('TF_VAR_cluster_role_arn')
        TF_VAR_subnet_ids = credentials('TF_VAR_subnet_ids')
    }

    stages {
        stage('Initialize') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Plan') {
            steps {
                script {
                    // Output of terraform plan
                    planOutput = sh(script: 'terraform plan', returnStdout: true).trim()
                    echo "Plan Output: \n${planOutput}"
                }
            }
        }

        stage('Apply') {
            steps {
                input "Are you sure you want to apply the Terraform changes?"
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
