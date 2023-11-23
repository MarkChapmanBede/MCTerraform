pipeline {
    agent any

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
            cleanWs()
            // Clean up or any other post actions
        }
    }
}
