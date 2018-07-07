/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author HQST100207
 */
@Entity
@Table(name = "QUERY_BDYZ_RESPONSE_APPNT")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "QueryBdyzResponseAppnt.findAll", query = "SELECT q FROM QueryBdyzResponseAppnt q"),
    @NamedQuery(name = "QueryBdyzResponseAppnt.findByBatchno", query = "SELECT q FROM QueryBdyzResponseAppnt q WHERE q.queryBdyzResponseAppntPK.batchno = :batchno"),
    @NamedQuery(name = "QueryBdyzResponseAppnt.findByPolicyNo", query = "SELECT q FROM QueryBdyzResponseAppnt q WHERE q.queryBdyzResponseAppntPK.policyNo = :policyNo"),
    @NamedQuery(name = "QueryBdyzResponseAppnt.findByAppntNo", query = "SELECT q FROM QueryBdyzResponseAppnt q WHERE q.queryBdyzResponseAppntPK.appntNo = :appntNo"),
    @NamedQuery(name = "QueryBdyzResponseAppnt.findByAppntName", query = "SELECT q FROM QueryBdyzResponseAppnt q WHERE q.appntName = :appntName"),
    @NamedQuery(name = "QueryBdyzResponseAppnt.findByResponseDate", query = "SELECT q FROM QueryBdyzResponseAppnt q WHERE q.responseDate = :responseDate")})
public class QueryBdyzResponseAppnt implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected QueryBdyzResponseAppntPK queryBdyzResponseAppntPK;
    @Size(max = 50)
    @Column(name = "APPNT_NAME")
    private String appntName;
    @Column(name = "RESPONSE_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date responseDate;

    public QueryBdyzResponseAppnt() {
    }

    public QueryBdyzResponseAppnt(QueryBdyzResponseAppntPK queryBdyzResponseAppntPK) {
        this.queryBdyzResponseAppntPK = queryBdyzResponseAppntPK;
    }

    public QueryBdyzResponseAppnt(String batchno, String policyNo, String appntNo) {
        this.queryBdyzResponseAppntPK = new QueryBdyzResponseAppntPK(batchno, policyNo, appntNo);
    }

    public QueryBdyzResponseAppntPK getQueryBdyzResponseAppntPK() {
        return queryBdyzResponseAppntPK;
    }

    public void setQueryBdyzResponseAppntPK(QueryBdyzResponseAppntPK queryBdyzResponseAppntPK) {
        this.queryBdyzResponseAppntPK = queryBdyzResponseAppntPK;
    }

    public String getAppntName() {
        return appntName;
    }

    public void setAppntName(String appntName) {
        this.appntName = appntName;
    }

    public Date getResponseDate() {
        return responseDate;
    }

    public void setResponseDate(Date responseDate) {
        this.responseDate = responseDate;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (queryBdyzResponseAppntPK != null ? queryBdyzResponseAppntPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof QueryBdyzResponseAppnt)) {
            return false;
        }
        QueryBdyzResponseAppnt other = (QueryBdyzResponseAppnt) object;
        if ((this.queryBdyzResponseAppntPK == null && other.queryBdyzResponseAppntPK != null) || (this.queryBdyzResponseAppntPK != null && !this.queryBdyzResponseAppntPK.equals(other.queryBdyzResponseAppntPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.QueryBdyzResponseAppnt[ queryBdyzResponseAppntPK=" + queryBdyzResponseAppntPK + " ]";
    }
    
}
