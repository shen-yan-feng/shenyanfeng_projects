/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java8inaction.stream01;

import java.util.Arrays;
import static java.util.stream.Collectors.toList;
import java.util.List;

/**
 *
 * @author HQST100207
 */
public class Client01 {
    
    public static void main(String[] args){
        List<String> threeHighCaloricFoodNames = Restaurant.menu.stream()
                //.filter(d -> d.getCalories() > 300)  //[pork, beef, chicken, french fries, rice, pizza, salmon]
                //.limit(3)//[pork, beef, chicken]
                .map(Dish::getName)                
                .map(word -> word.split(""))
                .flatMap(Arrays::stream)
                .distinct()//[pork, beef, chicken, french fries, rice, season fruit, pizza, prawns, salmon]
                .skip(2)//[chicken, french fries, rice, season fruit, pizza, prawns, salmon]
                .collect(toList());
        System.out.println(threeHighCaloricFoodNames);
        
        //求数组中各个元素的平方
        List<Integer> integerList = Arrays.asList(1,2,3,4,5);
        List<Integer> integerListTemp = integerList.stream()
                .map(i -> i*i)
                .collect(toList());
        integerListTemp.forEach(System.out::println);
        
        System.out.println("----我是分隔线----");
        
        //两个数组中的数，组合
        //数组{1,2,3}
        //数组{4,5,6}
        //结果 数组{1,4}{2,4}{3,4}{1,5}{2,5}{3,5}{1,6}{2,6}{3,6}
        List<Integer> list01 = Arrays.asList(1,2,3);
        List<Integer> list02 = Arrays.asList(4,5,6);
        List<int[]> listResult = list01.stream()
                .flatMap(i -> list02.stream()
                        .filter(j -> (i + j)%3 == 0)//i + j 之和能被3整除
                        .map(j -> new int[]{i,j}))
                .collect(toList());
        for(int[] arrayTemp : listResult){
            for(int i=0;i<arrayTemp.length;i++){
                System.out.println(arrayTemp[i]);
            }
        }
    }
    
}
