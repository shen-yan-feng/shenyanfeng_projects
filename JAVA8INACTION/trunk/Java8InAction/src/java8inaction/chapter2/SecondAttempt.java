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
public class SecondAttempt {
    public static List<Apple> filterApples(List<Apple> inventory,String color){
        List<Apple> result = new ArrayList<>();
        for(Apple apple : inventory){
            if (apple.getColor().equalsIgnoreCase(color)){
                result.add(apple);
            }
        }
        return result;
    }
}
