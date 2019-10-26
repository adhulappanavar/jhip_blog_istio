pipeline {
    agent any

    stages {
        
        stage('SCM Checkout'){
            git 'https://github.com/adhulappanavar/jhip_blog_istio'
        }
        
        
        stage ('Compile Stage') {

            steps {
                withMaven(maven : 'maven3') {
                    sh 'mvn clean compile'
                }
            }
        }

        stage ('Testing Stage') {

            steps {
                withMaven(maven : 'maven3') {
                    sh 'mvn test'
                }
            }
        }

    }
}
