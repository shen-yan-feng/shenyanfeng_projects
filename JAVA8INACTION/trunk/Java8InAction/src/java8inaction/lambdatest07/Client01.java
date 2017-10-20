/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java8inaction.lambdatest07;

import java.util.List;
import java.util.ArrayList;
import java.util.Arrays;

/**
 *
 * @author HQST100207
 */
public class Client01 {
    
    public static void main(String[] args){
        
        List<Integer> weightList = WeightHandler.extractWeight(Arrays.asList("java8","in","action"), (String s) ->s.length());
        for(int i : weightList){
            System.out.println("length = " + i);
        }
        
    }
    
}
