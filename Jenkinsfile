pipeline{
  environment{
  RESULT = 20
  n = 10
   }
  agent any
  stages{
    stage ("Dev"){
      stages{
      stage ("Test")
      {
        steps{
         bash './test.sh'
    
     //    script{
     //    n = sh(script: 'cat result', resturnStatus: true)
     //    env.RESULT = sh(script: 'cat result', returnStdout: true)
     //  } 
     //  echo "${env.RESULT}" 
     //  echo "${env.n}"
    
       }
      }
      stage ("Build"){
       steps{
        script {
        if ( (sh ('cat result')) > 60)
       {
          echo "Yes"
       } }
      }}
     }
    }   
   }
}
