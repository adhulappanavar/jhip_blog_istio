pipeline {
    agent none
    stages {
        
        stage('Code-Generation') {
            agent {
                docker { image 'docker pull jhipster/jhipster:v6.4.0' }
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
