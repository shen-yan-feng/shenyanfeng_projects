/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication05;

import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.List;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;

/**
 *
 * @author Administrator
 */
public class Test06 {

    private static Label lb1;
    private static StringBuilder stringBuilder;

    public static void main(String[] args) {
        Display display = new Display();
        final Shell shell = new Shell(display);
        shell.setText("列表框示例");
        final List list = new List(shell, SWT.MULTI | SWT.V_SCROLL | SWT.BORDER);
        list.setBounds(10, 10, 100, 50);
        lb1 = new Label(shell, SWT.WRAP);        
        lb1.setBounds(120, 10, 90, 50);
        Button bt1 = new Button(shell, SWT.NONE);
        bt1.setBounds(20, 60, 100, 25);
        bt1.setText("设值");
        stringBuilder = new StringBuilder();
        bt1.addSelectionListener(new SelectionAdapter() {
            public void widgetSelected(SelectionEvent e) {
                list.removeAll();
                for (int i = 0; i < 8; i++) {
                    list.add("第" + i + "项");
                }
                list.select(0);
            }
        });
        Button bt2 = new Button(shell,SWT.NONE);
        bt2.setBounds(130,60,100,25);
        bt2.setText("取值");
        bt2.addSelectionListener(new SelectionAdapter(){
            public void widgetSelected(SelectionEvent e){
                stringBuilder.delete(0, stringBuilder.length());
                for(String content:list.getSelection()){
                    stringBuilder.append(content);
                    stringBuilder.append(System.lineSeparator());                    
                }
                lb1.setText("您选择的是:" + stringBuilder.toString());                    
            }
        });
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
