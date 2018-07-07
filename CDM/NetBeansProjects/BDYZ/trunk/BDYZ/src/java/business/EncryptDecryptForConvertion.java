/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business;

import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/**
 *
 * @author HQST100207
 */
public class EncryptDecryptForConvertion {
    
    public static void main(String args[]){
        String originalStr = null;
        //BDYZ_000048_GP86801000005096_0201_210281198808151720
        originalStr = "BDYZ_000048_501065704743_0101_340421198211166018";
        String encryptedStr = null;
        //encryptedStr = "265C0B862B0023F06F90CE569E26C6C0ABC95190BE91C8DF43C1093C6D76BC6F";
        String key = "BDYZ_ZBX";//默认用这个
        //获得加密后的字符串
        encryptedStr = encrypt(originalStr,key);
        System.out.println("originalStr is " + originalStr + " encryptedStr is " + encryptedStr);
        //获得解密后的字符串
        //originalStr = decrypt(encryptedStr,key);
        //System.out.println("encryptedStr is " + encryptedStr + " originalStr is " + originalStr);
    }
    
    

//解密 
    /**
     * 解密 中保信提供
     *
     * @param content 待解密内容
     * @param key 解密的密钥
     * @return 解密后报文
     */
    private static String decrypt(String content, String key) {
        if (content.length() < 1) {
            return null;
        }
        byte[] byteRresult = new byte[content.length() / 2];
        for (int i = 0; i < content.length() / 2; i++) {
            int high = Integer.parseInt(content.substring(i * 2, i * 2 + 1), 16);
            int low = Integer.parseInt(content.substring(i * 2 + 1, i * 2 + 2), 16);
            byteRresult[i] = (byte) (high * 16 + low);
        }
        try {
            KeyGenerator kgen = KeyGenerator.getInstance("AES");
            kgen.init(128, new SecureRandom(key.getBytes()));
            SecretKey secretKey = kgen.generateKey();
            byte[] enCodeFormat = secretKey.getEncoded();
            SecretKeySpec secretKeySpec = new SecretKeySpec(enCodeFormat, "AES");
            Cipher cipher = Cipher.getInstance("AES");
            cipher.init(Cipher.DECRYPT_MODE, secretKeySpec);
            byte[] result = cipher.doFinal(byteRresult);
            return new String(result);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (NoSuchPaddingException e) {
            e.printStackTrace();
        } catch (InvalidKeyException e) {
            e.printStackTrace();
        } catch (IllegalBlockSizeException e) {
            e.printStackTrace();
        } catch (BadPaddingException e) {
            e.printStackTrace();
        }
        return null;
    }

    //加密
    /**
     * 加密 中保信提供
     *
     * @param content 待加密内容
     * @param key 加密的密钥
     * @return
     */
    private static String encrypt(String content, String key) {
        if (content != null && !content.isEmpty()) {
            try {
                KeyGenerator kgen = KeyGenerator.getInstance("AES");
                kgen.init(128, new SecureRandom(key.getBytes()));
                SecretKey secretKey = kgen.generateKey();
                byte[] enCodeFormat = secretKey.getEncoded();
                SecretKeySpec secretKeySpec = new SecretKeySpec(enCodeFormat, "AES");
                Cipher cipher = Cipher.getInstance("AES");
                byte[] byteContent = content.getBytes("utf-8");
                cipher.init(Cipher.ENCRYPT_MODE, secretKeySpec);
                byte[] byteRresult = cipher.doFinal(byteContent);
                StringBuffer sb = new StringBuffer();
                for (int i = 0; i < byteRresult.length; i++) {
                    String hex = Integer.toHexString(byteRresult[i] & 0xFF);
                    if (hex.length() == 1) {
                        hex = '0' + hex;
                    }
                    sb.append(hex.toUpperCase());
                }
                return sb.toString();
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            } catch (NoSuchPaddingException e) {
                e.printStackTrace();
            } catch (InvalidKeyException e) {
                e.printStackTrace();
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            } catch (IllegalBlockSizeException e) {
                e.printStackTrace();
            } catch (BadPaddingException e) {
                e.printStackTrace();
            }
            return null;
        } else {
            return null;
        }

    }

}
