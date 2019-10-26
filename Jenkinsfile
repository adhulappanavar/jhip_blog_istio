node{

    stage('SCM Checkout'){
        git 'https://github.com/adhulappanavar/jhip_blog_istio'
    }

    stage('Compile-Package'){
        def mvnHome = tool name: 'maven3', type: 'maven'
        sh "${mvnHome}/bin/mvn package"
    }
}
