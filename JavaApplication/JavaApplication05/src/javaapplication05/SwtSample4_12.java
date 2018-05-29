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
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.layout.RowData;

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
        rowLayout.pack=false; //强制组件大小一致
        //rowLayout.pack = true;//不强制组件大小一致
        //rowLayout.wrap=false;//当容器变小时，组件不折行。
        rowLayout.wrap = true;//当容器变小时，组件折行。
        rowLayout.marginWidth=20;
        rowLayout.marginHeight=20;
        rowLayout.spacing = 10;
        shell.setLayout(rowLayout);//设置容器shell的布局方式为rowlayout
        Button bt1 = new Button(shell,SWT.PUSH);
        RowData rowData = new RowData(80,30);//创建布局数据类的对象
        bt1.setText("按钮1");
        bt1.setLayoutData(rowData);//设置按钮的布局数据
        new Button(shell,SWT.PUSH).setText("按钮2");
        new Button(shell,SWT.PUSH).setText("按钮3");
        new Button(shell,SWT.PUSH).setText("按钮4");
        shell.pack();//自动调整容器shell的大小
        shell.open();//打开主窗体
        while(!shell.isDisposed()){//如果主窗体没有关闭则一直循环
            if(!display.readAndDispatch()){//如果display不忙
                display.sleep();//休眠
            }
        }
        display.dispose();//销毁display
    }
    
}
