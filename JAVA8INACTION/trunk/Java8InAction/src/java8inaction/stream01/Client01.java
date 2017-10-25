/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java8inaction.stream01;

import java.util.Arrays;
import static java.util.stream.Collectors.toList;
import java.util.List;
import java.util.Optional;

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
        
        System.out.println("----我是分隔线----");
        if(Restaurant.menu.stream()
                .anyMatch(Dish::isVegetarian)){
            System.out.println("The menu is (somewhat) vegetarian friendly!!");
        }
        
        System.out.println("----我是分隔线----");
        if(Restaurant.menu.stream()
                .allMatch(d -> d.getCalories() < 1000)
                ){
            System.out.println("all dish's calories is less than 1000.");
        }
        
        System.out.println("----我是分隔线----");
        if(Restaurant.menu.stream()
                .noneMatch(d -> d.getCalories() > 1000)
                ){
            System.out.println("all dish's calories is not more than 1000.");
        }
        
        System.out.println("----我是分隔线----");
        Optional<Dish> dish = Restaurant.menu.stream()
                .filter(Dish::isVegetarian)
                .findAny();        
        System.out.println(dish.toString());
        
        System.out.println("----我是分隔线----");
        Restaurant.menu.stream()
                .filter(Dish::isVegetarian)
                .findAny()
                .ifPresent(d -> System.out.println(d));

        System.out.println("----我是分隔线----");
        List<Integer> someNumber = Arrays.asList(1,2,3,4,5);
        Optional<Integer> dish02 = someNumber.stream()
                .map(x -> x*x)
                .filter(x -> x%3==0)
                .findFirst();
        System.out.println("dish02 = " + dish02);
        
        System.out.println("----我是分隔线----");
        List<Integer> numbers = Arrays.asList(1,2,3,4,5);
        int numberSum = numbers.stream()
                //.reduce(0,(a,b) -> a+b);//result is 15
                .reduce(0, Integer::sum);//result is 15
        System.out.println("numberSum = " + numberSum);
        int numberMultiple = numbers.stream()
                //.reduce(0, (a,b) -> a*b);//result is 0
                .reduce(1, (a,b) -> a*b);
        System.out.println("numberMultiple = " + numberMultiple);
        
        System.out.println("----我是分隔线----");
        List<Integer> numbers03 = Arrays.asList(1,2,3,4,5);
        Optional<Integer> numberSum03 = numbers03.stream()
                //.reduce(0,(a,b) -> a+b);//result is 15
                .reduce(Integer::sum);//result is 15
        System.out.println("numberSum03 = " + numberSum03);
        
        System.out.println("----我是分隔线----");
        List<Integer> numbers04 = Arrays.asList(1,2,3,4,5);
        Optional<Integer> numberSum04 = numbers04.stream()
                //.reduce(0,(a,b) -> a+b);//result is 15
                .reduce(Integer::max);
        System.out.println("numberSum04 = " + numberSum04);
    }
    
}
