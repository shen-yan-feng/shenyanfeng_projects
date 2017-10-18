/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java8inaction.lambdatest03;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;


/**
 *
 * @author HQST100207
 */
public class Printer {
    
    public static String print(Processor processor) throws IOException{
        String content = "";
        BufferedReader bufferedReader = new BufferedReader(new FileReader("E:\\GitHub\\shenyanfeng_projects\\JAVA8INACTION\\trunk\\Java8InAction\\testfile\\a.txt"));
        content = processor.process(bufferedReader);
        return content;
    }
    
}
