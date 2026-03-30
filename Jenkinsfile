pipeline {
    agent any

    stages {
        stage('Run MATLAB Tests') {
            steps {
                bat 'matlab -batch "run_tests"'
            }
        }

        stage('Publish Results') {
            steps {
                echo 'Tests completed'
            }
        }
    }
}
