
cd /Users/anidhula/learn/recording/jhip_blog_istio/gateway
./mvnw -ntp -DskipTests -Pprod verify jib:dockerBuild 
cd /Users/anidhula/learn/recording/jhip_blog_istio/blog
./mvnw -ntp -DskipTests -Pprod verify jib:dockerBuild 
cd /Users/anidhula/learn/recording/jhip_blog_istio/store
./mvnw -ntp -DskipTests -Pprod verify jib:dockerBuild 
