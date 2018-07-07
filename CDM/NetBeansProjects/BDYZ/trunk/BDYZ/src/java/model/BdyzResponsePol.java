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
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import javax.xml.bind.annotation.XmlType;

/**
 *
 * @author HQST100207
 */
@Entity
@Table(name = "BDYZ_RESPONSE_POL")
@XmlRootElement
@XmlType(propOrder={"riskCode","riskName","amnt","prem"})
@NamedQueries({
    @NamedQuery(name = "BdyzResponsePol.findAll", query = "SELECT b FROM BdyzResponsePol b"),
    @NamedQuery(name = "BdyzResponsePol.findByBatchno", query = "SELECT b FROM BdyzResponsePol b WHERE b.bdyzResponsePolPK.batchno = :batchno"),
    @NamedQuery(name = "BdyzResponsePol.findByContNo", query = "SELECT b FROM BdyzResponsePol b WHERE b.bdyzResponsePolPK.contNo = :contNo"),
    @NamedQuery(name = "BdyzResponsePol.findByInsuredNo", query = "SELECT b FROM BdyzResponsePol b WHERE b.bdyzResponsePolPK.insuredNo = :insuredNo"),
    @NamedQuery(name = "BdyzResponsePol.findByInsuredName", query = "SELECT b FROM BdyzResponsePol b WHERE b.insuredName = :insuredName"),
    @NamedQuery(name = "BdyzResponsePol.findByPolNo", query = "SELECT b FROM BdyzResponsePol b WHERE b.bdyzResponsePolPK.polNo = :polNo"),
    @NamedQuery(name = "BdyzResponsePol.findByRiskCode", query = "SELECT b FROM BdyzResponsePol b WHERE b.riskCode = :riskCode"),
    @NamedQuery(name = "BdyzResponsePol.findByRiskName", query = "SELECT b FROM BdyzResponsePol b WHERE b.riskName = :riskName"),
    @NamedQuery(name = "BdyzResponsePol.findByAmnt", query = "SELECT b FROM BdyzResponsePol b WHERE b.amnt = :amnt"),
    @NamedQuery(name = "BdyzResponsePol.findByPrem", query = "SELECT b FROM BdyzResponsePol b WHERE b.prem = :prem"),
    @NamedQuery(name = "BdyzResponsePol.findByResponseDate", query = "SELECT b FROM BdyzResponsePol b WHERE b.responseDate = :responseDate")})
public class BdyzResponsePol implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected BdyzResponsePolPK bdyzResponsePolPK;
    @Size(max = 480)
    @Column(name = "INSURED_NAME")
    private String insuredName;
    @Size(max = 480)
    @Column(name = "RISK_CODE")
    private String riskCode;
    @Size(max = 480)
    @Column(name = "RISK_NAME")
    private String riskName;
    @Size(max = 480)
    @Column(name = "AMNT")
    private String amnt;
    @Size(max = 480)
    @Column(name = "PREM")
    private String prem;
    @Column(name = "RESPONSE_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date responseDate;
    @JoinColumns({
        @JoinColumn(name = "BATCHNO", referencedColumnName = "BATCHNO", insertable = false, updatable = false),
        @JoinColumn(name = "CONT_NO", referencedColumnName = "CONT_NO", insertable = false, updatable = false),
        @JoinColumn(name = "INSURED_NO", referencedColumnName = "INSURED_NO", insertable = false, updatable = false)})
    @ManyToOne(optional = false)
    private BdyzResponseInsured bdyzResponseInsured;

    public BdyzResponsePol() {
    }

    public BdyzResponsePol(BdyzResponsePolPK bdyzResponsePolPK) {
        this.bdyzResponsePolPK = bdyzResponsePolPK;
    }

    public BdyzResponsePol(String batchno, String contNo, String insuredNo, String polNo) {
        this.bdyzResponsePolPK = new BdyzResponsePolPK(batchno, contNo, insuredNo, polNo);
    }

    @XmlTransient
    public BdyzResponsePolPK getBdyzResponsePolPK() {
        return bdyzResponsePolPK;
    }

    public void setBdyzResponsePolPK(BdyzResponsePolPK bdyzResponsePolPK) {
        this.bdyzResponsePolPK = bdyzResponsePolPK;
    }

    @XmlTransient
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

    public String getAmnt() {
        return amnt;
    }

    public void setAmnt(String amnt) {
        this.amnt = amnt;
    }

    public String getPrem() {
        return prem;
    }

    public void setPrem(String prem) {
        this.prem = prem;
    }

    @XmlTransient
    public Date getResponseDate() {
        return responseDate;
    }

    public void setResponseDate(Date responseDate) {
        this.responseDate = responseDate;
    }

    @XmlTransient
    public BdyzResponseInsured getBdyzResponseInsured() {
        return bdyzResponseInsured;
    }

    public void setBdyzResponseInsured(BdyzResponseInsured bdyzResponseInsured) {
        this.bdyzResponseInsured = bdyzResponseInsured;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (bdyzResponsePolPK != null ? bdyzResponsePolPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof BdyzResponsePol)) {
            return false;
        }
        BdyzResponsePol other = (BdyzResponsePol) object;
        if ((this.bdyzResponsePolPK == null && other.bdyzResponsePolPK != null) || (this.bdyzResponsePolPK != null && !this.bdyzResponsePolPK.equals(other.bdyzResponsePolPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.BdyzResponsePol[ bdyzResponsePolPK=" + bdyzResponsePolPK + " ]";
    }
    
}
