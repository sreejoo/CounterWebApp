pipeline {
    agent any

    environment {
        TOMCAT_APPHOME = '/opt/tomcat'

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
                sh 'cp $PWD/target/*.jar $TOMCAT_APPHOME/webapps/'
            }
        }
    }

}