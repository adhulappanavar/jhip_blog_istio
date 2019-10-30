#!/usr/bin/env groovy

node {
    stage('checkout') {
        checkout scm
    }

    docker.image('jhipster/jhipster').inside('-u jhipster -e MAVEN_OPTS="-Duser.home=./"') {
        stage('check java') {
            sh "java -version"
        }

       
        stage('install tools') {
            sh "pwd"
            sh "ls -la"
            sh "cd store"
            sh "pwd"
            sh "ls -la"
            sh "./mvnw com.github.eirslett:frontend-maven-plugin:install-node-and-npm -DnodeVersion=v10.16.0 -DnpmVersion=6.9.0"
        }

        stage('npm install') {
            sh "./mvnw com.github.eirslett:frontend-maven-plugin:npm"
        }

        stage('backend tests') {
            try {
                sh "./mvnw verify"
            } catch(err) {
                throw err
            } finally {
                junit '**/target/test-results/**/TEST-*.xml'
            }
        }

        stage('frontend tests') {
            try {
                sh "./mvnw com.github.eirslett:frontend-maven-plugin:npm -Dfrontend.npm.arguments='run test'"
            } catch(err) {
                throw err
            } finally {
                junit '**/target/test-results/TESTS-*.xml'
            }
        }

        stage('package and deploy') {
            sh "./mvnw com.heroku.sdk:heroku-maven-plugin:2.0.5:deploy -DskipTests -Pprod -Dheroku.buildpacks=heroku/jvm -Dheroku.appName=jhipster"
            archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true
        }
        stage('quality analysis') {
            withSonarQubeEnv('sonar') {
                sh "./mvnw sonar:sonar"
            }
        }
    }
}
