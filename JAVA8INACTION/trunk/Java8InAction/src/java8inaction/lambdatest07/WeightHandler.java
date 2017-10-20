/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java8inaction.lambdatest07;

import java.util.function.Function;
import java.util.List;
import java.util.ArrayList;



/**
 *
 * @author HQST100207
 */
public class WeightHandler {
    
    public static <T,R> List<R> extractWeight(List<T> list,Function<T,R> f){
        List<R> resultList = new ArrayList<>();
       for(T t : list){
           resultList.add(f.apply(t));
       }        
        return resultList;
    }
    
}
