pipeline {
    agent { docker 'ruby:2.5.5-stretch' }
    stages {

        stage('Git Pull') {
            git url: 'https://github.com/mochizuki875/hello_app_2_5', branch: 'feature_jenkins_test'
        }
        stage('static') {
            steps {
                sh 'echo static'
            }
        }
        stage('test') {
            steps {
                sh 'echo test'
            }
        }
    }
}
