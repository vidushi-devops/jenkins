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
         script{
           def output = readResult file: 'result'
           env.RESULT = output.RESULT
          }
          echo "${env.RESULT}"
         }
       }
     }
    }   
   }
}
