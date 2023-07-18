pipeline{
       agent any 
        stages{
            stage('checkout'){
			  steps{
	        git credentialsId: 'ac42beed-fce5-42df-8f59-3e5fcd7c6fda', url: 'https://github.com/shashankk97/hello-world.git'
			    }
			}
            stage('build'){
                       steps{
                     sh'mvn clean install' 
                     }
                 }
            stage('test')
              {
                steps{
                 withsonarenv('sonarqube_token'){
                 sh'mvn sonar:sonar'
                   }
                 }
              }
            stage('docker'){
                     steps{
                   sh'sudo docker --version'
                  }
               }
        }
    }
