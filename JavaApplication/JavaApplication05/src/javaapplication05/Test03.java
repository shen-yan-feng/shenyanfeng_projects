/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication05;

import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Display;


/**
 *
 * @author Administrator
 */
public class Test03 {
    
    public static void main(String[] args){
        Display display = new Display();
        Shell shell = new Shell(display);
        shell.setText("文本框示例");
        Text text = new Text(shell,SWT.NONE|SWT.BORDER);
        text.setBounds(10, 10, 600, 600);
        Text text02 = new Text(shell,SWT.PASSWORD);
        text02.setBounds(700,700,140,60);
        Text text03 = new Text(shell,SWT.MULTI|SWT.V_SCROLL|SWT.H_SCROLL);
        text03.setBounds(10, 700, 140, 140);
        Text text04 = new Text(shell,SWT.WRAP|SWT.V_SCROLL);
        text04.setBounds(70, 700, 140, 140);
        shell.pack();
        shell.open();
        while(!shell.isDisposed()){
            if(!display.readAndDispatch()){
                display.sleep();
            }
        }
        shell.dispose();        
    }
    
}
