pipeline {
    agent any

    environment {
        WORKSPACE = 'PWD'
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
                sh echo $WORKSPACE
            }
        }
    }

}