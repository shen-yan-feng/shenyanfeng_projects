/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication05;

import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;

/**
 *
 * @author Administrator
 */
public class Test05 {

    private static Label lb;

    public static void main(String[] args) {
        Display display = new Display();
        Shell shell = new Shell(display);
        shell.setText("下拉框示例");
        final Combo combo = new Combo(shell, SWT.NONE);
        combo.setBounds(10, 10, 100, 25);
        lb = new Label(shell, SWT.WRAP);
        lb.setBounds(120,10,100,35);
        Button bt1 = new Button(shell,SWT.NONE);
        bt1.setBounds(20,60,100,25);
        bt1.setText("设值");;
        bt1.addSelectionListener(new SelectionAdapter(){
            public void widgetSelected(SelectionEvent e){
                combo.removeAll();
                for(int i=0;i<3;i++){
                    combo.add("第 " + i + "项");
                }
                combo.select(0);
            }
        });
        Button bt2 = new Button(shell,SWT.NONE);
        bt2.setBounds(130,60,100,25);
        bt2.setText("取值");
        bt2.addSelectionListener(new SelectionAdapter(){
            public void widgetSelected(SelectionEvent e){
                lb.setText("选择的是" + combo.getText() + "项");
            }
        });
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
