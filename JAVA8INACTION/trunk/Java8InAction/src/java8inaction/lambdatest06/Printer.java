/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java8inaction.lambdatest06;

import java.util.function.Consumer;
import java.util.List;


/**
 *
 * @author HQST100207
 */
public class Printer {
    
    public static <T> void print(List<T> list,Consumer<T> consumer){
        for(T t : list){
            consumer.accept(t);
        }
    }
    
}
