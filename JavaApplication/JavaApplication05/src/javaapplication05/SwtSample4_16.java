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
public class SwtSample4_16 {
    
    public static void main(String[] args){
        Display display = new Display();
        Shell shell = new Shell(display);
        shell.setText("FormLayout示例");
        
        FormLayout formLayout = new FormLayout();
        formLayout.marginHeight = 10;
        shell.setLayout(formLayout);
        
        Button button1 = new Button(shell,SWT.PUSH);
        button1.setText("B1");
        FormData formData1 = new FormData();
        formData1.top = new FormAttachment(0,50);
        formData1.bottom = new FormAttachment(100,-50);
        formData1.left = new FormAttachment(0,50);
        formData1.right = new FormAttachment(100,-50);
        formData1.width = 100;
        formData1.height = 50;
        button1.setLayoutData(formData1);
        
        Button button2 = new Button(shell,SWT.PUSH);
        button2.setText("B2");
        FormAttachment forAttachment = new FormAttachment();
        FormData formData2 = new FormData(50,30);
        formData2.left = forAttachment;
        formData2.top = forAttachment;
        button2.setLayoutData(formData2);
        
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
