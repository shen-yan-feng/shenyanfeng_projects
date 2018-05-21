/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication05;

import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.SWT;


/**
 *
 * @author Administrator
 */
public class JavaApplication05 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        Display display = new Display();
        Shell shell = new Shell(display);
        Text text = new Text(shell,SWT.CENTER);
        text.setText("Hello,World!");
        text.pack();
        shell.pack();
        shell.open();
        while(!shell.isDisposed()){
            if(!display.readAndDispatch()){
                display.sleep();
            }
        }
        display.dispose();
    }
    
}
