pipeline {
    agent any

    environment {
        WORKSPACE = 'pwd()'
    }

    stages {
        stage('Build'){
            steps{
                withMaven(maven:'maven-3.6.1'){
                    sh 'mvn clean install'
                }
            }
        }
        stage('deploy'){
            steps{
                sh 'printenv'
            }
        }
    }

}