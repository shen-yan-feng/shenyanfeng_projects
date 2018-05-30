/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication05;

import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.layout.FormLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.layout.FormData;
import org.eclipse.swt.layout.FormAttachment;

/**
 *
 * @author HQST100207
 */
public class SwtSample4_15 {
    
    public static void main(String[] args){
        Display display = new Display();
        Shell shell = new Shell(display);
        shell.setText("FormLayout示例");
        
        FormLayout formLayout = new FormLayout();
        shell.setLayout(formLayout);
        formLayout.marginHeight = 10;
        formLayout.marginWidth = 20;
        
        Button button1 = new Button(shell,SWT.PUSH);
        button1.setText("B1");
        FormData formData1 = new FormData();
        formData1.width = 100;
        formData1.height = 50;
        button1.setLayoutData(formData1);
        
        Button button2 = new Button(shell,SWT.PUSH);
        button2.setText("B2");
        FormAttachment formAttachment = new FormAttachment(button1);
        FormData formData2 = new FormData(50,30);
        formData2.left = formAttachment;
        button2.setLayoutData(formData2);
        
        Button button3 = new Button(shell,SWT.PUSH);
        button3.setText("B3");
        FormData formData3 = new FormData();
        formData3.top = new FormAttachment(button2,10,SWT.BOTTOM);
        formData3.left = new FormAttachment(button2,0,SWT.LEFT);
        formData3.right = new FormAttachment(button2,0,SWT.RIGHT);
        button3.setLayoutData(formData3);
        
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
