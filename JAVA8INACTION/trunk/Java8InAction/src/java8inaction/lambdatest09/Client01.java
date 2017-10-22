/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java8inaction.lambdatest09;

import java.util.List;
import java.util.ArrayList;
import java8inaction.chapter2.Apple;


/**
 *
 * @author HQST100207
 */
public class Client01 {
    
    public static void main(String[] args){
        List<Apple> inventory = new ArrayList<>();
        Apple apple01 = new Apple("green",100);
        Apple apple02 = new Apple("green",150);
        Apple apple03 = new Apple("green",50);
        inventory.add(apple01);
        inventory.add(apple02);
        inventory.add(apple03);
        for(Apple apple : inventory){
            System.out.println("apple = " + apple.getWeight());
        }        
        
        inventory.sort(new AppleComparator());
        System.out.println("排序后：");
        for(Apple apple : inventory){
            System.out.println("apple = " + apple.getWeight());
        }
    }
    
}
