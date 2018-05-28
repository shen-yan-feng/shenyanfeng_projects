/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication05;

import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.layout.RowLayout;

/**
 *
 * @author HQST100207
 */
public class SwtSample4_12 {
    
    public static void main(String[] args){
        Display display = new Display();
        Shell shell = new Shell(display);
        shell.setText("RowLayout示例");
        RowLayout rowLayout = new RowLayout();
        rowLayout.pack=false;
        rowLayout.wrap=false;
        rowLayout.marginWidth=20;
        rowLayout.marginHeight=20;
    }
    
}
