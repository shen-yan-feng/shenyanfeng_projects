/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author HQST100207
 */
@Embeddable
public class QueryBdyzResponseAppntPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 150)
    @Column(name = "BATCHNO")
    private String batchno;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 40)
    @Column(name = "POLICY_NO")
    private String policyNo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 24)
    @Column(name = "APPNT_NO")
    private String appntNo;

    public QueryBdyzResponseAppntPK() {
    }

    public QueryBdyzResponseAppntPK(String batchno, String policyNo, String appntNo) {
        this.batchno = batchno;
        this.policyNo = policyNo;
        this.appntNo = appntNo;
    }

    public String getBatchno() {
        return batchno;
    }

    public void setBatchno(String batchno) {
        this.batchno = batchno;
    }

    public String getPolicyNo() {
        return policyNo;
    }

    public void setPolicyNo(String policyNo) {
        this.policyNo = policyNo;
    }

    public String getAppntNo() {
        return appntNo;
    }

    public void setAppntNo(String appntNo) {
        this.appntNo = appntNo;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (batchno != null ? batchno.hashCode() : 0);
        hash += (policyNo != null ? policyNo.hashCode() : 0);
        hash += (appntNo != null ? appntNo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof QueryBdyzResponseAppntPK)) {
            return false;
        }
        QueryBdyzResponseAppntPK other = (QueryBdyzResponseAppntPK) object;
        if ((this.batchno == null && other.batchno != null) || (this.batchno != null && !this.batchno.equals(other.batchno))) {
            return false;
        }
        if ((this.policyNo == null && other.policyNo != null) || (this.policyNo != null && !this.policyNo.equals(other.policyNo))) {
            return false;
        }
        if ((this.appntNo == null && other.appntNo != null) || (this.appntNo != null && !this.appntNo.equals(other.appntNo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.QueryBdyzResponseAppntPK[ batchno=" + batchno + ", policyNo=" + policyNo + ", appntNo=" + appntNo + " ]";
    }
    
}
