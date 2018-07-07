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
@Table(name = "ENCRYPT_BDYZ_RESPONSE_INSURED")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "EncryptBdyzResponseInsured.findAll", query = "SELECT e FROM EncryptBdyzResponseInsured e"),
    @NamedQuery(name = "EncryptBdyzResponseInsured.findByBatchno", query = "SELECT e FROM EncryptBdyzResponseInsured e WHERE e.encryptBdyzResponseInsuredPK.batchno = :batchno"),
    @NamedQuery(name = "EncryptBdyzResponseInsured.findByPolicyNo", query = "SELECT e FROM EncryptBdyzResponseInsured e WHERE e.encryptBdyzResponseInsuredPK.policyNo = :policyNo"),
    @NamedQuery(name = "EncryptBdyzResponseInsured.findByInsuredNo", query = "SELECT e FROM EncryptBdyzResponseInsured e WHERE e.encryptBdyzResponseInsuredPK.insuredNo = :insuredNo"),
    @NamedQuery(name = "EncryptBdyzResponseInsured.findByInsuredName", query = "SELECT e FROM EncryptBdyzResponseInsured e WHERE e.insuredName = :insuredName"),
    @NamedQuery(name = "EncryptBdyzResponseInsured.findByResponseDate", query = "SELECT e FROM EncryptBdyzResponseInsured e WHERE e.responseDate = :responseDate")})
public class EncryptBdyzResponseInsured implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected EncryptBdyzResponseInsuredPK encryptBdyzResponseInsuredPK;
    @Size(max = 480)
    @Column(name = "INSURED_NAME")
    private String insuredName;
    @Column(name = "RESPONSE_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date responseDate;

    public EncryptBdyzResponseInsured() {
    }

    public EncryptBdyzResponseInsured(EncryptBdyzResponseInsuredPK encryptBdyzResponseInsuredPK) {
        this.encryptBdyzResponseInsuredPK = encryptBdyzResponseInsuredPK;
    }

    public EncryptBdyzResponseInsured(String batchno, String policyNo, String insuredNo) {
        this.encryptBdyzResponseInsuredPK = new EncryptBdyzResponseInsuredPK(batchno, policyNo, insuredNo);
    }

    public EncryptBdyzResponseInsuredPK getEncryptBdyzResponseInsuredPK() {
        return encryptBdyzResponseInsuredPK;
    }

    public void setEncryptBdyzResponseInsuredPK(EncryptBdyzResponseInsuredPK encryptBdyzResponseInsuredPK) {
        this.encryptBdyzResponseInsuredPK = encryptBdyzResponseInsuredPK;
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
        hash += (encryptBdyzResponseInsuredPK != null ? encryptBdyzResponseInsuredPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof EncryptBdyzResponseInsured)) {
            return false;
        }
        EncryptBdyzResponseInsured other = (EncryptBdyzResponseInsured) object;
        if ((this.encryptBdyzResponseInsuredPK == null && other.encryptBdyzResponseInsuredPK != null) || (this.encryptBdyzResponseInsuredPK != null && !this.encryptBdyzResponseInsuredPK.equals(other.encryptBdyzResponseInsuredPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.EncryptBdyzResponseInsured[ encryptBdyzResponseInsuredPK=" + encryptBdyzResponseInsuredPK + " ]";
    }
    
}
