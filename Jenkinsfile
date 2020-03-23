pipeline {
    // stageジョブを実行する環境をagentとして定義
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
        stage('Deploy') {
            // このstageジョブを実行する環境をagent(oc CLI入りのコンテナ)として個別に定義
            agent{ docker 'widerin/openshift-cli:v3.11.0' }
            steps {
                // sh 'ls && oc -h'
                // oc ログイン
                // Project指定
                // ビルド実行
                sh 'oc login https://192.168.99.100:8443 -u developer -p developer --insecure-skip-tls-verify=true && oc project myproject && oc start-build rails-hello-app-docker'
            }
        }
    }
}
