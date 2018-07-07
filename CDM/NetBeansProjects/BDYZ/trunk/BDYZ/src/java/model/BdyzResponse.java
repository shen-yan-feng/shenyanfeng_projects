/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import javax.xml.bind.annotation.XmlType;

import org.eclipse.persistence.oxm.annotations.XmlMarshalNullRepresentation;
import org.eclipse.persistence.oxm.annotations.XmlNullPolicy;
import org.eclipse.persistence.oxm.annotations.XmlPath;



/**
 *
 * @author HQST100207
 */
@Entity
@Table(name = "BDYZ_RESPONSE")
@XmlRootElement(name="respData")
@XmlType(propOrder={"errorCode","errorReason","bdyzResponseContList"})
@NamedQueries({
    @NamedQuery(name = "BdyzResponse.findAll", query = "SELECT b FROM BdyzResponse b"),
    @NamedQuery(name = "BdyzResponse.findByBatchno", query = "SELECT b FROM BdyzResponse b WHERE b.batchno = :batchno"),
    @NamedQuery(name = "BdyzResponse.findByErrorCode", query = "SELECT b FROM BdyzResponse b WHERE b.errorCode = :errorCode"),
    @NamedQuery(name = "BdyzResponse.findByErrorReason", query = "SELECT b FROM BdyzResponse b WHERE b.errorReason = :errorReason"),
    @NamedQuery(name = "BdyzResponse.findByResponseDate", query = "SELECT b FROM BdyzResponse b WHERE b.responseDate = :responseDate")})
public class BdyzResponse implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 480)
    @Column(name = "BATCHNO")
    private String batchno;
    @Size(max = 480)
    @Column(name = "ERROR_CODE")
    private String errorCode;
    @Size(max = 480)
    @Column(name = "ERROR_REASON")
    private String errorReason;
    @Column(name = "RESPONSE_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date responseDate;
    @JoinColumn(name = "BATCHNO", referencedColumnName = "BATCHNO", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private BdyzRequest bdyzRequest;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "bdyzResponse")
    private List<BdyzResponseCont> bdyzResponseContList;

    public BdyzResponse() {
    }

    public BdyzResponse(String batchno) {
        this.batchno = batchno;
    }

    @XmlTransient
    public String getBatchno() {
        return batchno;
    }

    public void setBatchno(String batchno) {
        this.batchno = batchno;
    }

    @XmlElement(required=false,nillable=true)
    @XmlNullPolicy(emptyNodeRepresentsNull = true,nullRepresentationForXml = XmlMarshalNullRepresentation.EMPTY_NODE)
    public String getErrorCode() {
        return errorCode;
    }

    public void setErrorCode(String errorCode) {
        this.errorCode = errorCode;
    }

    @XmlElement(required=false,nillable=true)
    @XmlNullPolicy(emptyNodeRepresentsNull = true,nullRepresentationForXml = XmlMarshalNullRepresentation.EMPTY_NODE)
    public String getErrorReason() {
        return errorReason;
    }

    public void setErrorReason(String errorReason) {
        this.errorReason = errorReason;
    }

    @XmlTransient
    public Date getResponseDate() {
        return responseDate;
    }

    public void setResponseDate(Date responseDate) {
        this.responseDate = responseDate;
    }

    @XmlTransient
    public BdyzRequest getBdyzRequest() {
        return bdyzRequest;
    }

    public void setBdyzRequest(BdyzRequest bdyzRequest) {
        this.bdyzRequest = bdyzRequest;
    }

    @XmlElement(name = "policyLevel")
    public List<BdyzResponseCont> getBdyzResponseContList() {
        return bdyzResponseContList;
    }

    public void setBdyzResponseContList(List<BdyzResponseCont> bdyzResponseContList) {
        this.bdyzResponseContList = bdyzResponseContList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (batchno != null ? batchno.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof BdyzResponse)) {
            return false;
        }
        BdyzResponse other = (BdyzResponse) object;
        if ((this.batchno == null && other.batchno != null) || (this.batchno != null && !this.batchno.equals(other.batchno))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.BdyzResponse[ batchno=" + batchno + " ]";
    }
    
}
