/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.peter;

/**
 *
 * @author Administrator
 */
public class BooleanGetBooleanTest {
    
    public static void main(String[] args){
        System.setProperty("is a human", "true");
        boolean isHumanFlag = Boolean.getBoolean("is a human");
        System.out.println("isHumanFlag = " + isHumanFlag);
    }

    
}
