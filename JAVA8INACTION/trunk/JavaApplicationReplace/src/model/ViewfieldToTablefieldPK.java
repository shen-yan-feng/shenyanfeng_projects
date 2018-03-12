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
 * @author HQST100207
 */
@Embeddable
public class ViewfieldToTablefieldPK implements Serializable {

    @Basic(optional = false)
    @Column(name = "VIEW_OWNER")
    private String viewOwner;
    @Basic(optional = false)
    @Column(name = "VIEW_NAME")
    private String viewName;
    @Basic(optional = false)
    @Column(name = "VIEW_FIELD")
    private String viewField;
    @Basic(optional = false)
    @Column(name = "TABLE_OWNER")
    private String tableOwner;
    @Basic(optional = false)
    @Column(name = "TABLE_NAME")
    private String tableName;
    @Basic(optional = false)
    @Column(name = "TABLE_FIELD")
    private String tableField;

    public ViewfieldToTablefieldPK() {
    }

    public ViewfieldToTablefieldPK(String viewOwner, String viewName, String viewField, String tableOwner, String tableName, String tableField) {
        this.viewOwner = viewOwner;
        this.viewName = viewName;
        this.viewField = viewField;
        this.tableOwner = tableOwner;
        this.tableName = tableName;
        this.tableField = tableField;
    }

    public String getViewOwner() {
        return viewOwner;
    }

    public void setViewOwner(String viewOwner) {
        this.viewOwner = viewOwner;
    }

    public String getViewName() {
        return viewName;
    }

    public void setViewName(String viewName) {
        this.viewName = viewName;
    }

    public String getViewField() {
        return viewField;
    }

    public void setViewField(String viewField) {
        this.viewField = viewField;
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

    public String getTableField() {
        return tableField;
    }

    public void setTableField(String tableField) {
        this.tableField = tableField;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (viewOwner != null ? viewOwner.hashCode() : 0);
        hash += (viewName != null ? viewName.hashCode() : 0);
        hash += (viewField != null ? viewField.hashCode() : 0);
        hash += (tableOwner != null ? tableOwner.hashCode() : 0);
        hash += (tableName != null ? tableName.hashCode() : 0);
        hash += (tableField != null ? tableField.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ViewfieldToTablefieldPK)) {
            return false;
        }
        ViewfieldToTablefieldPK other = (ViewfieldToTablefieldPK) object;
        if ((this.viewOwner == null && other.viewOwner != null) || (this.viewOwner != null && !this.viewOwner.equals(other.viewOwner))) {
            return false;
        }
        if ((this.viewName == null && other.viewName != null) || (this.viewName != null && !this.viewName.equals(other.viewName))) {
            return false;
        }
        if ((this.viewField == null && other.viewField != null) || (this.viewField != null && !this.viewField.equals(other.viewField))) {
            return false;
        }
        if ((this.tableOwner == null && other.tableOwner != null) || (this.tableOwner != null && !this.tableOwner.equals(other.tableOwner))) {
            return false;
        }
        if ((this.tableName == null && other.tableName != null) || (this.tableName != null && !this.tableName.equals(other.tableName))) {
            return false;
        }
        if ((this.tableField == null && other.tableField != null) || (this.tableField != null && !this.tableField.equals(other.tableField))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.ViewfieldToTablefieldPK[ viewOwner=" + viewOwner + ", viewName=" + viewName + ", viewField=" + viewField + ", tableOwner=" + tableOwner + ", tableName=" + tableName + ", tableField=" + tableField + " ]";
    }
    
}
