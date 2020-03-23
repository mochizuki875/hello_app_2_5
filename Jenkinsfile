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
                sh 'bundle install && bundle exec rubocop'
            }
        }
        stage('test') {
            steps {
                sh 'bundle exec rspec'
            }
        }
    }
}
