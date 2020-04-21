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
     sh 'sudo docker build -t demo:latest .'
     sh 'sudo docker tag demo:latest 046903855004.dkr.ecr.us-east-1.amazonaws.com/demo:latest'
  }
  
  stage ('Docker push'){
     sh 'sudo docker push 046903855004.dkr.ecr.us-east-1.amazonaws.com/demo:latest'
  }
  stage (' Deploy to ECS' ){
     
      sh 'sudo aws ecs update-service --cluster hdemo  --service demoservice --force-new-deployment --region us-east-1'
      
  
  }
  
}
