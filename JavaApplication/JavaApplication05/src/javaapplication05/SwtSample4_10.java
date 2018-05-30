/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication05;

import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.TabFolder;
import org.eclipse.swt.widgets.TabItem;
import org.eclipse.swt.widgets.Group;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.Button;




/**
 *
 * @author HQST100207
 */
public class SwtSample4_10 {
    
    public static void main(String[] args){
        Display display = new Display();
        Shell shell = new Shell(display);
        shell.setText("选项卡示例");
        TabFolder tabFolder = new TabFolder(shell,SWT.NONE);
        tabFolder.setBounds(5,5,180,130);
        TabItem tabItem1 = new TabItem(tabFolder,SWT.NONE);
        tabItem1.setText("选项1");
        {
            Group group1 = new Group(tabFolder,SWT.NONE);
            tabItem1.setControl(group1);
            group1.setText("信息录入");
            Label lable1 = new Label(group1,SWT.NONE);
            lable1.setText("姓名:");
            lable1.setBounds(10,20,70,20);
            Text text1 = new Text(group1,SWT.BORDER);
            text1.setBounds(90,20,70,20);
            Label lable2 = new Label(group1,SWT.NONE);
            lable2.setText("地址:");
            lable2.setBounds(10,50,70,20);
            Text text2 = new Text(group1,SWT.BORDER);
            text2.setBounds(90,50,70,20);
        }
        TabItem tabItem2 = new TabItem(tabFolder,SWT.NONE);
        tabItem2.setText("选项2");
        {
            Group group2 = new Group(tabFolder,SWT.NONE);
            tabItem2.setControl(group2);
            group2.setText("兴趣爱好");
            Button button1 = new Button(group2,SWT.CHECK);
            button1.setBounds(20,20,70,20);
            button1.setText("音乐");
            Button button2 = new Button(group2,SWT.CHECK);
            button2.setBounds(20,50,70,20);
            button2.setText("美术");
            Button button3 = new Button(group2,SWT.CHECK);
            button3.setBounds(20,80,70,20);
            button3.setText("体育");
        }
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
