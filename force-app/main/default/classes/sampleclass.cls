public class sampleclass 
{                
    public static string newstatus(Integer inage , Integer inexp)
    {
        String estatus;
        
        if(inage < 30 && inexp > 8)
        {
            estatus = 'selected';        
        }
        else 
        {
            estatus = 'rejected';            
        }
        
        return estatus;
    }
}