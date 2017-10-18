/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java8inaction.lambdatest05;

import java.util.List;
import java.util.function.Predicate;
import java.util.ArrayList;

/**
 *
 * @author HQST100207
 */
public class GeneralFilter {
    
    public static <T> List<T> filter(List<T> list,Predicate<T> predicate){
        List<T> resultList = new ArrayList<T>();
        for(T t : list){
            if(predicate.test(t)){
                resultList.add(t);
            }
        }
        return resultList;
    }
    
}
