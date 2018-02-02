/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.Stateless;

/**
 *
 * @author HQST100207
 */
@Stateless
public class Deal {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
    
        public void deal(){
        System.out.println("haha");
        
        Path startingDir = Paths.get("C:\\TEMP");
        ReportFieldHandler pf = new ReportFieldHandler();
        try {
            Files.walkFileTree(startingDir, pf);
        } catch (IOException ex) {
            Logger.getLogger(ReportFieldHandler.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
