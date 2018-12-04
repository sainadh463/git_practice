pipeline {
    agent any 
	stages {
		   
		stage('Docker Build') {
		   
		     steps {
			    
				 sh """ docker build -t sainadh463/mynginx-app . """
				 
				 }
		}
		stage('Push to DIR'){

              steps{
			  withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'sainadh',
                        usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD']]) {
					
					sh """
					      docker login --username $USERNAME --password $PASSWORD
						  docker push sainadh463/mynginx-app
					   """  
			  }
        } 
	}
}
}
