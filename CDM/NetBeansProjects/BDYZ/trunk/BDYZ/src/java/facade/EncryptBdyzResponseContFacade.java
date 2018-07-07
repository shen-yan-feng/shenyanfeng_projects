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
import model.EncryptBdyzResponseCont;

/**
 *
 * @author HQST100207
 */
@Stateless
public class EncryptBdyzResponseContFacade extends AbstractFacade<EncryptBdyzResponseCont> {

    @PersistenceContext(unitName = "BDYZPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public EncryptBdyzResponseContFacade() {
        super(EncryptBdyzResponseCont.class);
    }

}
