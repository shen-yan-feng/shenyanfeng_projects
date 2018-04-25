/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.peter;
import java.io.IOException;
import java.util.Properties;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Administrator
 */
public class PropertiesUtil {
    
    private static Properties properties = new Properties();
    
    public static void readProperties(String fileName){
        InputStream inputStream = PropertiesUtil.class.getResourceAsStream(fileName);
        try {
            properties.load(inputStream);
        } catch (IOException ex) {
            Logger.getLogger(PropertiesUtil.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public static String getProperty(String key){
        return properties.getProperty(key);
    }
    
}
