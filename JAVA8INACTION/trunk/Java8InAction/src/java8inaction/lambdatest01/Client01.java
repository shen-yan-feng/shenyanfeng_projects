/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java8inaction.lambdatest01;

import java.io.BufferedReader;
import java.io.IOException;

/**
 *
 * @author HQST100207
 */
public class Client01 {
    
    public static void main(String[] args){
        String printContent = Printer.print((BufferedReader bufferedReader) -> {
            String content = "";
            try{
                content = bufferedReader.readLine() + bufferedReader.readLine();
            }catch(IOException ioexception){
                System.out.println(ioexception.getStackTrace());
            }
            return content;
        });
        System.out.println("printContent = " + printContent);        
    }    
}
