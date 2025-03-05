pipeline{
    agent any
        environment {
            PATH = "/usr/local/bin:$PATH"  // Add the location of terraform to PATH
        }
        stages{
          
            stage('Git Checkout'){
                steps{
                     script {
                    checkout([       // Git steps for checkout by git plugin
                        $class: 'GitSCM',
                        branches: [[name: '*/main']],  // Change branch if needed
                        userRemoteConfigs: [[url: "https://github.com/kanakkumrawat/share.git",
                                            // credentialsId: 'JenkinsToken' 
                                    ]] // Change to your repo
                        // extensions: [[$class: 'RelativeTargetDirectory', relativeTargetDir: "${TF_WORKING_DIR} ]] To clone inside a diff directory instead of default workspace 
                    ])
                }
                }
            }

            stage('Terraform Init'){
                steps{
                    sh '''
                    echo " Terraform Init Running ... "
                    cd "bq-training-assignment-terraform"
                    terraform init
                      '''
                }
            }

            stage('Terraform Plan'){
                steps{
                    sh '''
                    echo " Terraform Plan Running ... "
                    cd "bq-training-assignment-terraform"
                    terraform plan -out=tfplan
                    '''
                }
            }

            stage('Terraform Apply'){
                steps{
                    sh '''
                    echo " Terraform Apply Running ... "
                    cd "bq-training-assignment-terraform"
                    terraform apply --auto-approve
                      '''
                }
            }

            stage('Terraform Destroy'){
                steps{
                    sh '''
                    echo " Terraform Destroy Running ... "
                    cd bq-training-assignment-terraform
                    terraform destroy --auto-approve
                    '''          
                }
            }
        }
        post{

            failure {
               sh '''
                    echo " Build Failed! Terraform Destroy Running (After Failure) ... "
                    cd "bq-training-assignment-terraform"
                    'terraform destroy --auto-approve'
                      '''
            }
            success{
                echo "Build Succeeded: Terraform applied successfully!"
            }
                always{
                    sh '''
                    echo " Work done! Exiting "
                      '''
            }
    }
}
