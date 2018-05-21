/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication05;

import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Label;

/**
 *
 * @author Administrator
 */
public class Test04 {
    private static Label label01;
    
    public static void main(String[] args){
        
        Display display = new Display();
        Shell shell = new Shell(display);
        shell.setText("下拉框示例");
        Combo combo01 = new Combo(shell,SWT.NONE);
        combo01.setBounds(10, 10, 100, 25);
        label01 = new Label(shell,SWT.WRAP);
        label01.setBounds(120,10,100,35);
        
        //未完 需要接着做
    }
    
}
