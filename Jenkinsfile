pipeline {
    agent none
    stages {
        
        stage('Code-Generation') {
            agent {
                docker { image 'jhipster/jhipster:6.4.1' }
            }
            steps {
                sh 'jhipster -v'
                sh 'jhipster import-jdl microservices-blog-store-istio.jh'
            }
        }
        stage('Back-end') {
            agent {
                docker { image 'maven:3-alpine' }
            }
            steps {
                sh 'mvn --version'
            }
        }
        stage('Front-end') {
            agent {
                docker { image 'node:7-alpine' }
            }
            steps {
                sh 'node --version'
            }
        }
    }
}
