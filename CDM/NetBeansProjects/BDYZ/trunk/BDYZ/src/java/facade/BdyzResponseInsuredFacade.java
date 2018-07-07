/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package facade;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import model.BdyzResponseInsured;

/**
 *
 * @author HQST100207
 */
@Stateless
public class BdyzResponseInsuredFacade extends AbstractFacade<BdyzResponseInsured> {

    @PersistenceContext(unitName = "BDYZPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public BdyzResponseInsuredFacade() {
        super(BdyzResponseInsured.class);
    }
    
    public List<BdyzResponseInsured> findByBatchno(String batchno){
        return em.createNamedQuery("BdyzResponseInsured.findByBatchno", BdyzResponseInsured.class).setParameter("batchno", batchno).getResultList();
    }
    
}
