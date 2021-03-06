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

/**
 *
 * @author Administrator
 */
@Embeddable
public class ReportTablePK implements Serializable {

    @Basic(optional = false)
    @Column(name = "REPORT_NAME")
    private String reportName;
    @Basic(optional = false)
    @Column(name = "TABLE_OWNER")
    private String tableOwner;
    @Basic(optional = false)
    @Column(name = "TABLE_NAME")
    private String tableName;
    @Basic(optional = false)
    @Column(name = "FIELD_NAME")
    private String fieldName;

    public ReportTablePK() {
    }

    public ReportTablePK(String reportName, String tableOwner, String tableName, String fieldName) {
        this.reportName = reportName;
        this.tableOwner = tableOwner;
        this.tableName = tableName;
        this.fieldName = fieldName;
    }

    public String getReportName() {
        return reportName;
    }

    public void setReportName(String reportName) {
        this.reportName = reportName;
    }

    public String getTableOwner() {
        return tableOwner;
    }

    public void setTableOwner(String tableOwner) {
        this.tableOwner = tableOwner;
    }

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public String getFieldName() {
        return fieldName;
    }

    public void setFieldName(String fieldName) {
        this.fieldName = fieldName;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (reportName != null ? reportName.hashCode() : 0);
        hash += (tableOwner != null ? tableOwner.hashCode() : 0);
        hash += (tableName != null ? tableName.hashCode() : 0);
        hash += (fieldName != null ? fieldName.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ReportTablePK)) {
            return false;
        }
        ReportTablePK other = (ReportTablePK) object;
        if ((this.reportName == null && other.reportName != null) || (this.reportName != null && !this.reportName.equals(other.reportName))) {
            return false;
        }
        if ((this.tableOwner == null && other.tableOwner != null) || (this.tableOwner != null && !this.tableOwner.equals(other.tableOwner))) {
            return false;
        }
        if ((this.tableName == null && other.tableName != null) || (this.tableName != null && !this.tableName.equals(other.tableName))) {
            return false;
        }
        if ((this.fieldName == null && other.fieldName != null) || (this.fieldName != null && !this.fieldName.equals(other.fieldName))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.ReportTablePK[ reportName=" + reportName + ", tableOwner=" + tableOwner + ", tableName=" + tableName + ", fieldName=" + fieldName + " ]";
    }
    
}
