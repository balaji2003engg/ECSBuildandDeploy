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
     sh 'sudo docker build -t harman:latest .'
     sh 'sudo docker tag harman:latest 046903855004.dkr.ecr.us-east-1.amazonaws.com/harman:latest'
  }
  
  stage ('Docker push'){
     sh 'sudo docker push 046903855004.dkr.ecr.us-east-1.amazonaws.com/harman:latest'
  }
  stage (' Deploy to ECS' ){
     
      sh 'sudo aws ecs update-service --cluster harman  --service harmanservice --force-new-deployment --region us-east-1'
      
  
  }
  
}
