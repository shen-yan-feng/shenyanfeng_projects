/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication05;

import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;

/**
 *
 * @author HQST100207
 */
public class SwtSample4_13 {
    
    public static void main(String[] args){
        Display display = new Display();
        Shell shell = new Shell(display);
        shell.setText("GridFlow示例");
        GridLayout gridLayout = new GridLayout();
        gridLayout.numColumns = 3;
        gridLayout.horizontalSpacing = 50;
        gridLayout.verticalSpacing = 40;
        gridLayout.makeColumnsEqualWidth = true;
        shell.setLayout(gridLayout);
        new Button(shell,SWT.PUSH).setText("B1");
        new Button(shell,SWT.PUSH).setText("按键02");        
        new Button(shell,SWT.PUSH).setText("按键大号03");
        new Button(shell,SWT.PUSH).setText("按键04");
        new Button(shell,SWT.PUSH).setText("B5");
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
