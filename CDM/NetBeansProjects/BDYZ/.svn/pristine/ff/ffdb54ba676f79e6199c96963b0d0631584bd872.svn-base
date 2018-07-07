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
@Table(name = "ENCRYPT_BDYZ_RESPONSE_POL")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "EncryptBdyzResponsePol.findAll", query = "SELECT e FROM EncryptBdyzResponsePol e"),
    @NamedQuery(name = "EncryptBdyzResponsePol.findByBatchno", query = "SELECT e FROM EncryptBdyzResponsePol e WHERE e.encryptBdyzResponsePolPK.batchno = :batchno"),
    @NamedQuery(name = "EncryptBdyzResponsePol.findByPolicyNo", query = "SELECT e FROM EncryptBdyzResponsePol e WHERE e.encryptBdyzResponsePolPK.policyNo = :policyNo"),
    @NamedQuery(name = "EncryptBdyzResponsePol.findByInsuredNo", query = "SELECT e FROM EncryptBdyzResponsePol e WHERE e.encryptBdyzResponsePolPK.insuredNo = :insuredNo"),
    @NamedQuery(name = "EncryptBdyzResponsePol.findByInsuredName", query = "SELECT e FROM EncryptBdyzResponsePol e WHERE e.insuredName = :insuredName"),
    @NamedQuery(name = "EncryptBdyzResponsePol.findByPolNo", query = "SELECT e FROM EncryptBdyzResponsePol e WHERE e.encryptBdyzResponsePolPK.polNo = :polNo"),
    @NamedQuery(name = "EncryptBdyzResponsePol.findByRiskCode", query = "SELECT e FROM EncryptBdyzResponsePol e WHERE e.riskCode = :riskCode"),
    @NamedQuery(name = "EncryptBdyzResponsePol.findByRiskName", query = "SELECT e FROM EncryptBdyzResponsePol e WHERE e.riskName = :riskName"),
    @NamedQuery(name = "EncryptBdyzResponsePol.findByAmnt", query = "SELECT e FROM EncryptBdyzResponsePol e WHERE e.amnt = :amnt"),
    @NamedQuery(name = "EncryptBdyzResponsePol.findByPrem", query = "SELECT e FROM EncryptBdyzResponsePol e WHERE e.prem = :prem"),
    @NamedQuery(name = "EncryptBdyzResponsePol.findByResponseDate", query = "SELECT e FROM EncryptBdyzResponsePol e WHERE e.responseDate = :responseDate")})
public class EncryptBdyzResponsePol implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected EncryptBdyzResponsePolPK encryptBdyzResponsePolPK;
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

    public EncryptBdyzResponsePol() {
    }

    public EncryptBdyzResponsePol(EncryptBdyzResponsePolPK encryptBdyzResponsePolPK) {
        this.encryptBdyzResponsePolPK = encryptBdyzResponsePolPK;
    }

    public EncryptBdyzResponsePol(String batchno, String policyNo, String insuredNo, String polNo) {
        this.encryptBdyzResponsePolPK = new EncryptBdyzResponsePolPK(batchno, policyNo, insuredNo, polNo);
    }

    public EncryptBdyzResponsePolPK getEncryptBdyzResponsePolPK() {
        return encryptBdyzResponsePolPK;
    }

    public void setEncryptBdyzResponsePolPK(EncryptBdyzResponsePolPK encryptBdyzResponsePolPK) {
        this.encryptBdyzResponsePolPK = encryptBdyzResponsePolPK;
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

    public Date getResponseDate() {
        return responseDate;
    }

    public void setResponseDate(Date responseDate) {
        this.responseDate = responseDate;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (encryptBdyzResponsePolPK != null ? encryptBdyzResponsePolPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof EncryptBdyzResponsePol)) {
            return false;
        }
        EncryptBdyzResponsePol other = (EncryptBdyzResponsePol) object;
        if ((this.encryptBdyzResponsePolPK == null && other.encryptBdyzResponsePolPK != null) || (this.encryptBdyzResponsePolPK != null && !this.encryptBdyzResponsePolPK.equals(other.encryptBdyzResponsePolPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.EncryptBdyzResponsePol[ encryptBdyzResponsePolPK=" + encryptBdyzResponsePolPK + " ]";
    }
    
}
