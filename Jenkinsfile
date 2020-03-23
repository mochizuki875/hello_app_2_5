pipeline {
    agent { docker 'ruby:2.5.5-stretch' }
    stages {

        stage('Git Pull') {
            steps{
                sh 'pwd && ls'
             }
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
