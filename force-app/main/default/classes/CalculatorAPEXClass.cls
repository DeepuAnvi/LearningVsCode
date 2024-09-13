public class CalculatorAPEXClass {
                        // variable declaration at class level (not inside any function)
                           Integer VarSum;
                           Integer VarMultiplication;
                                      // function for Addition
                                   public Integer MakeAddition(integer VarNumA, integer VarNumB)
      {
                                          VarSum = VarNumA + VarNumB;
                                          Return VarSum;
       }
                         // function for Multiplication
                   Public void MakeMultiplication(integer VarNumA, integer VarNumB)
     {
                       VarMultiplication = VarNumA * VarNumB;
                   System.debug('the answer='  + VarMultiplication);
       }   
}