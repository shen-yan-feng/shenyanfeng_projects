/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication05;

import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Group;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Text;

/**
 *
 * @author HQST100207
 */
public class SwtSample4_9 {
    
    public static void main(String[] args){
        Display display = new Display();
        Shell shell = new Shell(display);
        shell.setText("分组示例");
        Group group1 = new Group(shell,SWT.NONE);        
        group1.setText("信息录入");
        group1.setBounds(10,20,200,100);
        Label label1 = new Label(group1,SWT.NONE);        
        label1.setText("姓名：");
        label1.setBounds(10,20,70,20);
        Label label2 = new Label(group1,SWT.NONE);  
        Text text1 = new Text(group1,SWT.NONE);
        text1.setBounds(90,20,70,20);
        label2.setText("地址：");
        label2.setBounds(10,50,70,20);
        Text text2 = new Text(group1,SWT.NONE);
        text2.setBounds(90,50,70,20);
        //shell.pack();
        shell.open();
        while(!shell.isDisposed()){
            if(!display.readAndDispatch()){
                display.sleep();
            }
        }
        display.dispose();
    }
}
