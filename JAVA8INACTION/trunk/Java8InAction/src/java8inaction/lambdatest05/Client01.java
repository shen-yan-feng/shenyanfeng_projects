/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java8inaction.lambdatest05;

import java.util.Arrays;
import java.util.function.Predicate;
import java.util.List;
import java.util.ArrayList;

/**
 *
 * @author HQST100207
 */
public class Client01 {
    
    public static void main(String[] args){
        List<String> resultList = new ArrayList<>();
        List<String> list = Arrays.asList("a","b","c");
        Predicate<String> predicate = (String string) -> {
            return "a".equalsIgnoreCase(string);
        };
        resultList = GeneralFilter.filter(list, predicate);
        for(String s : resultList){
            System.out.println("s = " + s);
        }
    }
    
}
