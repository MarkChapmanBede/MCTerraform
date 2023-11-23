pipeline {
    agent any

    environment {
        // Bind the Jenkins credentials to environment variables
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
                sh 'terraform plan'
            }
        }

        stage('Apply') {
            steps {
                input "Are you sure you want to apply the Terraform changes?"
                sh 'terraform apply'
            }
        }
    }

    post {
        always {
            cleanWs()  // Clean up the workspace after the pipeline execution
        }
    }
}
