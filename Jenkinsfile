node {
  stage ('Checkout'){
  checkout scm
}
  stage('build'){
      sh 'echo compile the code'
  }
  stage( 'unit testing/ code quality'){
  
      sh 'echo unit tesing and code quality stuff'
  
  }
 
  stage ('Docker build'){
     sh 'sudo docker build -t hdemo:latest .'
     sh 'sudo docker tag hdemo:latest 046903855004.dkr.ecr.us-east-1.amazonaws.com/hdemo:latest'
  }
  
  stage ('Docker push'){
     sh 'sudo docker push 046903855004.dkr.ecr.us-east-1.amazonaws.com/hdemo:latest'
  }
  stage (' Deploy to ECS' ){
     
      sh 'sudo aws ecs update-service --cluster hdemo1  --service hsdemo1 --force-new-deployment --region us-east-1'
      
  
  }
  
}
