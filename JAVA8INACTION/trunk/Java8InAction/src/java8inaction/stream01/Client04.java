/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java8inaction.stream01;

import java.util.stream.Stream;

/**
 *
 * @author HQST100207
 */
public class Client04 {
    
    public static void main(String[] args){
        System.out.println("----我是分隔线----");
        System.out.println("to test sequentialSum");
        System.out.println(ParallelStreams.sequentialSum(4L));
        
         System.out.println("----我是分隔线----");
        System.out.println("to test iterativeSum");
        System.out.println(ParallelStreams.iterativeSum(4L));
        
        System.out.println("----我是分隔线----");
        System.out.println("to test parallelSum");
        System.out.println(ParallelStreams.parallelSum(4L));
        
        System.out.println("----我是分隔线----");
        System.out.println("Runtime.getRuntime().availableProcessors() is " + Runtime.getRuntime().availableProcessors());        
        
    }
    
    measureSumPerf(Function)
    
    
}
