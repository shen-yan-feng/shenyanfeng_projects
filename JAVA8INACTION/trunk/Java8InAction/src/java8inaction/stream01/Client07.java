/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java8inaction.stream01;

import java.util.Arrays;
import java.util.stream.IntStream;
import java.util.stream.Stream;

/**
 *
 * @author HQST100207
 */
public class Client07 {

    public static String SENTENCE = "I AM A MAN";

    public static void main(String[] args) {

        IntStream intStream = SENTENCE.chars();
        Stream<Character> schar = intStream.mapToObj(i -> (char)i);
        schar.forEach(System.out::print);

    }
}
