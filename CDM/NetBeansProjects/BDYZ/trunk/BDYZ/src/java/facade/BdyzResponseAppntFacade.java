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
import model.BdyzResponseAppnt;

/**
 *
 * @author HQST100207
 */
@Stateless
public class BdyzResponseAppntFacade extends AbstractFacade<BdyzResponseAppnt> {

    @PersistenceContext(unitName = "BDYZPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public BdyzResponseAppntFacade() {
        super(BdyzResponseAppnt.class);
    }
    
    public List<BdyzResponseAppnt> findByBatchno(String batchno){
        return em.createNamedQuery("BdyzResponseAppnt.findByBatchno", BdyzResponseAppnt.class).setParameter("batchno",batchno).getResultList();
    }
    
}
