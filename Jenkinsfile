pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS-Cred')
        AWS_SECRET_ACCESS_KEY = credentials('AWS-Cred')
        TF_VAR_instance_type = 't2.micro' // Instance type
    }

    stages {
        
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform format') {
            steps {
                sh 'terraform fmt'
            }
        }
        stage('Terraform validate') {
            steps {
                sh 'terraform validate'
            }
        }
        stage('Terraform plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}   