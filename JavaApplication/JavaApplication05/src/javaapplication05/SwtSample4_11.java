/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication05;

import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.widgets.Button;

/**
 *
 * @author HQST100207
 */
public class SwtSample4_11 {
    
    public static void main(String[] args){
        Display display = new Display();
        Shell shell = new Shell(display);
        shell.setText("FillLayout示例");
        //FillLayout fillLayout = new FillLayout();
        FillLayout fillLayout = new FillLayout(SWT.VERTICAL);
        shell.setLayout(fillLayout);
        new Button(shell,SWT.PUSH).setText("超宽按钮1");
        new Button(shell,SWT.PUSH).setText("按钮2");
        new Button(shell,SWT.PUSH).setText("按钮3");
        new Button(shell,SWT.PUSH).setText("按钮4");
        
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
