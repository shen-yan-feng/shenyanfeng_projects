/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author HQST100207
 */
@Entity
@Table(name = "QUERY_BDYZ_RESPONSE")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "QueryBdyzResponse.findAll", query = "SELECT q FROM QueryBdyzResponse q"),
    @NamedQuery(name = "QueryBdyzResponse.findByBatchno", query = "SELECT q FROM QueryBdyzResponse q WHERE q.batchno = :batchno"),
    @NamedQuery(name = "QueryBdyzResponse.findByErrorCode", query = "SELECT q FROM QueryBdyzResponse q WHERE q.errorCode = :errorCode"),
    @NamedQuery(name = "QueryBdyzResponse.findByErrorReason", query = "SELECT q FROM QueryBdyzResponse q WHERE q.errorReason = :errorReason"),
    @NamedQuery(name = "QueryBdyzResponse.findByResponseDate", query = "SELECT q FROM QueryBdyzResponse q WHERE q.responseDate = :responseDate")})
public class QueryBdyzResponse implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 150)
    @Column(name = "BATCHNO")
    private String batchno;
    @Size(max = 2)
    @Column(name = "ERROR_CODE")
    private String errorCode;
    @Size(max = 200)
    @Column(name = "ERROR_REASON")
    private String errorReason;
    @Column(name = "RESPONSE_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date responseDate;

    public QueryBdyzResponse() {
    }

    public QueryBdyzResponse(String batchno) {
        this.batchno = batchno;
    }

    public String getBatchno() {
        return batchno;
    }

    public void setBatchno(String batchno) {
        this.batchno = batchno;
    }

    public String getErrorCode() {
        return errorCode;
    }

    public void setErrorCode(String errorCode) {
        this.errorCode = errorCode;
    }

    public String getErrorReason() {
        return errorReason;
    }

    public void setErrorReason(String errorReason) {
        this.errorReason = errorReason;
    }

    public Date getResponseDate() {
        return responseDate;
    }

    public void setResponseDate(Date responseDate) {
        this.responseDate = responseDate;
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
        if (!(object instanceof QueryBdyzResponse)) {
            return false;
        }
        QueryBdyzResponse other = (QueryBdyzResponse) object;
        if ((this.batchno == null && other.batchno != null) || (this.batchno != null && !this.batchno.equals(other.batchno))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.QueryBdyzResponse[ batchno=" + batchno + " ]";
    }
    
}
