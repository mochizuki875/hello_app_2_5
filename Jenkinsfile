pipeline {
    stages {
        agent { docker 'ruby:2.5.5-stretch' }
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
