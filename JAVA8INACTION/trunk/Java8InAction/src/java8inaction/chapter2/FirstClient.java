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
public class FirstClient {
    
    public static void main(String[] args){
        List<Apple> listApple = new ArrayList<>();
        Apple apple01 = new Apple("green",150);
        listApple.add(apple01);
        Apple apple02 = new Apple("green",200);
        listApple.add(apple02);
        Apple apple03 = new Apple("red",160);
        listApple.add(apple03);
        Apple apple04 = new Apple("red",220);
        listApple.add(apple04);
        apple01 = null;
        apple02 = null;
        apple03 = null;
        apple04 = null;
        
        List<Apple> filterAppleList = FirstAttempt.filterGreenApples(listApple);
        for(Apple apple : filterAppleList){
            System.out.println("apple.getColor() = " + apple.getColor() + " apple.getWeight() = " + apple.getWeight() );
        }
        filterAppleList = null;
                
    }
    
}
