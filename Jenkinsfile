# jenkinsfile including terraform commands to to create a ec2 instance on aws. with aws credentials stored in jenkins credentials manager.
pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('aws-access-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
        TF_VAR_key_name = 'terraformjenkins.pem' // Key pair name
        TF_VAR_instance_type = 't2.micro' // Instance type
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Arfath8315/terraform-jenkins-aws.git' // Replace with your repository
            } 
        }
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('Terraform validate') {
            steps {
                sh 'terraform validate'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}   