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
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.layout.FormData;
import org.eclipse.swt.layout.FormAttachment;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Text;


/**
 *
 * @author HQST100207
 */
public class SwtSample4_17 {
    
    public static void main(String[] args){
        Display display = new Display();
        Shell shell = new Shell(display);
        shell.setText("FormLayout示例");
        
        FormLayout formLayout = new FormLayout();
        shell.setLayout(formLayout);
        Label label = new Label(shell,SWT.BORDER);
        label.setText("lable 1");
        FormData formData1 = new FormData();
        formData1.left = new FormAttachment(0,5);
        formData1.top = new FormAttachment(0,5);
        formData1.right = new FormAttachment(50,-5);
        formData1.bottom = new FormAttachment(50,-5);
        label.setLayoutData(formData1);
        
        Composite composite = new Composite(shell,SWT.NONE);
        GridLayout gridLayout = new GridLayout();
        gridLayout.marginHeight = 0;
        gridLayout.marginWidth = 0;
        composite.setLayout(gridLayout);
        Button button1 = new Button(composite,SWT.PUSH);
        button1.setText("B1");
        GridData gridData1= new GridData(GridData.FILL_BOTH);
        button1.setLayoutData(gridData1);        
        Button button2 = new Button(composite,SWT.PUSH);
        button2.setText("B2");
        GridData gridData2= new GridData(GridData.FILL_BOTH);
        button2.setLayoutData(gridData2);        
        Button button3 = new Button(composite,SWT.PUSH);
        button3.setText("B3");
        GridData gridData3= new GridData(GridData.FILL_BOTH);
        button3.setLayoutData(gridData3);
        
        FormData formData2 = new FormData();
        formData2.left = new FormAttachment(label,5);
        formData2.top = new FormAttachment(0,5);
        formData2.right = new FormAttachment(100,-5);
        formData2.bottom = new FormAttachment(50,-5);
        composite.setLayoutData(formData2);
        
        Text Text = new Text(shell,SWT.BORDER);
        FormData formData3 = new FormData();
        formData3.left = new FormAttachment(0,5);
        formData3.top = new FormAttachment(50,0);
        formData3.right = new FormAttachment(100,-5);
        formData3.bottom = new FormAttachment(100,-5);
        Text.setLayoutData(formData3);
        
        shell.pack();
        shell.open();
        while(!shell.isDisposed()){
            if (!display.readAndDispatch()){
                display.sleep();
            }
        }
        display.dispose();
    }
    
}
