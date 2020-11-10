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
         RESULT = "${sh(script: 'cat result', returnStdout: true)}"
          echo "${env.RESULT}"
         }
       }
     }
    }   
   }
}
