/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import javax.inject.Named;
import javax.enterprise.context.RequestScoped;

import business.TestEJB01;
import javax.ejb.EJB;
import business.BdyzQuery;

/**
 *
 * @author HQST100207
 */
@Named(value = "testController01")
@RequestScoped
public class TestController01 {
    @EJB
    private BdyzQuery bdyzQuery;
    

    /**
     * Creates a new instance of TestController01
     */
    public TestController01() {
    }
    
    public void generateXmlAsRequestXml(){

        //System.out.println("in TestController01.generateXmlAsRequestXml()");
        
    }
    
}
