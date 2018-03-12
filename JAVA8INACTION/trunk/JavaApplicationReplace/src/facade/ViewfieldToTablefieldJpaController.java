/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package facade;

import facade.exceptions.NonexistentEntityException;
import facade.exceptions.PreexistingEntityException;
import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import model.ViewfieldToTablefield;
import model.ViewfieldToTablefieldPK;

/**
 *
 * @author HQST100207
 */
public class ViewfieldToTablefieldJpaController implements Serializable {

    public ViewfieldToTablefieldJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(ViewfieldToTablefield viewfieldToTablefield) throws PreexistingEntityException, Exception {
        if (viewfieldToTablefield.getViewfieldToTablefieldPK() == null) {
            viewfieldToTablefield.setViewfieldToTablefieldPK(new ViewfieldToTablefieldPK());
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(viewfieldToTablefield);
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findViewfieldToTablefield(viewfieldToTablefield.getViewfieldToTablefieldPK()) != null) {
                throw new PreexistingEntityException("ViewfieldToTablefield " + viewfieldToTablefield + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(ViewfieldToTablefield viewfieldToTablefield) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            viewfieldToTablefield = em.merge(viewfieldToTablefield);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                ViewfieldToTablefieldPK id = viewfieldToTablefield.getViewfieldToTablefieldPK();
                if (findViewfieldToTablefield(id) == null) {
                    throw new NonexistentEntityException("The viewfieldToTablefield with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(ViewfieldToTablefieldPK id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            ViewfieldToTablefield viewfieldToTablefield;
            try {
                viewfieldToTablefield = em.getReference(ViewfieldToTablefield.class, id);
                viewfieldToTablefield.getViewfieldToTablefieldPK();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The viewfieldToTablefield with id " + id + " no longer exists.", enfe);
            }
            em.remove(viewfieldToTablefield);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<ViewfieldToTablefield> findViewfieldToTablefieldEntities() {
        return findViewfieldToTablefieldEntities(true, -1, -1);
    }

    public List<ViewfieldToTablefield> findViewfieldToTablefieldEntities(int maxResults, int firstResult) {
        return findViewfieldToTablefieldEntities(false, maxResults, firstResult);
    }

    private List<ViewfieldToTablefield> findViewfieldToTablefieldEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(ViewfieldToTablefield.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public ViewfieldToTablefield findViewfieldToTablefield(ViewfieldToTablefieldPK id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(ViewfieldToTablefield.class, id);
        } finally {
            em.close();
        }
    }

    public int getViewfieldToTablefieldCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<ViewfieldToTablefield> rt = cq.from(ViewfieldToTablefield.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
