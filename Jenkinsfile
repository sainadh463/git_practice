pipeline {
    agent any 
	stages {
		   
	    stage('Example Build') {
		     steps {
			    
				 sh """
				 export PATH=$PATH:/goroot/bin:/gopath/bin
				 go build main.go"""
				 
				 }
		}
		stage('Docker Build') {
		   
		     steps {
			    
				 sh """ docker build -t my-app . """
				 
				 }
		}
		stage('Push to DIR'){

              steps{
			  withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'sainadh',
                        usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD']]) {
					
					sh """
					      docker login --username $USERNAME --password $PASSWORD
						  docker push my-app
					   """  
			  }
        } 
	}
}
}	
	
