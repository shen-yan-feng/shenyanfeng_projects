/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business;

import java.io.File;
import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.nio.file.Path;

/**
 *
 * @author HQST100207
 */
public class FileHandlerCharset {
    
    public static String getFileCharsetCode(Path path) throws IOException {
        BufferedInputStream bufferedInputStream = null;
        try {
            bufferedInputStream = new BufferedInputStream(new FileInputStream(path.toFile()));
            int temp = (bufferedInputStream.read() << 8) + bufferedInputStream.read();
            bufferedInputStream.close();
            System.out.println("Integer.toHexString(temp); = " + Integer.toHexString(temp));
            String code = "";
            switch (temp) {
                case 0xefbb:
                    code = "UTF-8";
                    break;
                case 0xfffe:
                    code = "Unicode";
                    break;
                case 0xfeff:
                    code = "UTF-16BE";
                    break;
                default:
                    code = "GBK";
            }
            System.out.println("code = " + code);
            return code;

        } catch (FileNotFoundException ex) {
            Logger.getLogger(FileHandlerCharset.class.getName()).log(Level.SEVERE, null, ex);
            return "";
        } finally {
            try {
                bufferedInputStream.close();
            } catch (IOException ex) {
                Logger.getLogger(FileHandlerCharset.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}
