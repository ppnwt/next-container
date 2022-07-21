pipeline {
  environment {
    registry = "82xcherodinger/next-container"
    registryCredential = 'dockerhub-id'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Building our image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    stage('Deploy our image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
    stage('Cleaning up') {
      steps{
        sh "docker rmi $registry:$BUILD_NUMBER"
      }
    }
    stage('ssh to server then deploy') {
      steps{
        sh "chmod +x ./script/deploy"
        sh "./script/deploy.sh"
      }
    }
  }
}