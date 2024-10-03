package helper;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

public class Helper {
	public static boolean deletefile(String path) {
boolean f=false;
try {
	File file=new File(path);
	f=file.delete();
	
} catch(Exception e){
	e.printStackTrace();
	
}
return f;
	}
	public static boolean savefile(InputStream is,String path) {
		boolean f=false;
		try {
		byte b[]=new byte[is.available()];
		is.read(b);
		FileOutputStream fos= new FileOutputStream(path);
		fos.write(b);
		fos.flush();
		fos.close();
		f=true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return f;
		}
	public static boolean fileExists(String oldfilepath) {
		// TODO Auto-generated method stub
		boolean f=true;
		try {
			
			File file=new File(oldfilepath);
					f=file.exists();
		}
		catch(Exception e){
			
			e.printStackTrace();
		}
		return false;
	}

}
