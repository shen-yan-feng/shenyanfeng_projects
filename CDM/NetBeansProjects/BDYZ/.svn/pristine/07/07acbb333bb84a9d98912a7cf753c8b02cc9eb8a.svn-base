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
@Table(name = "ENCRYPT_BDYZ_RESPONSE_APPNT")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "EncryptBdyzResponseAppnt.findAll", query = "SELECT e FROM EncryptBdyzResponseAppnt e"),
    @NamedQuery(name = "EncryptBdyzResponseAppnt.findByBatchno", query = "SELECT e FROM EncryptBdyzResponseAppnt e WHERE e.encryptBdyzResponseAppntPK.batchno = :batchno"),
    @NamedQuery(name = "EncryptBdyzResponseAppnt.findByPolicyNo", query = "SELECT e FROM EncryptBdyzResponseAppnt e WHERE e.encryptBdyzResponseAppntPK.policyNo = :policyNo"),
    @NamedQuery(name = "EncryptBdyzResponseAppnt.findByAppntNo", query = "SELECT e FROM EncryptBdyzResponseAppnt e WHERE e.encryptBdyzResponseAppntPK.appntNo = :appntNo"),
    @NamedQuery(name = "EncryptBdyzResponseAppnt.findByAppntName", query = "SELECT e FROM EncryptBdyzResponseAppnt e WHERE e.appntName = :appntName"),
    @NamedQuery(name = "EncryptBdyzResponseAppnt.findByResponseDate", query = "SELECT e FROM EncryptBdyzResponseAppnt e WHERE e.responseDate = :responseDate")})
public class EncryptBdyzResponseAppnt implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected EncryptBdyzResponseAppntPK encryptBdyzResponseAppntPK;
    @Size(max = 480)
    @Column(name = "APPNT_NAME")
    private String appntName;
    @Column(name = "RESPONSE_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date responseDate;

    public EncryptBdyzResponseAppnt() {
    }

    public EncryptBdyzResponseAppnt(EncryptBdyzResponseAppntPK encryptBdyzResponseAppntPK) {
        this.encryptBdyzResponseAppntPK = encryptBdyzResponseAppntPK;
    }

    public EncryptBdyzResponseAppnt(String batchno, String policyNo, String appntNo) {
        this.encryptBdyzResponseAppntPK = new EncryptBdyzResponseAppntPK(batchno, policyNo, appntNo);
    }

    public EncryptBdyzResponseAppntPK getEncryptBdyzResponseAppntPK() {
        return encryptBdyzResponseAppntPK;
    }

    public void setEncryptBdyzResponseAppntPK(EncryptBdyzResponseAppntPK encryptBdyzResponseAppntPK) {
        this.encryptBdyzResponseAppntPK = encryptBdyzResponseAppntPK;
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
        hash += (encryptBdyzResponseAppntPK != null ? encryptBdyzResponseAppntPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof EncryptBdyzResponseAppnt)) {
            return false;
        }
        EncryptBdyzResponseAppnt other = (EncryptBdyzResponseAppnt) object;
        if ((this.encryptBdyzResponseAppntPK == null && other.encryptBdyzResponseAppntPK != null) || (this.encryptBdyzResponseAppntPK != null && !this.encryptBdyzResponseAppntPK.equals(other.encryptBdyzResponseAppntPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.EncryptBdyzResponseAppnt[ encryptBdyzResponseAppntPK=" + encryptBdyzResponseAppntPK + " ]";
    }
    
}
