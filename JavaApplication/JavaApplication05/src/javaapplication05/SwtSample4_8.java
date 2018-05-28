/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication05;

import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Label;


/**
 *
 * @author HQST100207
 */
public class SwtSample4_8 {
    
    public static void main(String[] args){
        Display display = new Display();
        Shell shell = new Shell(display);
        shell.setText("容器示例");
        Composite composite1 = new Composite(shell,SWT.NONE);
        composite1.setBounds(10,10,100,50);
        Composite composite2 = new Composite(shell,SWT.BORDER);
        composite2.setBounds(120,10,100,50);
        Label label1 = new Label(composite1,SWT.NONE);
        label1.setText("面板1");
        Label label2 = new Label(composite2,SWT.NONE);
        label2.setText("面板2");
        label1.pack();
        label2.pack();
        //composite1.pack();
        //composite2.pack();
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
