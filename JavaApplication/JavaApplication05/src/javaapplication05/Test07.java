/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication05;

import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.widgets.Text;

/**
 *
 * @author Administrator
 */
public class Test07 {
    
    public static void main(String[] args){
        Display display = new Display();
        Shell shell = new Shell(display);
        shell.setText("菜单示例");
        Menu mainMenu = new Menu(shell,SWT.BAR);
        shell.setMenuBar(mainMenu);
        MenuItem fileItem = new MenuItem(mainMenu,SWT.CASCADE);
        fileItem.setText("文件&F");
        Menu fileMenu = new Menu(shell,SWT.DROP_DOWN);
        fileItem.setMenu(fileMenu);
        {
            MenuItem newFileItem = new MenuItem(fileMenu,SWT.CASCADE);
            newFileItem.setText("新建&N");
            Menu newFileMenu = new Menu(shell,SWT.DROP_DOWN);
            newFileItem.setMenu(newFileMenu);
            {
                MenuItem newProjectItem = new MenuItem(newFileMenu,SWT.PUSH);
                newProjectItem.setText("项目\tCtrl+Shift+N");
                newProjectItem.setAccelerator(SWT.CTRL + SWT.SHIFT + 'N');
                newProjectItem.addSelectionListener(new SelectionAdapter(){
                    public void widgetSelected(SelectionEvent e){
                        Text text = new Text(shell,SWT.MULTI|SWT.WRAP|SWT.BORDER);
                        text.setBounds(10,10,300,100);
                        text.setText("您点击了“新建项目”");
                    }
                });
                new MenuItem(newFileMenu,SWT.SEPARATOR);
                new MenuItem(newFileMenu,SWT.PUSH).setText("包");
                new MenuItem(newFileMenu,SWT.PUSH).setText("类");
            }
            MenuItem openFileItem = new MenuItem(fileMenu,SWT.CASCADE);
            openFileItem.setText("打开&O");
            MenuItem exitFileItem = new MenuItem(fileMenu,SWT.CASCADE);
            exitFileItem.setText("退出&E");
        }
        MenuItem helpItem = new MenuItem(mainMenu,SWT.CASCADE);
        helpItem.setText("帮助&H");
        
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
