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
@Table(name = "QUERY_BDYZ_RESPONSE_CONT")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "QueryBdyzResponseCont.findAll", query = "SELECT q FROM QueryBdyzResponseCont q"),
    @NamedQuery(name = "QueryBdyzResponseCont.findByBatchno", query = "SELECT q FROM QueryBdyzResponseCont q WHERE q.queryBdyzResponseContPK.batchno = :batchno"),
    @NamedQuery(name = "QueryBdyzResponseCont.findByContNo", query = "SELECT q FROM QueryBdyzResponseCont q WHERE q.queryBdyzResponseContPK.contNo = :contNo"),
    @NamedQuery(name = "QueryBdyzResponseCont.findByGroupFlag", query = "SELECT q FROM QueryBdyzResponseCont q WHERE q.groupFlag = :groupFlag"),
    @NamedQuery(name = "QueryBdyzResponseCont.findByRealSign", query = "SELECT q FROM QueryBdyzResponseCont q WHERE q.realSign = :realSign"),
    @NamedQuery(name = "QueryBdyzResponseCont.findByDownloadUrl", query = "SELECT q FROM QueryBdyzResponseCont q WHERE q.downloadUrl = :downloadUrl"),
    @NamedQuery(name = "QueryBdyzResponseCont.findByPolicyType", query = "SELECT q FROM QueryBdyzResponseCont q WHERE q.policyType = :policyType"),
    @NamedQuery(name = "QueryBdyzResponseCont.findByStartDate", query = "SELECT q FROM QueryBdyzResponseCont q WHERE q.startDate = :startDate"),
    @NamedQuery(name = "QueryBdyzResponseCont.findByStartTime", query = "SELECT q FROM QueryBdyzResponseCont q WHERE q.startTime = :startTime"),
    @NamedQuery(name = "QueryBdyzResponseCont.findByEndDate", query = "SELECT q FROM QueryBdyzResponseCont q WHERE q.endDate = :endDate"),
    @NamedQuery(name = "QueryBdyzResponseCont.findByEndTime", query = "SELECT q FROM QueryBdyzResponseCont q WHERE q.endTime = :endTime"),
    @NamedQuery(name = "QueryBdyzResponseCont.findByAlreadyPay", query = "SELECT q FROM QueryBdyzResponseCont q WHERE q.alreadyPay = :alreadyPay"),
    @NamedQuery(name = "QueryBdyzResponseCont.findByPayDate", query = "SELECT q FROM QueryBdyzResponseCont q WHERE q.payDate = :payDate"),
    @NamedQuery(name = "QueryBdyzResponseCont.findBySumAmnt", query = "SELECT q FROM QueryBdyzResponseCont q WHERE q.sumAmnt = :sumAmnt"),
    @NamedQuery(name = "QueryBdyzResponseCont.findByAppntNo", query = "SELECT q FROM QueryBdyzResponseCont q WHERE q.appntNo = :appntNo"),
    @NamedQuery(name = "QueryBdyzResponseCont.findByInsuredNo", query = "SELECT q FROM QueryBdyzResponseCont q WHERE q.insuredNo = :insuredNo"),
    @NamedQuery(name = "QueryBdyzResponseCont.findByInsuredPeoples", query = "SELECT q FROM QueryBdyzResponseCont q WHERE q.insuredPeoples = :insuredPeoples"),
    @NamedQuery(name = "QueryBdyzResponseCont.findByResponseDate", query = "SELECT q FROM QueryBdyzResponseCont q WHERE q.responseDate = :responseDate"),
    @NamedQuery(name = "QueryBdyzResponseCont.findByGrpContNo", query = "SELECT q FROM QueryBdyzResponseCont q WHERE q.grpContNo = :grpContNo")})
public class QueryBdyzResponseCont implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected QueryBdyzResponseContPK queryBdyzResponseContPK;
    @Size(max = 2)
    @Column(name = "GROUP_FLAG")
    private String groupFlag;
    @Size(max = 50)
    @Column(name = "REAL_SIGN")
    private String realSign;
    @Size(max = 200)
    @Column(name = "DOWNLOAD_URL")
    private String downloadUrl;
    @Size(max = 200)
    @Column(name = "POLICY_TYPE")
    private String policyType;
    @Column(name = "START_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date startDate;
    @Size(max = 8)
    @Column(name = "START_TIME")
    private String startTime;
    @Column(name = "END_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date endDate;
    @Size(max = 8)
    @Column(name = "END_TIME")
    private String endTime;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "ALREADY_PAY")
    private BigDecimal alreadyPay;
    @Column(name = "PAY_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date payDate;
    @Column(name = "SUM_AMNT")
    private BigDecimal sumAmnt;
    @Size(max = 24)
    @Column(name = "APPNT_NO")
    private String appntNo;
    @Size(max = 24)
    @Column(name = "INSURED_NO")
    private String insuredNo;
    @Size(max = 10)
    @Column(name = "INSURED_PEOPLES")
    private String insuredPeoples;
    @Column(name = "RESPONSE_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date responseDate;
    @Size(max = 40)
    @Column(name = "GRP_CONT_NO")
    private String grpContNo;

    public QueryBdyzResponseCont() {
    }

    public QueryBdyzResponseCont(QueryBdyzResponseContPK queryBdyzResponseContPK) {
        this.queryBdyzResponseContPK = queryBdyzResponseContPK;
    }

    public QueryBdyzResponseCont(String batchno, String contNo) {
        this.queryBdyzResponseContPK = new QueryBdyzResponseContPK(batchno, contNo);
    }

    public QueryBdyzResponseContPK getQueryBdyzResponseContPK() {
        return queryBdyzResponseContPK;
    }

    public void setQueryBdyzResponseContPK(QueryBdyzResponseContPK queryBdyzResponseContPK) {
        this.queryBdyzResponseContPK = queryBdyzResponseContPK;
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

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public BigDecimal getAlreadyPay() {
        return alreadyPay;
    }

    public void setAlreadyPay(BigDecimal alreadyPay) {
        this.alreadyPay = alreadyPay;
    }

    public Date getPayDate() {
        return payDate;
    }

    public void setPayDate(Date payDate) {
        this.payDate = payDate;
    }

    public BigDecimal getSumAmnt() {
        return sumAmnt;
    }

    public void setSumAmnt(BigDecimal sumAmnt) {
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
        hash += (queryBdyzResponseContPK != null ? queryBdyzResponseContPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof QueryBdyzResponseCont)) {
            return false;
        }
        QueryBdyzResponseCont other = (QueryBdyzResponseCont) object;
        if ((this.queryBdyzResponseContPK == null && other.queryBdyzResponseContPK != null) || (this.queryBdyzResponseContPK != null && !this.queryBdyzResponseContPK.equals(other.queryBdyzResponseContPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.QueryBdyzResponseCont[ queryBdyzResponseContPK=" + queryBdyzResponseContPK + " ]";
    }
    
}
