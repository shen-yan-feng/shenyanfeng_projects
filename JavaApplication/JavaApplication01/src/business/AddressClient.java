/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import model.Address;

/**
 *
 * @author Administrator
 */
public class AddressClient {
    
    public static void main(String[] args){
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("JavaApplication01PU");
        EntityManager em = emf.createEntityManager();
        
        List<Address> addressList = em.createQuery("SELECT a FROM Address a").getResultList();
        
        for(Address a : addressList){
            System.out.println(a.getStreet());
        }
        
        em.close();
        emf.close();
    }
    
}
