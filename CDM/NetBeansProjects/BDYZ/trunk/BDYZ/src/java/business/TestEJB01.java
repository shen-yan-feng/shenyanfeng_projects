/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business;

import javax.ejb.Stateless;

import model.BdyzRequest;
import facade.BdyzRequestFacade;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.interceptor.Interceptors;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import util.LoggingInterceptor;


/**
 *
 * @author HQST100207
 */
@Stateless
//@Interceptors({LoggingInterceptor.class})
public class TestEJB01 {
    BdyzRequest bdyzRequest;
    @EJB
    private BdyzRequestFacade bdyzRequestFacade;

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
    public void generateXmlAsRequestXml(){
        System.out.println("in generate");
//        try {
//            //bdyzRequest = bdyzRequestFacade.find("0001");
//            //JAXBContext context = JAXBContext.newInstance(BdyzRequest.class);
//            //Marshaller marshaller = context.createMarshaller();
//            //File file = new File("c:\\temp\\request.xml");            
//            //marshaller.marshal(bdyzRequest, file);
//        } catch (JAXBException ex) {
//            Logger.getLogger(TestEJB01.class.getName()).log(Level.SEVERE, null, ex);
//        }
    }
    
    public void print01(){
        System.err.println("haha01");
    }
    
    public void print02(){
        System.err.println("haha02");
    }
    
    public void print03(){
        System.err.println("haha03");
    }

    
    
}
