pipeline{
  environment{
  RESULT = 0
  n = 0
   }
  agent any
  stages{
    stage ("Dev"){
      stages{
      stage ("Test")
      {
        steps{
         sh './test.sh'
         env.n = sh 'cat result'
         script{
         env.n = sh 'cat result'
         env.RESULT = sh(script: 'cat result', returnStdout: true).trim()
       } 
       sh 'echo $RESULT'
       echo "${env.RESULT}" 
       echo "${env.n}"
       }
      }
     }
    }   
   }
}
