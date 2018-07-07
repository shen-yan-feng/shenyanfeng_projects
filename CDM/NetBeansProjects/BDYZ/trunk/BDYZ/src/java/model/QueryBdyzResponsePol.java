/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.math.BigDecimal;
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
@Table(name = "QUERY_BDYZ_RESPONSE_POL")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "QueryBdyzResponsePol.findAll", query = "SELECT q FROM QueryBdyzResponsePol q"),
    @NamedQuery(name = "QueryBdyzResponsePol.findByBatchno", query = "SELECT q FROM QueryBdyzResponsePol q WHERE q.queryBdyzResponsePolPK.batchno = :batchno"),
    @NamedQuery(name = "QueryBdyzResponsePol.findByPolicyNo", query = "SELECT q FROM QueryBdyzResponsePol q WHERE q.queryBdyzResponsePolPK.policyNo = :policyNo"),
    @NamedQuery(name = "QueryBdyzResponsePol.findByInsuredNo", query = "SELECT q FROM QueryBdyzResponsePol q WHERE q.queryBdyzResponsePolPK.insuredNo = :insuredNo"),
    @NamedQuery(name = "QueryBdyzResponsePol.findByInsuredName", query = "SELECT q FROM QueryBdyzResponsePol q WHERE q.insuredName = :insuredName"),
    @NamedQuery(name = "QueryBdyzResponsePol.findByPolNo", query = "SELECT q FROM QueryBdyzResponsePol q WHERE q.queryBdyzResponsePolPK.polNo = :polNo"),
    @NamedQuery(name = "QueryBdyzResponsePol.findByRiskCode", query = "SELECT q FROM QueryBdyzResponsePol q WHERE q.riskCode = :riskCode"),
    @NamedQuery(name = "QueryBdyzResponsePol.findByRiskName", query = "SELECT q FROM QueryBdyzResponsePol q WHERE q.riskName = :riskName"),
    @NamedQuery(name = "QueryBdyzResponsePol.findByAmnt", query = "SELECT q FROM QueryBdyzResponsePol q WHERE q.amnt = :amnt"),
    @NamedQuery(name = "QueryBdyzResponsePol.findByPrem", query = "SELECT q FROM QueryBdyzResponsePol q WHERE q.prem = :prem"),
    @NamedQuery(name = "QueryBdyzResponsePol.findByResponseDate", query = "SELECT q FROM QueryBdyzResponsePol q WHERE q.responseDate = :responseDate")})
public class QueryBdyzResponsePol implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected QueryBdyzResponsePolPK queryBdyzResponsePolPK;
    @Size(max = 50)
    @Column(name = "INSURED_NAME")
    private String insuredName;
    @Size(max = 20)
    @Column(name = "RISK_CODE")
    private String riskCode;
    @Size(max = 100)
    @Column(name = "RISK_NAME")
    private String riskName;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "AMNT")
    private BigDecimal amnt;
    @Column(name = "PREM")
    private BigDecimal prem;
    @Column(name = "RESPONSE_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date responseDate;

    public QueryBdyzResponsePol() {
    }

    public QueryBdyzResponsePol(QueryBdyzResponsePolPK queryBdyzResponsePolPK) {
        this.queryBdyzResponsePolPK = queryBdyzResponsePolPK;
    }

    public QueryBdyzResponsePol(String batchno, String policyNo, String insuredNo, String polNo) {
        this.queryBdyzResponsePolPK = new QueryBdyzResponsePolPK(batchno, policyNo, insuredNo, polNo);
    }

    public QueryBdyzResponsePolPK getQueryBdyzResponsePolPK() {
        return queryBdyzResponsePolPK;
    }

    public void setQueryBdyzResponsePolPK(QueryBdyzResponsePolPK queryBdyzResponsePolPK) {
        this.queryBdyzResponsePolPK = queryBdyzResponsePolPK;
    }

    public String getInsuredName() {
        return insuredName;
    }

    public void setInsuredName(String insuredName) {
        this.insuredName = insuredName;
    }

    public String getRiskCode() {
        return riskCode;
    }

    public void setRiskCode(String riskCode) {
        this.riskCode = riskCode;
    }

    public String getRiskName() {
        return riskName;
    }

    public void setRiskName(String riskName) {
        this.riskName = riskName;
    }

    public BigDecimal getAmnt() {
        return amnt;
    }

    public void setAmnt(BigDecimal amnt) {
        this.amnt = amnt;
    }

    public BigDecimal getPrem() {
        return prem;
    }

    public void setPrem(BigDecimal prem) {
        this.prem = prem;
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
        hash += (queryBdyzResponsePolPK != null ? queryBdyzResponsePolPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof QueryBdyzResponsePol)) {
            return false;
        }
        QueryBdyzResponsePol other = (QueryBdyzResponsePol) object;
        if ((this.queryBdyzResponsePolPK == null && other.queryBdyzResponsePolPK != null) || (this.queryBdyzResponsePolPK != null && !this.queryBdyzResponsePolPK.equals(other.queryBdyzResponsePolPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.QueryBdyzResponsePol[ queryBdyzResponsePolPK=" + queryBdyzResponsePolPK + " ]";
    }
    
}
