/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jvm.testa;

/**
 *
 * @author Administrator
 */
public class Test01 {
    
    private int count = 0;
    
    public void add(){
        count = count + 1;
        add();
    }
    
    public void testAdd(){
        try{            
            add();
        }catch(Throwable t){
            System.out.println(t);
            System.out.println("count = " + count);
        }
    }
    
    public static void main(String[] args){
        Test01 test01 = new Test01();
        test01.testAdd();
    }
    
}
