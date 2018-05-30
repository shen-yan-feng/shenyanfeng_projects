package org.peter;

import org.pentaho.ui.xul.swt.SwtXulLoader;
import org.pentaho.ui.xul.swing.SwingXulLoader;
import org.pentaho.ui.xul.XulDomContainer;
import org.pentaho.ui.xul.XulException;



public class Test01 {
	
	public static void main(String[] args) {
		System.out.println("XIXI");
		

			try {
				XulDomContainer xulDomContainer = new SwingXulLoader().loadXul("E:\\GitHub\\shenyanfeng_projects\\workspace\\XulTest\\src\\xul\\preview_rows.xul");
			} catch (IllegalArgumentException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (XulException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		
		System.out.println("HAHA");
	}

}
