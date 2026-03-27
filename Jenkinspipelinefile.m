Create file:
Jenkinsfile
pipeline {

    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Run MATLAB Tests') {
            steps {
                sh 'matlab -batch "run_tests"'
            }
        }

        stage('Publish Results') {
            steps {
                junit 'test-results.xml'
            }
        }

    }

}
