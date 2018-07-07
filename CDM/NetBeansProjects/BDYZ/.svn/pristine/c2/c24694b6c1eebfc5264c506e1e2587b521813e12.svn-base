/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import model.util.DateYYYYMMDDHHAdapter;
import org.eclipse.persistence.oxm.annotations.XmlMarshalNullRepresentation;
import org.eclipse.persistence.oxm.annotations.XmlNullPolicy;
import org.eclipse.persistence.oxm.annotations.XmlPath;

/**
 *
 * @author HQST100207
 */
@Entity
@Table(name = "BDYZ_RESPONSE_CONT")
@XmlRootElement
@XmlType(propOrder={"bdyzResponseContPK","groupFlag","realSign","downloadUrl","policyType","startDate","startTime","endDate","endTime","alreadyPay","payDate","sumAmnt","bdyzResponseAppntList","insuredPeoples","bdyzResponseInsuredList","","","","",""})
@NamedQueries({
    @NamedQuery(name = "BdyzResponseCont.findAll", query = "SELECT b FROM BdyzResponseCont b"),
    @NamedQuery(name = "BdyzResponseCont.findByBatchno", query = "SELECT b FROM BdyzResponseCont b WHERE b.bdyzResponseContPK.batchno = :batchno"),
    @NamedQuery(name = "BdyzResponseCont.findByContNo", query = "SELECT b FROM BdyzResponseCont b WHERE b.bdyzResponseContPK.contNo = :contNo"),
    @NamedQuery(name = "BdyzResponseCont.findByGroupFlag", query = "SELECT b FROM BdyzResponseCont b WHERE b.groupFlag = :groupFlag"),
    @NamedQuery(name = "BdyzResponseCont.findByRealSign", query = "SELECT b FROM BdyzResponseCont b WHERE b.realSign = :realSign"),
    @NamedQuery(name = "BdyzResponseCont.findByDownloadUrl", query = "SELECT b FROM BdyzResponseCont b WHERE b.downloadUrl = :downloadUrl"),
    @NamedQuery(name = "BdyzResponseCont.findByPolicyType", query = "SELECT b FROM BdyzResponseCont b WHERE b.policyType = :policyType"),
    @NamedQuery(name = "BdyzResponseCont.findByStartDate", query = "SELECT b FROM BdyzResponseCont b WHERE b.startDate = :startDate"),
    @NamedQuery(name = "BdyzResponseCont.findByStartTime", query = "SELECT b FROM BdyzResponseCont b WHERE b.startTime = :startTime"),
    @NamedQuery(name = "BdyzResponseCont.findByEndDate", query = "SELECT b FROM BdyzResponseCont b WHERE b.endDate = :endDate"),
    @NamedQuery(name = "BdyzResponseCont.findByEndTime", query = "SELECT b FROM BdyzResponseCont b WHERE b.endTime = :endTime"),
    @NamedQuery(name = "BdyzResponseCont.findByAlreadyPay", query = "SELECT b FROM BdyzResponseCont b WHERE b.alreadyPay = :alreadyPay"),
    @NamedQuery(name = "BdyzResponseCont.findByPayDate", query = "SELECT b FROM BdyzResponseCont b WHERE b.payDate = :payDate"),
    @NamedQuery(name = "BdyzResponseCont.findBySumAmnt", query = "SELECT b FROM BdyzResponseCont b WHERE b.sumAmnt = :sumAmnt"),
    @NamedQuery(name = "BdyzResponseCont.findByAppntNo", query = "SELECT b FROM BdyzResponseCont b WHERE b.appntNo = :appntNo"),
    @NamedQuery(name = "BdyzResponseCont.findByInsuredNo", query = "SELECT b FROM BdyzResponseCont b WHERE b.insuredNo = :insuredNo"),
    @NamedQuery(name = "BdyzResponseCont.findByInsuredPeoples", query = "SELECT b FROM BdyzResponseCont b WHERE b.insuredPeoples = :insuredPeoples"),
    @NamedQuery(name = "BdyzResponseCont.findByResponseDate", query = "SELECT b FROM BdyzResponseCont b WHERE b.responseDate = :responseDate"),
    @NamedQuery(name = "BdyzResponseCont.findByGrpContNo", query = "SELECT b FROM BdyzResponseCont b WHERE b.grpContNo = :grpContNo")})
public class BdyzResponseCont implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected BdyzResponseContPK bdyzResponseContPK;
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
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "bdyzResponseCont")
    private List<BdyzResponseAppnt> bdyzResponseAppntList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "bdyzResponseCont")
    private List<BdyzResponseInsured> bdyzResponseInsuredList;
    @JoinColumn(name = "BATCHNO", referencedColumnName = "BATCHNO", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private BdyzResponse bdyzResponse;

    public BdyzResponseCont() {
    }

    public BdyzResponseCont(BdyzResponseContPK bdyzResponseContPK) {
        this.bdyzResponseContPK = bdyzResponseContPK;
    }

    public BdyzResponseCont(String batchno, String contNo) {
        this.bdyzResponseContPK = new BdyzResponseContPK(batchno, contNo);
    }

    @XmlPath(".")
    public BdyzResponseContPK getBdyzResponseContPK() {
        return bdyzResponseContPK;
    }

    public void setBdyzResponseContPK(BdyzResponseContPK bdyzResponseContPK) {
        this.bdyzResponseContPK = bdyzResponseContPK;
    }

    @XmlElement(required=false,nillable=true)
    @XmlNullPolicy(emptyNodeRepresentsNull = true,nullRepresentationForXml = XmlMarshalNullRepresentation.EMPTY_NODE)
    public String getGroupFlag() {
        return groupFlag;
    }

    public void setGroupFlag(String groupFlag) {
        this.groupFlag = groupFlag;
    }

    @XmlElement(required=false,nillable=true)
    @XmlNullPolicy(emptyNodeRepresentsNull = true,nullRepresentationForXml = XmlMarshalNullRepresentation.EMPTY_NODE)
    public String getRealSign() {
        return realSign;
    }

    public void setRealSign(String realSign) {
        this.realSign = realSign;
    }

    @XmlElement(required=false,nillable=true)
    @XmlNullPolicy(emptyNodeRepresentsNull = true,nullRepresentationForXml = XmlMarshalNullRepresentation.EMPTY_NODE)
    public String getDownloadUrl() {
        return downloadUrl;
    }

    public void setDownloadUrl(String downloadUrl) {
        this.downloadUrl = downloadUrl;
    }

    @XmlElement(required=false,nillable=true)
    @XmlNullPolicy(emptyNodeRepresentsNull = true,nullRepresentationForXml = XmlMarshalNullRepresentation.EMPTY_NODE)
    public String getPolicyType() {
        return policyType;
    }

    public void setPolicyType(String policyType) {
        this.policyType = policyType;
    }

    @XmlElement(required=false,nillable=true)
    @XmlNullPolicy(emptyNodeRepresentsNull = true,nullRepresentationForXml = XmlMarshalNullRepresentation.EMPTY_NODE)
    //@XmlJavaTypeAdapter(value = DateYYYYMMDDHHAdapter.class)
    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    @XmlElement(required=false,nillable=true)
    @XmlNullPolicy(emptyNodeRepresentsNull = true,nullRepresentationForXml = XmlMarshalNullRepresentation.EMPTY_NODE)
    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    @XmlElement(required=false,nillable=true)
    @XmlNullPolicy(emptyNodeRepresentsNull = true,nullRepresentationForXml = XmlMarshalNullRepresentation.EMPTY_NODE)
    //@XmlJavaTypeAdapter(value = DateYYYYMMDDHHAdapter.class)
    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    @XmlElement(required=false,nillable=true)
    @XmlNullPolicy(emptyNodeRepresentsNull = true,nullRepresentationForXml = XmlMarshalNullRepresentation.EMPTY_NODE)
    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    @XmlElement(required=false,nillable=true)
    @XmlNullPolicy(emptyNodeRepresentsNull = true,nullRepresentationForXml = XmlMarshalNullRepresentation.EMPTY_NODE)
    public String getAlreadyPay() {
        return alreadyPay;
    }

    public void setAlreadyPay(String alreadyPay) {
        this.alreadyPay = alreadyPay;
    }

    @XmlElement(required=false,nillable=true)
    @XmlNullPolicy(emptyNodeRepresentsNull = true,nullRepresentationForXml = XmlMarshalNullRepresentation.EMPTY_NODE)
    //@XmlJavaTypeAdapter(value = DateYYYYMMDDHHAdapter.class)
    public String getPayDate() {
        return payDate;
    }

    public void setPayDate(String payDate) {
        this.payDate = payDate;
    }

    @XmlElement(required=false,nillable=true)
    @XmlNullPolicy(emptyNodeRepresentsNull = true,nullRepresentationForXml = XmlMarshalNullRepresentation.EMPTY_NODE)
    public String getSumAmnt() {
        return sumAmnt;
    }

    public void setSumAmnt(String sumAmnt) {
        this.sumAmnt = sumAmnt;
    }

    @XmlTransient
    public String getAppntNo() {
        return appntNo;
    }

    public void setAppntNo(String appntNo) {
        this.appntNo = appntNo;
    }

    @XmlTransient
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

    @XmlTransient
    public Date getResponseDate() {
        return responseDate;
    }

    public void setResponseDate(Date responseDate) {
        this.responseDate = responseDate;
    }

    @XmlTransient
    public String getGrpContNo() {
        return grpContNo;
    }

    public void setGrpContNo(String grpContNo) {
        this.grpContNo = grpContNo;
    }

    @XmlElement(name = "appntLevel")
    public List<BdyzResponseAppnt> getBdyzResponseAppntList() {
        return bdyzResponseAppntList;
    }

    public void setBdyzResponseAppntList(List<BdyzResponseAppnt> bdyzResponseAppntList) {
        this.bdyzResponseAppntList = bdyzResponseAppntList;
    }

    @XmlElement(name = "insuredLevel")
    public List<BdyzResponseInsured> getBdyzResponseInsuredList() {
        return bdyzResponseInsuredList;
    }

    public void setBdyzResponseInsuredList(List<BdyzResponseInsured> bdyzResponseInsuredList) {
        this.bdyzResponseInsuredList = bdyzResponseInsuredList;
    }

    @XmlTransient
    public BdyzResponse getBdyzResponse() {
        return bdyzResponse;
    }

    public void setBdyzResponse(BdyzResponse bdyzResponse) {
        this.bdyzResponse = bdyzResponse;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (bdyzResponseContPK != null ? bdyzResponseContPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof BdyzResponseCont)) {
            return false;
        }
        BdyzResponseCont other = (BdyzResponseCont) object;
        if ((this.bdyzResponseContPK == null && other.bdyzResponseContPK != null) || (this.bdyzResponseContPK != null && !this.bdyzResponseContPK.equals(other.bdyzResponseContPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.BdyzResponseCont[ bdyzResponseContPK=" + bdyzResponseContPK + " ]";
    }
    
}
