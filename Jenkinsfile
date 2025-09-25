pipeline {
	agent any

	tools {
		nodejs 'node-24'
	}

	stages {
		stage('Build React App') {
            steps {
				sh '''
                    npm install
                    npm run build
                '''
            }
        }
	}
}