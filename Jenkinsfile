pipeline{
  environment{
  RESULT = 0
   }
  agent any
  stages{
    stage ("Dev"){
      stages{
      stage ("Test")
      {
        steps{
         sh './test.sh'
         sh 'cat result'
         script{
         env.RESULT = "${sh(script: 'cat result', returnStdout: true)}"
       } 
       echo "${env.RESULT}" 
       }
      }
     }
    }   
   }
}
