pipeline {
    //agent any
    agent { docker 'ruby:2.5.5-stretch' }
    stages {
        stage('Setup') {
            steps {
                sh 'bundle install'
            }
        }
        stage('Static Analysis') {
            //agent { docker 'ruby:2.5.5-stretch' }
            steps {
                // sh 'bundle install && bundle exec rubocop'
                sh 'bundle exec rubocop'
                // sh 'echo rubocop'
            }
        }
        stage('Test') {
            steps {
                // sh 'bundle install && bundle exec rspec'
                sh 'bundle exec rspec'
                // sh 'echo rspec'
            }
        }
        stage('Deploy') {
            agent{ docker 'widerin/openshift-cli:v3.11.0' }
            steps {
            　  sh 'ls && oc -h'
                // oc ログイン
                // Project指定
                // ビルド実行
            }
        }
    }
}
