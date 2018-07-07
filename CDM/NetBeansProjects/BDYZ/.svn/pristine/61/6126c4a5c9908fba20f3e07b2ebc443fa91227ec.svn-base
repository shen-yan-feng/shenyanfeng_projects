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
import model.QueryBdyzResponseAppnt;

/**
 *
 * @author HQST100207
 */
@Stateless
public class QueryBdyzResponseAppntFacade extends AbstractFacade<QueryBdyzResponseAppnt> {

    @PersistenceContext(unitName = "BDYZPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public QueryBdyzResponseAppntFacade() {
        super(QueryBdyzResponseAppnt.class);
    }
    
    public List<QueryBdyzResponseAppnt> findByBatchno(String batchno){
        return em.createNamedQuery("QueryBdyzResponseAppnt.findByBatchno", QueryBdyzResponseAppnt.class).setParameter("batchno",batchno).getResultList();
    }
    
}
