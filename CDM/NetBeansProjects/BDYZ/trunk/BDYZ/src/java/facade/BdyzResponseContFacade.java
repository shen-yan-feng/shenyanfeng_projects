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
import model.BdyzResponseCont;

/**
 *
 * @author HQST100207
 */
@Stateless
public class BdyzResponseContFacade extends AbstractFacade<BdyzResponseCont> {

    @PersistenceContext(unitName = "BDYZPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public BdyzResponseContFacade() {
        super(BdyzResponseCont.class);
    }
    
    public List<BdyzResponseCont> findByBatchno(String batchno){
        return em.createNamedQuery("BdyzResponseCont.findByBatchno", BdyzResponseCont.class).setParameter("batchno", batchno).getResultList();
    }
    
}
