pipeline {
    agent any 
	stages {
	    stage('Example Build') {
		   
		     steps {
			    
				 echo 'Hello, I am going to start'
				 
				 }
		}
		stage('Example Build1') {
		   
		     steps {
			    
				 echo 'Hello, I am testing'
				 
				 }
		}
		stage('Docker Build') {
		   
		     steps {
			    
				 sh """ docker build -t sainadh463/testapp . """
				 
				 }
		}
		
		stage('Push to DIR'){

              steps{
			  withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'sainadh',
                        usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD']]) {
					
					sh """
					      docker login --username $USERNAME --password $PASSWORD
						  docker push sainadh463/testapp
					   """  
			        }
              } 
	    }
		stage('Example Build5') {
		   
		     steps {
			    
				 echo 'Hello, I am ready to deploy in dcos'
				 
				 }
		}
	}
}	
