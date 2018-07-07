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
public class QueryBdyzResponseContPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 150)
    @Column(name = "BATCHNO")
    private String batchno;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 40)
    @Column(name = "CONT_NO")
    private String contNo;

    public QueryBdyzResponseContPK() {
    }

    public QueryBdyzResponseContPK(String batchno, String contNo) {
        this.batchno = batchno;
        this.contNo = contNo;
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (batchno != null ? batchno.hashCode() : 0);
        hash += (contNo != null ? contNo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof QueryBdyzResponseContPK)) {
            return false;
        }
        QueryBdyzResponseContPK other = (QueryBdyzResponseContPK) object;
        if ((this.batchno == null && other.batchno != null) || (this.batchno != null && !this.batchno.equals(other.batchno))) {
            return false;
        }
        if ((this.contNo == null && other.contNo != null) || (this.contNo != null && !this.contNo.equals(other.contNo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.QueryBdyzResponseContPK[ batchno=" + batchno + ", contNo=" + contNo + " ]";
    }
    
}
