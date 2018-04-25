/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.peter;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Administrator
 */
public class PropertiesUtilTest {
    
    public PropertiesUtilTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of readProperties method, of class PropertiesUtil.
     */
    @Test
    public void testReadProperties() {
        System.out.println("readProperties");
        String fileName = "config.properties";
        PropertiesUtil.readProperties(fileName);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of getProperty method, of class PropertiesUtil.
     */
    @Test
    public void testGetProperty() {
        System.out.println("getProperty");
        String key = "name";
        String expResult = "peter";
        String result = PropertiesUtil.getProperty(key);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
}
