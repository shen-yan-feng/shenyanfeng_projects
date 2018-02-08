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
 * @author Administrator
 */
@Entity
@Table(name = "REPORT_TABLE")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ReportTable.findAll", query = "SELECT r FROM ReportTable r"),
    @NamedQuery(name = "ReportTable.findByReportName", query = "SELECT r FROM ReportTable r WHERE r.reportTablePK.reportName = :reportName"),
    @NamedQuery(name = "ReportTable.findByTableOwner", query = "SELECT r FROM ReportTable r WHERE r.reportTablePK.tableOwner = :tableOwner"),
    @NamedQuery(name = "ReportTable.findByTableName", query = "SELECT r FROM ReportTable r WHERE r.reportTablePK.tableName = :tableName"),
    @NamedQuery(name = "ReportTable.findByFieldName", query = "SELECT r FROM ReportTable r WHERE r.reportTablePK.fieldName = :fieldName"),
    @NamedQuery(name = "ReportTable.findByMakeDate", query = "SELECT r FROM ReportTable r WHERE r.makeDate = :makeDate"),
    @NamedQuery(name = "ReportTable.findByMakeOperator", query = "SELECT r FROM ReportTable r WHERE r.makeOperator = :makeOperator"),
    @NamedQuery(name = "ReportTable.findByModifyDate", query = "SELECT r FROM ReportTable r WHERE r.modifyDate = :modifyDate"),
    @NamedQuery(name = "ReportTable.findByModifyOperator", query = "SELECT r FROM ReportTable r WHERE r.modifyOperator = :modifyOperator")})
public class ReportTable implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected ReportTablePK reportTablePK;
    @Column(name = "MAKE_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date makeDate;
    @Column(name = "MAKE_OPERATOR")
    private String makeOperator;
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

    public ReportTable(String reportName, String tableOwner, String tableName, String fieldName) {
        this.reportTablePK = new ReportTablePK(reportName, tableOwner, tableName, fieldName);
    }

    public ReportTablePK getReportTablePK() {
        return reportTablePK;
    }

    public void setReportTablePK(ReportTablePK reportTablePK) {
        this.reportTablePK = reportTablePK;
    }

    public Date getMakeDate() {
        return makeDate;
    }

    public void setMakeDate(Date makeDate) {
        this.makeDate = makeDate;
    }

    public String getMakeOperator() {
        return makeOperator;
    }

    public void setMakeOperator(String makeOperator) {
        this.makeOperator = makeOperator;
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
