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
import model.QueryBdyzResponsePol;

/**
 *
 * @author HQST100207
 */
@Stateless
public class QueryBdyzResponsePolFacade extends AbstractFacade<QueryBdyzResponsePol> {

    @PersistenceContext(unitName = "BDYZPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public QueryBdyzResponsePolFacade() {
        super(QueryBdyzResponsePol.class);
    }
    
    public List<QueryBdyzResponsePol> findByBatchno(String batchno){
        return em.createNamedQuery("QueryBdyzResponsePol.findByBatchno", QueryBdyzResponsePol.class).setParameter("batchno",batchno).getResultList();
    }
    
}
