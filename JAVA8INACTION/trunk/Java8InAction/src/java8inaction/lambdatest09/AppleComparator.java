/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java8inaction.lambdatest09;

import java.util.Comparator;
import java8inaction.chapter2.Apple;

/**
 *
 * @author HQST100207
 */
public class AppleComparator implements Comparator<Apple> {

    @Override
    public int compare(Apple o1, Apple o2) {
        return ((Integer)(o1.getWeight())).compareTo((Integer)(o2.getWeight()));
    }
    
}
