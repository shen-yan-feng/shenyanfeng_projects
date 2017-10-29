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
public class ParallelStreams {
    
    public static Long sequentialSum(Long n) {
        Long sumTemp = Stream.iterate(1L, (Long i) -> i + 1).limit(n).reduce(0L, Long::sum);
        return sumTemp;
    }
    
    public static Long iterativeSum(Long n){
        Long result = 0L;
        for(Long i = 1L;i <=n;i++){
            result = result + i;
        }
        return result;
    }

    public static Long parallelSum(Long n) {
        Long sumTemp = Stream.iterate(1L, (Long i) -> i + 1).limit(n).parallel().reduce(0L, Long::sum);
        return sumTemp;
    }
    
}
