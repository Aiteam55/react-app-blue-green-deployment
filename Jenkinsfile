pipeline {
	agent none

	stages {
		stage('Build React App') {
			agent { docker { image 'node:20-alpine' } }
            steps {
				sh '''
                    npm install
                    npm run build
                '''
            }
        }
	}
}