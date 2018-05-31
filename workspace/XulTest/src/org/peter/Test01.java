package org.peter;

import org.pentaho.ui.xul.swt.SwtXulLoader;
import org.pentaho.ui.xul.swing.SwingXulLoader;
import org.pentaho.ui.xul.XulDomContainer;
import org.pentaho.ui.xul.XulException;
import org.pentaho.ui.xul.swing.SwingXulRunner;
import org.pentaho.ui.xul.XulRunner;


public class Test01 {
	
	public static void main(String[] args) {
		System.out.println("XIXI");
		

			try {
				XulDomContainer container = new SwingXulLoader().loadXul("E:\\GitHub\\shenyanfeng_projects\\workspace\\XulTest\\src\\xul\\preview_rows.xul");
				//MainController controller = new MainController();
				//container.addEventHandler(controller);
				final XulRunner runner = new SwingXulRunner();
				runner.addContainer(container);
				runner.initialize();
				runner.start();
				
				
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
