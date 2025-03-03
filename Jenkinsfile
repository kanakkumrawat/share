pipeline {
  agent any
  stages {
    stage('Verify') {
      steps {
        sh '''ls
pwd'''
      }
    }

    stage('Build') {
      steps {
        sh '''terraform init
terraform plan'''
      }
    }

  }
  environment {
    first = 'FIRST'
  }
}