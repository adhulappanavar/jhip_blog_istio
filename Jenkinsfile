node{

    stage('SCM Checkout'){
        git 'https://github.com/adhulappanavar/jhip_blog_istio'
    }
    
    stage('Node Version Check'){
        node -v
    }

    stage('Compile-Package'){
        def mvnHome = tool name: 'maven3', type: 'maven'
        sh "${mvnHome}/bin/mvn package"
    }
}
