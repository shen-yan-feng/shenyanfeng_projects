/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java8inaction.stream01;

/**
 *
 * @author HQST100207
 */
public class Client06 {
    
    public int stringCounter(String s){
        int sum = 0;
        char[] charArray = s.toCharArray();
        for(char c : charArray){
            System.out.println(c);
            System.out.println(Character.isWhitespace(c));
        }
        return sum;
    }
    
    public static void main(String[] arg){
        String simpleString = "i am a man";
        Client06 client06 = new Client06();
        System.out.println("the counter is " + client06.countWordsIteratively(simpleString));
    }
    public int countWordsIteratively(String s){
        int counter = 0;
        boolean lastSpace = true;
        for(char c : s.toCharArray()){
            if(Character.isWhitespace(c)){
                lastSpace = true;
            }else{
                if(lastSpace) counter++;
                lastSpace = false;
            }
        }
        return counter;
    }
    
    
}
