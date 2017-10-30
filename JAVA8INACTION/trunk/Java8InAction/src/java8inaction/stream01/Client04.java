/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java8inaction.stream01;

import java.util.stream.Stream;
import java.util.function.Function;

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
        
        System.out.println("----我是分隔线----");
        
        Long durationSequentialSum = measureSumPerf(ParallelStreams::sequentialSum,1000000L);
        System.out.println("ParallelStreams::sequentialSum spent time " + durationSequentialSum);
        
        Long durationIterativeSum = measureSumPerf(ParallelStreams::iterativeSum,1000000L);
        System.out.println("ParallelStreams::iterativeSum spent time " + durationIterativeSum);
        
        Long durationParallelSum = measureSumPerf(ParallelStreams::parallelSum,1000000L);
        System.out.println("ParallelStreams::parallelSum spent time " + durationParallelSum);
        
        Long durationRangedSum = measureSumPerf(ParallelStreams::rangedSum,1000000L);
        System.out.println("ParallelStreams::rangedSum spent time " + durationRangedSum);
        
        Long durationParallelRangedSum = measureSumPerf(ParallelStreams::parallelRangedSum,1000000L);
        System.out.println("ParallelStreams::parallelRangedSum spent time " + durationParallelRangedSum);
        
        
    }
    
    public static Long measureSumPerf(Function<Long,Long> adder,Long n){
        Long fastest = Long.MAX_VALUE;
        
        Long startPoint = System.nanoTime();
        Long applyResult = adder.apply(n);
        Long endPoint = System.nanoTime();
        Long duration = endPoint - startPoint;
        if (duration < fastest){
            fastest = duration;
        }        
        return fastest;
    }
    
    
}
