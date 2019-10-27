pipeline {
    agent {
        docker { image 'jhipster/jhipster:v6.4.1' }
    }
    stages {
        stage ('Genrate Microservices'){
            steps {
                sh 'jhipster import-jdl microservices-blog-store-istio.jh'
            }
        }
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }
    }
}
