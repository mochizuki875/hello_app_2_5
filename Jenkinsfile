pipeline {
    agent any
    stages {
        stage('Static Analysis') {
            agent { docker 'ruby:2.5.5-stretch' }
            steps {
                sh 'bundle install && bundle exec rubocop'
            }
        }
        stage('Test') {
            agent { docker 'ruby:2.5.5-stretch' }
            steps {
                sh 'bundle install && bundle exec rspec'
            }
        }
    }
}
