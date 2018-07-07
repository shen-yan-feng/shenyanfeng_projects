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
import model.AbstractFacade;
import model.QueryBdyzResponseInsured;

/**
 *
 * @author HQST100207
 */
@Stateless
public class QueryBdyzResponseInsuredFacade extends AbstractFacade<QueryBdyzResponseInsured> {

    @PersistenceContext(unitName = "BDYZPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public QueryBdyzResponseInsuredFacade() {
        super(QueryBdyzResponseInsured.class);
    }
    
    public List<QueryBdyzResponseInsured> findByBatchno(String batchno){
        return em.createNamedQuery("QueryBdyzResponseInsured.findByBatchno", QueryBdyzResponseInsured.class).setParameter("batchno",batchno).getResultList();
    }
    
}
