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
public class BdyzResponsePolPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 480)
    @Column(name = "BATCHNO")
    private String batchno;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 480)
    @Column(name = "CONT_NO")
    private String contNo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 480)
    @Column(name = "INSURED_NO")
    private String insuredNo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 480)
    @Column(name = "POL_NO")
    private String polNo;

    public BdyzResponsePolPK() {
    }

    public BdyzResponsePolPK(String batchno, String contNo, String insuredNo, String polNo) {
        this.batchno = batchno;
        this.contNo = contNo;
        this.insuredNo = insuredNo;
        this.polNo = polNo;
    }

    public String getBatchno() {
        return batchno;
    }

    public void setBatchno(String batchno) {
        this.batchno = batchno;
    }

    public String getContNo() {
        return contNo;
    }

    public void setContNo(String contNo) {
        this.contNo = contNo;
    }

    public String getInsuredNo() {
        return insuredNo;
    }

    public void setInsuredNo(String insuredNo) {
        this.insuredNo = insuredNo;
    }

    public String getPolNo() {
        return polNo;
    }

    public void setPolNo(String polNo) {
        this.polNo = polNo;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (batchno != null ? batchno.hashCode() : 0);
        hash += (contNo != null ? contNo.hashCode() : 0);
        hash += (insuredNo != null ? insuredNo.hashCode() : 0);
        hash += (polNo != null ? polNo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof BdyzResponsePolPK)) {
            return false;
        }
        BdyzResponsePolPK other = (BdyzResponsePolPK) object;
        if ((this.batchno == null && other.batchno != null) || (this.batchno != null && !this.batchno.equals(other.batchno))) {
            return false;
        }
        if ((this.contNo == null && other.contNo != null) || (this.contNo != null && !this.contNo.equals(other.contNo))) {
            return false;
        }
        if ((this.insuredNo == null && other.insuredNo != null) || (this.insuredNo != null && !this.insuredNo.equals(other.insuredNo))) {
            return false;
        }
        if ((this.polNo == null && other.polNo != null) || (this.polNo != null && !this.polNo.equals(other.polNo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.BdyzResponsePolPK[ batchno=" + batchno + ", contNo=" + contNo + ", insuredNo=" + insuredNo + ", polNo=" + polNo + " ]";
    }
    
}
