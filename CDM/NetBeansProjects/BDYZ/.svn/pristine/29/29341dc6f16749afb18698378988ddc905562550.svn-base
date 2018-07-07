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
@Table(name = "ENCRYPT_BDYZ_RESPONSE_CONT")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "EncryptBdyzResponseCont.findAll", query = "SELECT e FROM EncryptBdyzResponseCont e"),
    @NamedQuery(name = "EncryptBdyzResponseCont.findByBatchno", query = "SELECT e FROM EncryptBdyzResponseCont e WHERE e.encryptBdyzResponseContPK.batchno = :batchno"),
    @NamedQuery(name = "EncryptBdyzResponseCont.findByContNo", query = "SELECT e FROM EncryptBdyzResponseCont e WHERE e.encryptBdyzResponseContPK.contNo = :contNo"),
    @NamedQuery(name = "EncryptBdyzResponseCont.findByGroupFlag", query = "SELECT e FROM EncryptBdyzResponseCont e WHERE e.groupFlag = :groupFlag"),
    @NamedQuery(name = "EncryptBdyzResponseCont.findByRealSign", query = "SELECT e FROM EncryptBdyzResponseCont e WHERE e.realSign = :realSign"),
    @NamedQuery(name = "EncryptBdyzResponseCont.findByDownloadUrl", query = "SELECT e FROM EncryptBdyzResponseCont e WHERE e.downloadUrl = :downloadUrl"),
    @NamedQuery(name = "EncryptBdyzResponseCont.findByPolicyType", query = "SELECT e FROM EncryptBdyzResponseCont e WHERE e.policyType = :policyType"),
    @NamedQuery(name = "EncryptBdyzResponseCont.findByStartDate", query = "SELECT e FROM EncryptBdyzResponseCont e WHERE e.startDate = :startDate"),
    @NamedQuery(name = "EncryptBdyzResponseCont.findByStartTime", query = "SELECT e FROM EncryptBdyzResponseCont e WHERE e.startTime = :startTime"),
    @NamedQuery(name = "EncryptBdyzResponseCont.findByEndDate", query = "SELECT e FROM EncryptBdyzResponseCont e WHERE e.endDate = :endDate"),
    @NamedQuery(name = "EncryptBdyzResponseCont.findByEndTime", query = "SELECT e FROM EncryptBdyzResponseCont e WHERE e.endTime = :endTime"),
    @NamedQuery(name = "EncryptBdyzResponseCont.findByAlreadyPay", query = "SELECT e FROM EncryptBdyzResponseCont e WHERE e.alreadyPay = :alreadyPay"),
    @NamedQuery(name = "EncryptBdyzResponseCont.findByPayDate", query = "SELECT e FROM EncryptBdyzResponseCont e WHERE e.payDate = :payDate"),
    @NamedQuery(name = "EncryptBdyzResponseCont.findBySumAmnt", query = "SELECT e FROM EncryptBdyzResponseCont e WHERE e.sumAmnt = :sumAmnt"),
    @NamedQuery(name = "EncryptBdyzResponseCont.findByAppntNo", query = "SELECT e FROM EncryptBdyzResponseCont e WHERE e.appntNo = :appntNo"),
    @NamedQuery(name = "EncryptBdyzResponseCont.findByInsuredNo", query = "SELECT e FROM EncryptBdyzResponseCont e WHERE e.insuredNo = :insuredNo"),
    @NamedQuery(name = "EncryptBdyzResponseCont.findByInsuredPeoples", query = "SELECT e FROM EncryptBdyzResponseCont e WHERE e.insuredPeoples = :insuredPeoples"),
    @NamedQuery(name = "EncryptBdyzResponseCont.findByResponseDate", query = "SELECT e FROM EncryptBdyzResponseCont e WHERE e.responseDate = :responseDate"),
    @NamedQuery(name = "EncryptBdyzResponseCont.findByGrpContNo", query = "SELECT e FROM EncryptBdyzResponseCont e WHERE e.grpContNo = :grpContNo")})
public class EncryptBdyzResponseCont implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected EncryptBdyzResponseContPK encryptBdyzResponseContPK;
    @Size(max = 480)
    @Column(name = "GROUP_FLAG")
    private String groupFlag;
    @Size(max = 480)
    @Column(name = "REAL_SIGN")
    private String realSign;
    @Size(max = 480)
    @Column(name = "DOWNLOAD_URL")
    private String downloadUrl;
    @Size(max = 480)
    @Column(name = "POLICY_TYPE")
    private String policyType;
    @Size(max = 480)
    @Column(name = "START_DATE")
    private String startDate;
    @Size(max = 480)
    @Column(name = "START_TIME")
    private String startTime;
    @Size(max = 480)
    @Column(name = "END_DATE")
    private String endDate;
    @Size(max = 480)
    @Column(name = "END_TIME")
    private String endTime;
    @Size(max = 480)
    @Column(name = "ALREADY_PAY")
    private String alreadyPay;
    @Size(max = 480)
    @Column(name = "PAY_DATE")
    private String payDate;
    @Size(max = 480)
    @Column(name = "SUM_AMNT")
    private String sumAmnt;
    @Size(max = 480)
    @Column(name = "APPNT_NO")
    private String appntNo;
    @Size(max = 480)
    @Column(name = "INSURED_NO")
    private String insuredNo;
    @Size(max = 480)
    @Column(name = "INSURED_PEOPLES")
    private String insuredPeoples;
    @Column(name = "RESPONSE_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date responseDate;
    @Size(max = 480)
    @Column(name = "GRP_CONT_NO")
    private String grpContNo;

    public EncryptBdyzResponseCont() {
    }

    public EncryptBdyzResponseCont(EncryptBdyzResponseContPK encryptBdyzResponseContPK) {
        this.encryptBdyzResponseContPK = encryptBdyzResponseContPK;
    }

    public EncryptBdyzResponseCont(String batchno, String contNo) {
        this.encryptBdyzResponseContPK = new EncryptBdyzResponseContPK(batchno, contNo);
    }

    public EncryptBdyzResponseContPK getEncryptBdyzResponseContPK() {
        return encryptBdyzResponseContPK;
    }

    public void setEncryptBdyzResponseContPK(EncryptBdyzResponseContPK encryptBdyzResponseContPK) {
        this.encryptBdyzResponseContPK = encryptBdyzResponseContPK;
    }

    public String getGroupFlag() {
        return groupFlag;
    }

    public void setGroupFlag(String groupFlag) {
        this.groupFlag = groupFlag;
    }

    public String getRealSign() {
        return realSign;
    }

    public void setRealSign(String realSign) {
        this.realSign = realSign;
    }

    public String getDownloadUrl() {
        return downloadUrl;
    }

    public void setDownloadUrl(String downloadUrl) {
        this.downloadUrl = downloadUrl;
    }

    public String getPolicyType() {
        return policyType;
    }

    public void setPolicyType(String policyType) {
        this.policyType = policyType;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getAlreadyPay() {
        return alreadyPay;
    }

    public void setAlreadyPay(String alreadyPay) {
        this.alreadyPay = alreadyPay;
    }

    public String getPayDate() {
        return payDate;
    }

    public void setPayDate(String payDate) {
        this.payDate = payDate;
    }

    public String getSumAmnt() {
        return sumAmnt;
    }

    public void setSumAmnt(String sumAmnt) {
        this.sumAmnt = sumAmnt;
    }

    public String getAppntNo() {
        return appntNo;
    }

    public void setAppntNo(String appntNo) {
        this.appntNo = appntNo;
    }

    public String getInsuredNo() {
        return insuredNo;
    }

    public void setInsuredNo(String insuredNo) {
        this.insuredNo = insuredNo;
    }

    public String getInsuredPeoples() {
        return insuredPeoples;
    }

    public void setInsuredPeoples(String insuredPeoples) {
        this.insuredPeoples = insuredPeoples;
    }

    public Date getResponseDate() {
        return responseDate;
    }

    public void setResponseDate(Date responseDate) {
        this.responseDate = responseDate;
    }

    public String getGrpContNo() {
        return grpContNo;
    }

    public void setGrpContNo(String grpContNo) {
        this.grpContNo = grpContNo;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (encryptBdyzResponseContPK != null ? encryptBdyzResponseContPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof EncryptBdyzResponseCont)) {
            return false;
        }
        EncryptBdyzResponseCont other = (EncryptBdyzResponseCont) object;
        if ((this.encryptBdyzResponseContPK == null && other.encryptBdyzResponseContPK != null) || (this.encryptBdyzResponseContPK != null && !this.encryptBdyzResponseContPK.equals(other.encryptBdyzResponseContPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.EncryptBdyzResponseCont[ encryptBdyzResponseContPK=" + encryptBdyzResponseContPK + " ]";
    }
    
}
