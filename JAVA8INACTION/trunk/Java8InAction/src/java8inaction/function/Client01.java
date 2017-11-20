/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java8inaction.function;

import java.util.List;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

/**
 *
 * @author HQST100207
 */
public class Client01 {
    
    
    public static void main(String[] args){
        System.out.println(Client01.subsets(Arrays.asList(1,2,3)));
    }
    
    public static List<List<Integer>> subsets(List<Integer> list){
        if(list.isEmpty()){
            List<List<Integer>> ans = new ArrayList<>();
            ans.add(Collections.EMPTY_LIST);
            return ans;
        }
        Integer first = list.get(0);
        List<Integer> rest = list.subList(1, list.size());
        System.out.println("rest = " + rest);
        List<List<Integer>> subans = subsets(rest);
        //List<List<Integer>>1 subans2 = insertAll(first,subans);
        //return concat(subans,subans2);
        return null;
        
    }
    
    public static List<List<Integer>> insertAll(Integer first,List<List<Integer>> lists){
        List<List<Integer>> result = new ArrayList<>();
        for(List<Integer> list : lists){
            List<Integer> copyList = new ArrayList<>();
            copyList.add(first);
            copyList.addAll(list);
            result.add(list);
        }
        return result;        
    }
    
    public static List<List<Integer>> concat(List<List<Integer>> a,List<List<Integer>> b){
        List<List<Integer>> r = new ArrayList<>(a);
        r.addAll(b);
        return r;
    }
    
}
