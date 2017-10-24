/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java8inaction.stream01;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Stream;
/**
 *
 * @author HQST100207
 */
public class Client02 {
    
    public static void main(String[] args){
        List<String> title = Arrays.asList("java8","in","action");        
        title.forEach(System.out::println);//打印没问题
        title.forEach(System.out::println);//打印也没问题
        
        System.out.println("stream 开始了");
        
        //test Traversable only once
        Stream<String> s = title.stream();
        s.forEach(System.out::println);//打印正常
        s.forEach(System.out::println);//java.lang.IllegalStateException: stream has already been operated upon or closed
    }
    
}
