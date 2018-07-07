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
import model.BdyzResponsePol;

/**
 *
 * @author HQST100207
 */
@Stateless
public class BdyzResponsePolFacade extends AbstractFacade<BdyzResponsePol> {

    @PersistenceContext(unitName = "BDYZPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public BdyzResponsePolFacade() {
        super(BdyzResponsePol.class);
    }
    
    public List<BdyzResponsePol> findByBatchno(String batchno){
        return em.createNamedQuery("BdyzResponsePol.findByBatchno", BdyzResponsePol.class).setParameter("batchno",batchno).getResultList();
    }
    
}
