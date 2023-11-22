pipeline{
    agent any
    tools{
        nodejs "node"
    }
    environment {
        imageName = "fareedgeoo/jenkins-app"  // imagename
        registryCredential = "fareedgeoo" //username
        dockerImage = ''
    }
    stages{
         stage("Install Dependancies"){
            steps{
                sh "npm install"
            }
        }
        stage("Tests"){
                    steps{
                        sh "npm test"
                    }
                }
        stage("Building Image"){
            steps{
                script{
                    dockerImage = docker.build imageName
                    // build docker prod image from the dev image
                    // using the installed plugin (docker , docker pipeline)
                }
            }
        }
        stage("Deploy Image"){
            steps{
                script{
                    // login to dockerhub using doker creds we saved to push this image with a unique ID
                    docker.withRegistry('https://index.docker.io/v1/','mydocker-cerds'){
                      dockerImage.push("react_app_${env.BUILD_NUMBER}")
                    }
                }
            }
        }
    }
}