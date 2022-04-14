public class StringArrayTest {
    public static List<String> generateStringArray(integer n){
        List<String> strlist = new List<String>();
        for(integer i=0;i<n;i++){
            strlist.add('Test '+i);
        }
        return strlist;
    }

}