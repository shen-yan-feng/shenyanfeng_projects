/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java8inaction.stream01;

import java.util.stream.Stream;
import java.util.stream.LongStream;

/**
 *
 * @author HQST100207
 */
public class ParallelStreams {

    public static Long sequentialSum(Long n) {
        Long sumTemp = Stream.iterate(1L, (Long i) -> i + 1).limit(n).reduce(0L, Long::sum);
        return sumTemp;
    }

    public static Long iterativeSum(long n) {
        long result = 0L;
        for (long i = 1L; i <= n; i++) {
            result = result + i;
        }
        return result;
    }

    public static Long parallelSum(Long n) {
        Long sumTemp = Stream.iterate(1L, (Long i) -> i + 1).limit(n).parallel().reduce(0L, Long::sum);
        return sumTemp;
    }
    
    public static long rangedSum(long n){
        return LongStream.rangeClosed(1L, n).reduce(0L,Long::sum);
    }
    
    public static long parallelRangedSum(long n){
        return LongStream.rangeClosed(1L, n).parallel().reduce(0L,Long::sum);
    }

}
