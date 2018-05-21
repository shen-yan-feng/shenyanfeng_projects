/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication05;

import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.graphics.Font;

/**
 *
 * @author Administrator
 */
import org.eclipse.swt.graphics.Font;
public class Test02 {
    
    public static void main(String[] args){
        Display display = new Display();
        Shell shell = new Shell(display);
        shell.setText("标签示例");
        Label label01 = new Label(shell,SWT.BORDER|SWT.RIGHT);
        label01.setText("标签1");
        label01.setBounds(10,10,70,30);
        label01.setFont(new Font(display,"黑体",14,SWT.BOLD));
        label01.setForeground(Display.getCurrent().getSystemColor(SWT.COLOR_BLUE));
        Label label02 = new Label(shell,SWT.CENTER);
        label02.setBounds(90, 10, 70, 30);
        label02.setText("标签02");
        label02.setFont(new Font(display,"宋体",14,SWT.NORMAL));
        Label label03 = new Label(shell,SWT.SEPARATOR|SWT.BORDER);
        label03.setBounds(10, 50, 70, 30);
        Label label04 = new Label(shell,SWT.SEPARATOR|SWT.HORIZONTAL|SWT.BORDER);
        label04.setBounds(90, 50, 70, 30);
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
