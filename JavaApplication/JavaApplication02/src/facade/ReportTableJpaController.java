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
import model.ReportTable;
import model.ReportTablePK;

/**
 *
 * @author Administrator
 */
public class ReportTableJpaController implements Serializable {

    public ReportTableJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(ReportTable reportTable) throws PreexistingEntityException, Exception {
        if (reportTable.getReportTablePK() == null) {
            reportTable.setReportTablePK(new ReportTablePK());
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(reportTable);
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findReportTable(reportTable.getReportTablePK()) != null) {
                throw new PreexistingEntityException("ReportTable " + reportTable + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(ReportTable reportTable) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            reportTable = em.merge(reportTable);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                ReportTablePK id = reportTable.getReportTablePK();
                if (findReportTable(id) == null) {
                    throw new NonexistentEntityException("The reportTable with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(ReportTablePK id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            ReportTable reportTable;
            try {
                reportTable = em.getReference(ReportTable.class, id);
                reportTable.getReportTablePK();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The reportTable with id " + id + " no longer exists.", enfe);
            }
            em.remove(reportTable);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<ReportTable> findReportTableEntities() {
        return findReportTableEntities(true, -1, -1);
    }

    public List<ReportTable> findReportTableEntities(int maxResults, int firstResult) {
        return findReportTableEntities(false, maxResults, firstResult);
    }

    private List<ReportTable> findReportTableEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(ReportTable.class));
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

    public ReportTable findReportTable(ReportTablePK id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(ReportTable.class, id);
        } finally {
            em.close();
        }
    }

    public int getReportTableCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<ReportTable> rt = cq.from(ReportTable.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }

}
