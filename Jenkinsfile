pipeline {
    agent {
        docker { image 'node:16.15.1' }
    }

    stages {
      stage('Test') {
          steps {
              sh 'node --version'
          }
      }
  }

    // stage('Clone repository') {
    //     checkout scm
    // }

    // stage('Build image') {
    //     app = docker.build("next-container_next-container")
    // }

    // stage('Test image') {
    //     app.inside {
    //         sh 'echo "Tests passed"'
    //     }
    // }

    // stage('Push image') {
    //     docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
    //         app.push("${env.BUILD_NUMBER}")
    //         app.push("latest")
    //     }
    // }
}