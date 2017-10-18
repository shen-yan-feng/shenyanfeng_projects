/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java8inaction.chapter2;

import java.util.List;
import java.util.ArrayList;

/**
 *
 * @author HQST100207
 */
public class FirstAttempt {
    
    public static List<Apple> filterGreenApples(List<Apple> inventory){
        List<Apple> result = new ArrayList<>();
        for(Apple apple : inventory){
            if("green".equalsIgnoreCase(apple.getColor())){
                result.add(apple);
            }
        }
        return result;
    }
    
}
