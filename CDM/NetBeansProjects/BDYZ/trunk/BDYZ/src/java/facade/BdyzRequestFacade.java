/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package facade;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import model.BdyzRequest;

/**
 *
 * @author HQST100207
 */
@Stateless
public class BdyzRequestFacade extends AbstractFacade<BdyzRequest> {

    @PersistenceContext(unitName = "BDYZPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public BdyzRequestFacade() {
        super(BdyzRequest.class);
    }
    
}
