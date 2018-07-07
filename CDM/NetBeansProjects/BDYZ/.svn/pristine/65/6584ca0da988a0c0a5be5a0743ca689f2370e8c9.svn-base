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
import model.QueryBdyzResponse;

/**
 *
 * @author HQST100207
 */
@Stateless
public class QueryBdyzResponseFacade extends AbstractFacade<QueryBdyzResponse> {

    @PersistenceContext(unitName = "BDYZPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public QueryBdyzResponseFacade() {
        super(QueryBdyzResponse.class);
    }
    
    public List<QueryBdyzResponse> findByBatchno(String batchno){
        return em.createNamedQuery("QueryBdyzResponse.findByBatchno", QueryBdyzResponse.class).setParameter("batchno",batchno).getResultList();
    }
    
}
