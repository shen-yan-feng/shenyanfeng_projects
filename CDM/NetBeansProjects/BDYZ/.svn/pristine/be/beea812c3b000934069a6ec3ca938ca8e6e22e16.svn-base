/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import javax.xml.bind.annotation.XmlType;

/**
 *
 * @author HQST100207
 */
@Entity
@Table(name = "BDYZ_REQUEST")
@XmlRootElement(name="reqData")
@XmlType(propOrder={"policyNo","queryFlag","insuredFlag","idType","customerId","verifyCode"})
@NamedQueries({
    @NamedQuery(name = "BdyzRequest.findAll", query = "SELECT b FROM BdyzRequest b"),
    @NamedQuery(name = "BdyzRequest.findByBatchno", query = "SELECT b FROM BdyzRequest b WHERE b.batchno = :batchno"),
    @NamedQuery(name = "BdyzRequest.findByReqDate", query = "SELECT b FROM BdyzRequest b WHERE b.reqDate = :reqDate"),
    @NamedQuery(name = "BdyzRequest.findByPolicyNo", query = "SELECT b FROM BdyzRequest b WHERE b.policyNo = :policyNo"),
    @NamedQuery(name = "BdyzRequest.findByQueryFlag", query = "SELECT b FROM BdyzRequest b WHERE b.queryFlag = :queryFlag"),
    @NamedQuery(name = "BdyzRequest.findByInsuredFlag", query = "SELECT b FROM BdyzRequest b WHERE b.insuredFlag = :insuredFlag"),
    @NamedQuery(name = "BdyzRequest.findByIdType", query = "SELECT b FROM BdyzRequest b WHERE b.idType = :idType"),
    @NamedQuery(name = "BdyzRequest.findByCustomerId", query = "SELECT b FROM BdyzRequest b WHERE b.customerId = :customerId"),
    @NamedQuery(name = "BdyzRequest.findByVerifyCode", query = "SELECT b FROM BdyzRequest b WHERE b.verifyCode = :verifyCode"),
    @NamedQuery(name = "BdyzRequest.findByReqIp", query = "SELECT b FROM BdyzRequest b WHERE b.reqIp = :reqIp"),
    @NamedQuery(name = "BdyzRequest.findByReqState", query = "SELECT b FROM BdyzRequest b WHERE b.reqState = :reqState")})
public class BdyzRequest implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 150)
    @Column(name = "BATCHNO")
    private String batchno;
    @Column(name = "REQ_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date reqDate;
    @Size(max = 40)
    @Column(name = "POLICY_NO")
    private String policyNo;
    @Size(max = 2)
    @Column(name = "QUERY_FLAG")
    private String queryFlag;
    @Size(max = 2)
    @Column(name = "INSURED_FLAG")
    private String insuredFlag;
    @Size(max = 4)
    @Column(name = "ID_TYPE")
    private String idType;
    @Size(max = 20)
    @Column(name = "CUSTOMER_ID")
    private String customerId;
    @Size(max = 100)
    @Column(name = "VERIFY_CODE")
    private String verifyCode;
    @Size(max = 20)
    @Column(name = "REQ_IP")
    private String reqIp;
    @Size(max = 20)
    @Column(name = "REQ_STATE")
    private String reqState;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "bdyzRequest")
    private BdyzResponse bdyzResponse;

    public BdyzRequest() {
    }

    public BdyzRequest(String batchno) {
        this.batchno = batchno;
    }

    @XmlTransient
    public String getBatchno() {
        return batchno;
    }

    @XmlTransient
    public void setBatchno(String batchno) {
        this.batchno = batchno;
    }

    @XmlTransient
    public Date getReqDate() {
        return reqDate;
    }

    @XmlTransient
    public void setReqDate(Date reqDate) {
        this.reqDate = reqDate;
    }

    public String getPolicyNo() {
        return policyNo;
    }

    public void setPolicyNo(String policyNo) {
        this.policyNo = policyNo;
    }

    public String getQueryFlag() {
        return queryFlag;
    }

    public void setQueryFlag(String queryFlag) {
        this.queryFlag = queryFlag;
    }

    public String getInsuredFlag() {
        return insuredFlag;
    }

    public void setInsuredFlag(String insuredFlag) {
        this.insuredFlag = insuredFlag;
    }

    public String getIdType() {
        return idType;
    }

    public void setIdType(String idType) {
        this.idType = idType;
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public String getVerifyCode() {
        return verifyCode;
    }

    public void setVerifyCode(String verifyCode) {
        this.verifyCode = verifyCode;
    }

    @XmlTransient
    public String getReqIp() {
        return reqIp;
    }

    @XmlTransient
    public void setReqIp(String reqIp) {
        this.reqIp = reqIp;
    }

    @XmlTransient
    public String getReqState() {
        return reqState;
    }

    @XmlTransient
    public void setReqState(String reqState) {
        this.reqState = reqState;
    }

    @XmlTransient
    public BdyzResponse getBdyzResponse() {
        return bdyzResponse;
    }

    @XmlTransient
    public void setBdyzResponse(BdyzResponse bdyzResponse) {
        this.bdyzResponse = bdyzResponse;
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
        if (!(object instanceof BdyzRequest)) {
            return false;
        }
        BdyzRequest other = (BdyzRequest) object;
        if ((this.batchno == null && other.batchno != null) || (this.batchno != null && !this.batchno.equals(other.batchno))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.BdyzRequest[ batchno=" + batchno + " ]";
    }
    
}
