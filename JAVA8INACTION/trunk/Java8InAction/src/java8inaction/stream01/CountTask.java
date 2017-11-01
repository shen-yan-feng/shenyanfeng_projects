/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java8inaction.stream01;

import java.util.concurrent.RecursiveTask;
import java.util.concurrent.Future;

/**
 *
 * @author HQST100207
 */
public class CountTask extends RecursiveTask<Integer> {    
    int start;
    int end;
    int threshhold;
    
    public CountTask(int start,int end,int threshhold){
        this.start = start;
        this.end = end;
        this.threshhold = threshhold;
    }
    

    @Override
    protected Integer compute() {
        int sum = 0;
        boolean canSum = (this.end - this.start) <= this.threshhold;
        if(canSum){
            for(int i = this.start;i<= this.end;i++){
                sum = sum + i;
            }
        }else{
            int middle = (this.start + this.end) / 2;
            CountTask leftTask = new CountTask(this.start,middle,this.threshhold);
            CountTask rightTask = new CountTask(middle + 1,this.end,this.threshhold);
            leftTask.fork();
            rightTask.fork();
            int leftSum = leftTask.join();
            int rightSum = rightTask.join();
            sum = leftSum + rightSum;
        }
        
        return sum;
    }
    
    public static void main(String[] args){
        CountTask countTask01 = new CountTask(1,7,2);
        int result = countTask01.compute();
        System.out.println("the result is " + result);
        
    }
    
    
    
}
