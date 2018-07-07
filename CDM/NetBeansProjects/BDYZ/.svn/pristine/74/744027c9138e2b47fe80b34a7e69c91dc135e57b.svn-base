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
public class QueryBdyzResponseInsuredPK implements Serializable {

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
    @Column(name = "INSURED_NO")
    private String insuredNo;

    public QueryBdyzResponseInsuredPK() {
    }

    public QueryBdyzResponseInsuredPK(String batchno, String policyNo, String insuredNo) {
        this.batchno = batchno;
        this.policyNo = policyNo;
        this.insuredNo = insuredNo;
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

    public String getInsuredNo() {
        return insuredNo;
    }

    public void setInsuredNo(String insuredNo) {
        this.insuredNo = insuredNo;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (batchno != null ? batchno.hashCode() : 0);
        hash += (policyNo != null ? policyNo.hashCode() : 0);
        hash += (insuredNo != null ? insuredNo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof QueryBdyzResponseInsuredPK)) {
            return false;
        }
        QueryBdyzResponseInsuredPK other = (QueryBdyzResponseInsuredPK) object;
        if ((this.batchno == null && other.batchno != null) || (this.batchno != null && !this.batchno.equals(other.batchno))) {
            return false;
        }
        if ((this.policyNo == null && other.policyNo != null) || (this.policyNo != null && !this.policyNo.equals(other.policyNo))) {
            return false;
        }
        if ((this.insuredNo == null && other.insuredNo != null) || (this.insuredNo != null && !this.insuredNo.equals(other.insuredNo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.QueryBdyzResponseInsuredPK[ batchno=" + batchno + ", policyNo=" + policyNo + ", insuredNo=" + insuredNo + " ]";
    }
    
}
