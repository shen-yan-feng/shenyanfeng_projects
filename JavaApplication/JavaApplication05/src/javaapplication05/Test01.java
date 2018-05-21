/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication05;

import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.SWT;

/**
 *
 * @author Administrator
 */
public class Test01 {
    
    public static void main(String[] args){
        Display display = new Display();
        Shell shell = new Shell(display);
        shell.layout();
        shell.setText("按钮示例");
        Button button01 = new Button(shell,SWT.NULL);
        button01.setText("SWT.NULL");
        button01.setBounds(10, 10, 75, 30);
        Button button02 = new Button(shell,SWT.PUSH|SWT.BORDER);
        button02.setText("SWT.PUSH");
        button02.setBounds(90, 10, 75, 30);
        Button check01 = new Button(shell,SWT.CHECK);
        check01.setText("SWT.CHECK");
        check01.setBounds(10, 50, 75, 30);
        Button check02 = new Button(shell,SWT.CHECK|SWT.BORDER);
        check02.setBounds(90, 50, 75, 30);
        Button radio01 =new Button(shell,SWT.RADIO);
        radio01.setText("SWT.RADIO");
        radio01.setBounds(10, 90, 75, 30);
        Button radio02 = new Button(shell,SWT.RADIO|SWT.BORDER);
        radio02.setText("SWT.RADIO|SWT.BORDER");
        radio02.setBounds(90,90,75,30);
        Button arrowLeft = new Button(shell,SWT.ARROW|SWT.LEFT);
        arrowLeft.setBounds(10, 130, 75, 20);
        Button arrorRight = new Button(shell,SWT.ARROW|SWT.RIGHT);
        arrorRight.setBounds(90, 130, 75, 20);
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
