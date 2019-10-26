node{

    stage('SCM Checkout'){
        git 'https://github.com/adhulappanavar/jhip_blog_istio'
    }
    
    stage('Node Version Check'){
        def nodejsHome = tool name: 'nodejs1301', type: 'nodejs'
        sh "${nodejsHome}/bin/node -v"
    }

    stage('Compile-Package'){
        def mvnHome = tool name: 'maven3', type: 'maven'
        sh "${mvnHome}/bin/mvn package"
    }
}
