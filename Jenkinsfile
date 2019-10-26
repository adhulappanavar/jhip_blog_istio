node{

    stage('SCM Checkout'){
        git 'https://github.com/adhulappanavar/jhip_blog_istio'
    }

   stage('Compile-Package'){
       steps {
           withMaven(maven : 'maven3') {
               sh 'mvn clean compile'
           }
       }
}
