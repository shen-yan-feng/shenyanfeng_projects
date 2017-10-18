/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java8inaction.lambdatest06;

import java.util.Arrays;
import java.util.List;
import java.util.function.Consumer;



/**
 *
 * @author HQST100207
 */
public class Client01 {
    
    public static void main(String[] args){
        List<Integer> list = Arrays.asList(1,2,3);
        Consumer<Integer> consumer;
        consumer = (Integer i) -> {System.out.println(i);};
        Printer.print(list, consumer);
    }
}
