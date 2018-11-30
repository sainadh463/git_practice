pipeline {
    agent any 
	stages {
	    stage('Example Build') {
		   
		     steps {
			    
				 sh """go build main.go"""
				 
				 }
		}
		stage('Docker Build') {
		   
		     steps {
			    
				 sh """ docker build -t my-app . """
				 
				 }
		}
		
	}
}
