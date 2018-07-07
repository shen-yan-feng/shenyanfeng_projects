/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import javax.xml.bind.annotation.XmlType;

/**
 *
 * @author HQST100207
 */
@Entity
@Table(name = "BDYZ_RESPONSE_INSURED")
@XmlRootElement
@XmlType(propOrder={"insuredName","bdyzResponsePolList"})
@NamedQueries({
    @NamedQuery(name = "BdyzResponseInsured.findAll", query = "SELECT b FROM BdyzResponseInsured b"),
    @NamedQuery(name = "BdyzResponseInsured.findByBatchno", query = "SELECT b FROM BdyzResponseInsured b WHERE b.bdyzResponseInsuredPK.batchno = :batchno"),
    @NamedQuery(name = "BdyzResponseInsured.findByContNo", query = "SELECT b FROM BdyzResponseInsured b WHERE b.bdyzResponseInsuredPK.contNo = :contNo"),
    @NamedQuery(name = "BdyzResponseInsured.findByInsuredNo", query = "SELECT b FROM BdyzResponseInsured b WHERE b.bdyzResponseInsuredPK.insuredNo = :insuredNo"),
    @NamedQuery(name = "BdyzResponseInsured.findByInsuredName", query = "SELECT b FROM BdyzResponseInsured b WHERE b.insuredName = :insuredName"),
    @NamedQuery(name = "BdyzResponseInsured.findByResponseDate", query = "SELECT b FROM BdyzResponseInsured b WHERE b.responseDate = :responseDate")})
public class BdyzResponseInsured implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected BdyzResponseInsuredPK bdyzResponseInsuredPK;
    @Size(max = 480)
    @Column(name = "INSURED_NAME")
    private String insuredName;
    @Column(name = "RESPONSE_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date responseDate;
    @JoinColumns({
        @JoinColumn(name = "BATCHNO", referencedColumnName = "BATCHNO", insertable = false, updatable = false),
        @JoinColumn(name = "CONT_NO", referencedColumnName = "CONT_NO", insertable = false, updatable = false)})
    @ManyToOne(optional = false)
    private BdyzResponseCont bdyzResponseCont;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "bdyzResponseInsured")
    private List<BdyzResponsePol> bdyzResponsePolList;

    public BdyzResponseInsured() {
    }

    public BdyzResponseInsured(BdyzResponseInsuredPK bdyzResponseInsuredPK) {
        this.bdyzResponseInsuredPK = bdyzResponseInsuredPK;
    }

    public BdyzResponseInsured(String batchno, String contNo, String insuredNo) {
        this.bdyzResponseInsuredPK = new BdyzResponseInsuredPK(batchno, contNo, insuredNo);
    }

    @XmlTransient
    public BdyzResponseInsuredPK getBdyzResponseInsuredPK() {
        return bdyzResponseInsuredPK;
    }

    public void setBdyzResponseInsuredPK(BdyzResponseInsuredPK bdyzResponseInsuredPK) {
        this.bdyzResponseInsuredPK = bdyzResponseInsuredPK;
    }

    public String getInsuredName() {
        return insuredName;
    }

    public void setInsuredName(String insuredName) {
        this.insuredName = insuredName;
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

    @XmlElementWrapper(name="riskList")
    @XmlElement(name="riskLevel")
    public List<BdyzResponsePol> getBdyzResponsePolList() {
        return bdyzResponsePolList;
    }

    public void setBdyzResponsePolList(List<BdyzResponsePol> bdyzResponsePolList) {
        this.bdyzResponsePolList = bdyzResponsePolList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (bdyzResponseInsuredPK != null ? bdyzResponseInsuredPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof BdyzResponseInsured)) {
            return false;
        }
        BdyzResponseInsured other = (BdyzResponseInsured) object;
        if ((this.bdyzResponseInsuredPK == null && other.bdyzResponseInsuredPK != null) || (this.bdyzResponseInsuredPK != null && !this.bdyzResponseInsuredPK.equals(other.bdyzResponseInsuredPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.BdyzResponseInsured[ bdyzResponseInsuredPK=" + bdyzResponseInsuredPK + " ]";
    }
    
}
