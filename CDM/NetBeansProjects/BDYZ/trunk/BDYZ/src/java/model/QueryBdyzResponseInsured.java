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
@Table(name = "QUERY_BDYZ_RESPONSE_INSURED")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "QueryBdyzResponseInsured.findAll", query = "SELECT q FROM QueryBdyzResponseInsured q"),
    @NamedQuery(name = "QueryBdyzResponseInsured.findByBatchno", query = "SELECT q FROM QueryBdyzResponseInsured q WHERE q.queryBdyzResponseInsuredPK.batchno = :batchno"),
    @NamedQuery(name = "QueryBdyzResponseInsured.findByPolicyNo", query = "SELECT q FROM QueryBdyzResponseInsured q WHERE q.queryBdyzResponseInsuredPK.policyNo = :policyNo"),
    @NamedQuery(name = "QueryBdyzResponseInsured.findByInsuredNo", query = "SELECT q FROM QueryBdyzResponseInsured q WHERE q.queryBdyzResponseInsuredPK.insuredNo = :insuredNo"),
    @NamedQuery(name = "QueryBdyzResponseInsured.findByInsuredName", query = "SELECT q FROM QueryBdyzResponseInsured q WHERE q.insuredName = :insuredName"),
    @NamedQuery(name = "QueryBdyzResponseInsured.findByResponseDate", query = "SELECT q FROM QueryBdyzResponseInsured q WHERE q.responseDate = :responseDate")})
public class QueryBdyzResponseInsured implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected QueryBdyzResponseInsuredPK queryBdyzResponseInsuredPK;
    @Size(max = 50)
    @Column(name = "INSURED_NAME")
    private String insuredName;
    @Column(name = "RESPONSE_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date responseDate;

    public QueryBdyzResponseInsured() {
    }

    public QueryBdyzResponseInsured(QueryBdyzResponseInsuredPK queryBdyzResponseInsuredPK) {
        this.queryBdyzResponseInsuredPK = queryBdyzResponseInsuredPK;
    }

    public QueryBdyzResponseInsured(String batchno, String policyNo, String insuredNo) {
        this.queryBdyzResponseInsuredPK = new QueryBdyzResponseInsuredPK(batchno, policyNo, insuredNo);
    }

    public QueryBdyzResponseInsuredPK getQueryBdyzResponseInsuredPK() {
        return queryBdyzResponseInsuredPK;
    }

    public void setQueryBdyzResponseInsuredPK(QueryBdyzResponseInsuredPK queryBdyzResponseInsuredPK) {
        this.queryBdyzResponseInsuredPK = queryBdyzResponseInsuredPK;
    }

    public String getInsuredName() {
        return insuredName;
    }

    public void setInsuredName(String insuredName) {
        this.insuredName = insuredName;
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
        hash += (queryBdyzResponseInsuredPK != null ? queryBdyzResponseInsuredPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof QueryBdyzResponseInsured)) {
            return false;
        }
        QueryBdyzResponseInsured other = (QueryBdyzResponseInsured) object;
        if ((this.queryBdyzResponseInsuredPK == null && other.queryBdyzResponseInsuredPK != null) || (this.queryBdyzResponseInsuredPK != null && !this.queryBdyzResponseInsuredPK.equals(other.queryBdyzResponseInsuredPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.QueryBdyzResponseInsured[ queryBdyzResponseInsuredPK=" + queryBdyzResponseInsuredPK + " ]";
    }
    
}
