pipeline {
    agent {
        docker { image 'jhipster/jhipster:v6.4.1' }
    }
    stages {
        stage ('Checkout'){
            steps {
                sh 'git https://github.com/adhulappanavar/jhip_blog_istio'
            }
        }
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }
    }
}
