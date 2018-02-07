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
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author HQST100207
 */
@Entity
@Table(name = "REPORT_TABLE")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ReportTable.findAll", query = "SELECT r FROM ReportTable r"),
    @NamedQuery(name = "ReportTable.findByReportName", query = "SELECT r FROM ReportTable r WHERE r.reportTablePK.reportName = :reportName"),
    @NamedQuery(name = "ReportTable.findByTableName", query = "SELECT r FROM ReportTable r WHERE r.reportTablePK.tableName = :tableName"),
    @NamedQuery(name = "ReportTable.findByFieldName", query = "SELECT r FROM ReportTable r WHERE r.reportTablePK.fieldName = :fieldName"),
    @NamedQuery(name = "ReportTable.findByInsertDate", query = "SELECT r FROM ReportTable r WHERE r.insertDate = :insertDate"),
    @NamedQuery(name = "ReportTable.findByInsertOperator", query = "SELECT r FROM ReportTable r WHERE r.insertOperator = :insertOperator"),
    @NamedQuery(name = "ReportTable.findByModifyDate", query = "SELECT r FROM ReportTable r WHERE r.modifyDate = :modifyDate"),
    @NamedQuery(name = "ReportTable.findByModifyOperator", query = "SELECT r FROM ReportTable r WHERE r.modifyOperator = :modifyOperator")})
public class ReportTable implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected ReportTablePK reportTablePK;
    @Column(name = "INSERT_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date insertDate;
    @Column(name = "INSERT_OPERATOR")
    private String insertOperator;
    @Column(name = "MODIFY_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date modifyDate;
    @Column(name = "MODIFY_OPERATOR")
    private String modifyOperator;

    public ReportTable() {
    }

    public ReportTable(ReportTablePK reportTablePK) {
        this.reportTablePK = reportTablePK;
    }

    public ReportTable(String reportName, String tableName, String fieldName) {
        this.reportTablePK = new ReportTablePK(reportName, tableName, fieldName);
    }

    public ReportTablePK getReportTablePK() {
        return reportTablePK;
    }

    public void setReportTablePK(ReportTablePK reportTablePK) {
        this.reportTablePK = reportTablePK;
    }

    public Date getInsertDate() {
        return insertDate;
    }

    public void setInsertDate(Date insertDate) {
        this.insertDate = insertDate;
    }

    public String getInsertOperator() {
        return insertOperator;
    }

    public void setInsertOperator(String insertOperator) {
        this.insertOperator = insertOperator;
    }

    public Date getModifyDate() {
        return modifyDate;
    }

    public void setModifyDate(Date modifyDate) {
        this.modifyDate = modifyDate;
    }

    public String getModifyOperator() {
        return modifyOperator;
    }

    public void setModifyOperator(String modifyOperator) {
        this.modifyOperator = modifyOperator;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (reportTablePK != null ? reportTablePK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ReportTable)) {
            return false;
        }
        ReportTable other = (ReportTable) object;
        if ((this.reportTablePK == null && other.reportTablePK != null) || (this.reportTablePK != null && !this.reportTablePK.equals(other.reportTablePK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.ReportTable[ reportTablePK=" + reportTablePK + " ]";
    }
    
}
