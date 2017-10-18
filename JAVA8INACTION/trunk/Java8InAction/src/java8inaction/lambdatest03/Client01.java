/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java8inaction.lambdatest03;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author HQST100207
 */
public class Client01 {

    public static void main(String[] args) {
        try {
            String printContent = "";
            printContent = Printer.print((BufferedReader bufferedReader) -> {
                String content = "";
                try {
                    content = bufferedReader.readLine() + bufferedReader.readLine();
                } catch (IOException ioException) {
                    System.out.println(ioException.getStackTrace());
                }
                return content;
            });
            System.out.println("printContent = " + printContent);
        } catch (IOException ex) {
            Logger.getLogger(Client01.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
