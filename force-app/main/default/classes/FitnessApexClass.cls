public class FitnessApexClass {
    
    public static Decimal  calculateBMI(Decimal body_Weight,Decimal  body_Height){
         Decimal  formulaOfBMI= body_Weight/( body_Height* body_Height);
        return formulaOfBMI;
    }
    
    public static Decimal  calculatePace( Decimal  distance,Decimal  minutes) {
       decimal hr = minutes/60;
        Decimal  pace_Formula= distance/hr;
        return  pace_Formula;
        
    }
}