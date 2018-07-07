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
import model.QueryBdyzResponseCont;

/**
 *
 * @author HQST100207
 */
@Stateless
public class QueryBdyzResponseContFacade extends AbstractFacade<QueryBdyzResponseCont> {

    @PersistenceContext(unitName = "BDYZPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public QueryBdyzResponseContFacade() {
        super(QueryBdyzResponseCont.class);
    }
    
    public List<QueryBdyzResponseCont> findByBatchno(String batchno){
        return em.createNamedQuery("QueryBdyzResponseCont.findByBatchno", QueryBdyzResponseCont.class).setParameter("batchno",batchno).getResultList();
    }
    
}
