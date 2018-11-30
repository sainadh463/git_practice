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
		
	}
}
