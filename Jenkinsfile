pipeline {
    agent { docker 'ruby:2.5.5-stretch' }
    stages {

        stage('Setup') {
            steps{
                sh 'bundle install'
             }
        }
        stage('Static Analysis') {
            steps {
                sh 'bundle exec rubocop'
            }
        }
        stage('Test') {
            steps {
                sh 'bundle exec rspec'
            }
        }
    }
}
