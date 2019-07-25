pipeline {
    agent any

    environment {
        TOMCAT_APPHOME = '/opt/tomcat/webapps'

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
                sh 'cp $PWD/target/*.war $TOMCAT_APPHOME/'
            }
        }
    }

}