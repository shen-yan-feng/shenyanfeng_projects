/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication05;

import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.SWT;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Text;

/**
 *
 * @author HQST100207
 */
public class SwtSample4_14 {
    
    public static void main(String[] args){
        Display display = new Display();
        Shell shell = new Shell(display);
        shell.setText("GridData示例");
        GridLayout gridLayout = new GridLayout();
        gridLayout.numColumns = 3;
        gridLayout.makeColumnsEqualWidth = true;
        shell.setLayout(gridLayout);
        GridData gridData1 = new GridData();
        gridData1.horizontalSpan = 2;
        gridData1.verticalSpan = 2;
        gridData1.horizontalAlignment = GridData.CENTER;
        gridData1.verticalAlignment = GridData.FILL;
        Button button1 = new Button(shell,SWT.PUSH);
        button1.setText("B1");
        button1.setLayoutData(gridData1);
        new Button(shell,SWT.PUSH).setText("超宽按钮2");
        new Button(shell,SWT.PUSH).setText("按钮3");
        Button button4 = new Button(shell,SWT.PUSH);
        button4.setText("B4");
        GridData gridData2 = new GridData(GridData.FILL_HORIZONTAL);
        button4.setLayoutData(gridData2);
        Button Button5 = new Button(shell,SWT.PUSH);
        Button5.setText("按钮5");
        GridData gridData3 = new GridData();
        gridData3.horizontalAlignment = GridData.FILL;
        Button5.setLayoutData(gridData3);
        new Button(shell,SWT.PUSH).setText("按钮6");
        Text text1 = new Text(shell,SWT.BORDER);
        text1.setText("文本框1");
        GridData gridData4 = new GridData();
        gridData4.verticalSpan = 2;
        gridData4.horizontalSpan = 2;
        gridData4.verticalAlignment = GridData.FILL;
        gridData4.grabExcessVerticalSpace = true; //抢占额外的水平空间 随窗体的拉伸而变大或变小
        gridData4.horizontalAlignment = GridData.FILL;
        gridData4.grabExcessHorizontalSpace = true;//抢占额外的垂直空间 随窗体的拉伸而变大或变小
        text1.setLayoutData(gridData4);
        new Button(shell,SWT.PUSH).setText("按钮7");
        new Button(shell,SWT.PUSH).setText("按钮8");
        
        
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
