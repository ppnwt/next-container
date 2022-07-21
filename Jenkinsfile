pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}

	stages {

		stage('Build') {

			steps {
				sh 'docker build -t 82xcherodinger/next-container:latest .'
			}
		}
  }

	// 	stage('Login') {

	// 		steps {
	// 			sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
	// 		}
	// 	}

	// 	stage('Push') {

	// 		steps {
	// 			sh 'docker push 82xcherodinger/next-container:latest'
	// 		}
	// 	}
	// }

	// post {
	// 	always {
	// 		sh 'docker logout'
	// 	}
	// }

}
