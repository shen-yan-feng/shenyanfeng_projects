/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java8inaction.stream01;

import java.util.stream.Collectors;
import java.util.Comparator;
import java.util.Optional;
import java.util.IntSummaryStatistics;
import java.util.List;
import java.util.Map;
import java.util.Comparator;
import java.util.Set;

/**
 *
 * @author HQST100207
 */
public class Client03 {

    public enum CaloricLevel {
        DIET, NORMAL, FAT
    };

    public static void main(String[] args) {

        System.out.println("test Collectors.counting()");
        Long count01 = Restaurant.menu.stream().collect(Collectors.counting());
        System.out.println("count01 = " + count01);

        System.out.println("----我是分隔线----");
        System.out.println("to test Collectors.maxBy()");
        Comparator<Dish> dishCaloriesComparator = Comparator.comparingInt(Dish::getCalories);
        Optional<Dish> mostCalorieDish = Restaurant.menu.stream()
                .collect(Collectors.maxBy(dishCaloriesComparator));
        System.out.println("the mostCalorieDish is " + mostCalorieDish);

        System.out.println("----我是分隔线----");
        System.out.println("to test Collectors.summingInt()");
        int summing01 = Restaurant.menu.stream()
                .collect(Collectors.summingInt(Dish::getCalories));
        System.out.println("summing01 = " + summing01);

        System.out.println("----我是分隔线----");
        System.out.println("to test averagingInt()");
        double aveargeCalories = Restaurant.menu.stream()
                .collect(Collectors.averagingInt(Dish::getCalories));
        System.out.println("the aveargeCalories = " + aveargeCalories);

        System.out.println("----我是分隔线----");
        System.out.println("to test Collectors.summarizingInt");
        IntSummaryStatistics intSummaryStatistics = Restaurant.menu.stream()
                .collect(Collectors.summarizingInt(Dish::getCalories));
        System.out.println("the intSummaryStatistics is " + intSummaryStatistics);
        System.out.println("the intSummaryStatistics.getAverage() is " + intSummaryStatistics.getAverage());
        System.out.println("the intSummaryStatistics.getCount() is " + intSummaryStatistics.getCount());
        System.out.println("the intSummaryStatistics.getMax() is " + intSummaryStatistics.getMax());
        System.out.println("the intSummaryStatistics.getMin() is " + intSummaryStatistics.getMin());
        System.out.println("the intSummaryStatistics.getSum() is " + intSummaryStatistics.getSum());

        System.out.println("----我是分隔线----");
        System.out.println("to test Collectors.joining()");
        String joinName = Restaurant.menu.stream()
                .map(Dish::getName)
                .collect(Collectors.joining(","));
        System.out.println("the joinName is " + joinName);

        System.out.println("----我是分隔线----");
        System.out.println("to test Collectors.reducing()");
        int summingCalories = Restaurant.menu.stream()
                .collect(Collectors.reducing(0, Dish::getCalories, (i, j) -> i + j));
        System.out.println("the summingCalories is " + summingCalories);

        System.out.println("----我是分隔线----");
        System.out.println("to test Collectors.groupingBy()");
        Map<Dish.Type, List<Dish>> map = Restaurant.menu.stream()
                .collect(Collectors.groupingBy(Dish::getType));
        System.out.println("the map is " + map);

        System.out.println("----我是分隔线----");
        System.out.println("to test Collectors.groupingBy() second");
        Map<CaloricLevel, List<Dish>> mapCaloricLevel = Restaurant.menu.stream()
                .collect(Collectors.groupingBy(dish -> {
                    if (dish.getCalories() <= 400) {
                        return CaloricLevel.DIET;
                    } else if (dish.getCalories() <= 700) {
                        return CaloricLevel.NORMAL;
                    } else {
                        return CaloricLevel.FAT;
                    }
                }));
        System.out.println("mapCaloricLevel is " + mapCaloricLevel);

        System.out.println("----我是分隔线----");
        System.out.println("to test Collectors.groupingBy() third");
        Map<Dish.Type,Map<CaloricLevel,List<Dish>>> mapTypeCaloricLevel = Restaurant.menu.stream()
                .collect(Collectors.groupingBy(Dish::getType, Collectors.groupingBy(dish -> {
                    if (dish.getCalories() <= 400) {
                        return CaloricLevel.DIET;
                    } else if (dish.getCalories() > 400 && dish.getCalories() <= 700) {
                        return CaloricLevel.NORMAL;
                    } else {
                        return CaloricLevel.FAT;
                    }

                }
                )));
        System.out.println("the mapTypeCaloricLevel is " + mapTypeCaloricLevel);

        System.out.println("----我是分隔线----");
        System.out.println("to test Collectors.groupingBy() fourth");
        Map<Dish.Type,Long> mapTypeCount = Restaurant.menu.stream()
                .collect(Collectors.groupingBy(Dish::getType,Collectors.counting()));
        System.out.println("the mapTypeCount is " + mapTypeCount);
        
        System.out.println("----我是分隔线----");
        System.out.println("to test Collectors.groupingBy() fifth");
        Map<Dish.Type,Optional<Dish>> mapTypeMaxCalories = Restaurant.menu.stream()
                .collect(Collectors.groupingBy(Dish::getType,Collectors.maxBy(Comparator.comparingInt(Dish::getCalories))));
        System.out.println("the mapTypeMaxCalories is " + mapTypeMaxCalories);
        
        System.out.println("----我是分隔线----");
        System.out.println("to test Collectors.groupingBy() sixth");
        Map<Dish.Type,Integer> mapTypeSummingCalories = Restaurant.menu.stream()
                .collect(Collectors.groupingBy(Dish::getType, Collectors.summingInt(Dish::getCalories)));
        System.out.println("the mapTypeSummingCalories is " + mapTypeSummingCalories);
        
        System.out.println("----我是分隔线----");
        System.out.println("to test Collectors.groupingBy() seventh");
        Map<Dish.Type,Set<CaloricLevel>> mapTypeSet = Restaurant.menu.stream()
                .collect(Collectors.groupingBy(Dish::getType, Collectors.mapping(dish ->{
                    if(dish.getCalories() <= 400) return CaloricLevel.DIET;
                    else if (dish.getCalories() <= 700) return CaloricLevel.NORMAL;
                    else return CaloricLevel.FAT;
                }, Collectors.toSet())));
        System.out.println("the mapTypeSet is " + mapTypeSet);
        
    }
}
