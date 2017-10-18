/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java8inaction.lambdatest02;

import java.io.BufferedReader;

/**
 *
 * @author HQST100207
 */
@FunctionalInterface
public interface Processor {
    public String process(BufferedReader bufferedReader);
    
}
