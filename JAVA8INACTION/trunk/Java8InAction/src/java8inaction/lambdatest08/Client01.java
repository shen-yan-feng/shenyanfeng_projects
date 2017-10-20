/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java8inaction.lambdatest08;

import java.util.Arrays;
import java.util.List;

/**
 *
 * @author HQST100207
 */
public class Client01 {
    
    public static void main(String[] args){
        List<Integer> resultList = LengthHandler.extractLength(Arrays.asList("java8","in","action"), (String s) -> s.length());
        for(int i : resultList){
            System.out.println("length = " + i);
        }
    }
    
}
