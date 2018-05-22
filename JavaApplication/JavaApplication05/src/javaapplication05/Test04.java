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
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;

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
        Button button01 = new Button(shell,SWT.NONE);
        button01.setBounds(20,60,100,25);
        button01.setText("设值");
        button01.addSelectionListener(new SelectionAdapter() {
          public void widgetSelected(SelectionEvent e){
              combo01.removeAll();
              for(int i=1;i<=3;i++){
                  combo01.add("第"+i+"项");
              }
              combo01.select(0);
          }
        });
        Button bt2=new Button(shell,SWT.NONE);
bt2.setBounds(130,60,100,25);
bt2.setText("取值");
bt2.addSelectionListener(new SelectionAdapter(){
public void widgetSelected(SelectionEvent e){ //按钮的单击事件
label01.setText("你选择的是："+combo01.getText());
}
});
shell.pack();
shell.open();
while(!shell.isDisposed()){ //如果主窗体没有关闭则一直循环
if(!display.readAndDispatch()){ //如果display不忙
display.sleep(); //休眠
}
}
display.dispose(); //销毁display
        
    }
    
}
