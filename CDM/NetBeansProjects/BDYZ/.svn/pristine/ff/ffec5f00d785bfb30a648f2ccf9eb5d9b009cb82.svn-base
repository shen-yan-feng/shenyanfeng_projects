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

/**
 *
 * @author HQST100207
 */
@Entity
@Table(name = "BDYZ_RESPONSE_APPNT")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "BdyzResponseAppnt.findAll", query = "SELECT b FROM BdyzResponseAppnt b"),
    @NamedQuery(name = "BdyzResponseAppnt.findByBatchno", query = "SELECT b FROM BdyzResponseAppnt b WHERE b.bdyzResponseAppntPK.batchno = :batchno"),
    @NamedQuery(name = "BdyzResponseAppnt.findByContNo", query = "SELECT b FROM BdyzResponseAppnt b WHERE b.bdyzResponseAppntPK.contNo = :contNo"),
    @NamedQuery(name = "BdyzResponseAppnt.findByAppntNo", query = "SELECT b FROM BdyzResponseAppnt b WHERE b.bdyzResponseAppntPK.appntNo = :appntNo"),
    @NamedQuery(name = "BdyzResponseAppnt.findByAppntName", query = "SELECT b FROM BdyzResponseAppnt b WHERE b.appntName = :appntName"),
    @NamedQuery(name = "BdyzResponseAppnt.findByResponseDate", query = "SELECT b FROM BdyzResponseAppnt b WHERE b.responseDate = :responseDate")})
public class BdyzResponseAppnt implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected BdyzResponseAppntPK bdyzResponseAppntPK;
    @Size(max = 480)
    @Column(name = "APPNT_NAME")
    private String appntName;
    @Column(name = "RESPONSE_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date responseDate;
    @JoinColumns({
        @JoinColumn(name = "BATCHNO", referencedColumnName = "BATCHNO", insertable = false, updatable = false),
        @JoinColumn(name = "CONT_NO", referencedColumnName = "CONT_NO", insertable = false, updatable = false)})
    @ManyToOne(optional = false)
    private BdyzResponseCont bdyzResponseCont;

    public BdyzResponseAppnt() {
    }

    public BdyzResponseAppnt(BdyzResponseAppntPK bdyzResponseAppntPK) {
        this.bdyzResponseAppntPK = bdyzResponseAppntPK;
    }

    public BdyzResponseAppnt(String batchno, String contNo, String appntNo) {
        this.bdyzResponseAppntPK = new BdyzResponseAppntPK(batchno, contNo, appntNo);
    }

    @XmlTransient
    public BdyzResponseAppntPK getBdyzResponseAppntPK() {
        return bdyzResponseAppntPK;
    }

    public void setBdyzResponseAppntPK(BdyzResponseAppntPK bdyzResponseAppntPK) {
        this.bdyzResponseAppntPK = bdyzResponseAppntPK;
    }

    public String getAppntName() {
        return appntName;
    }

    public void setAppntName(String appntName) {
        this.appntName = appntName;
    }

    @XmlTransient
    public Date getResponseDate() {
        return responseDate;
    }

    public void setResponseDate(Date responseDate) {
        this.responseDate = responseDate;
    }

    @XmlTransient
    public BdyzResponseCont getBdyzResponseCont() {
        return bdyzResponseCont;
    }

    public void setBdyzResponseCont(BdyzResponseCont bdyzResponseCont) {
        this.bdyzResponseCont = bdyzResponseCont;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (bdyzResponseAppntPK != null ? bdyzResponseAppntPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof BdyzResponseAppnt)) {
            return false;
        }
        BdyzResponseAppnt other = (BdyzResponseAppnt) object;
        if ((this.bdyzResponseAppntPK == null && other.bdyzResponseAppntPK != null) || (this.bdyzResponseAppntPK != null && !this.bdyzResponseAppntPK.equals(other.bdyzResponseAppntPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.BdyzResponseAppnt[ bdyzResponseAppntPK=" + bdyzResponseAppntPK + " ]";
    }
    
}
