/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication03;

import java.io.IOException;
import java.nio.file.FileSystems;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.WatchService;
import java.util.logging.Level;
import java.util.logging.Logger;
import static java.nio.file.StandardWatchEventKinds.ENTRY_CREATE;
import static java.nio.file.StandardWatchEventKinds.ENTRY_DELETE;
import static java.nio.file.StandardWatchEventKinds.ENTRY_MODIFY;
import static java.nio.file.StandardWatchEventKinds.OVERFLOW;
import java.nio.file.WatchKey;
import java.nio.file.WatchEvent;
import java.util.List;


/**
 *
 * @author Administrator
 */
public class JavaApplication03 {    

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IOException,InterruptedException {
        // TODO code application logic here
        
        WatchService watcher = FileSystems.getDefault().newWatchService();
        Paths.get("C:\\TEMP02").register(watcher, ENTRY_CREATE,ENTRY_DELETE,ENTRY_MODIFY);
        while(true){
            WatchKey key = watcher.take();
            for(WatchEvent<?> event : key.pollEvents()){
                System.out.println(event.context() + " comes to " + event.kind());
            }
            boolean valid = key.reset();
            if(!valid){
                break;
            }
        }
        
    }
    
}
