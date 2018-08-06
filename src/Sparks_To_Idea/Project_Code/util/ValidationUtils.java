package Sparks_To_Idea.Project_Code.util;

public class ValidationUtils {

	public static boolean isEmpty(String param){
		boolean isEmpty = false;
		
		if(param == "" && param.trim().length() <= 0){
			isEmpty = true;
			
		}
		
		return isEmpty;
	}

}