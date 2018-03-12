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
@Table(name = "VIEWFIELD_TO_TABLEFIELD")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ViewfieldToTablefield.findAll", query = "SELECT v FROM ViewfieldToTablefield v"),
    @NamedQuery(name = "ViewfieldToTablefield.findByViewOwner", query = "SELECT v FROM ViewfieldToTablefield v WHERE v.viewfieldToTablefieldPK.viewOwner = :viewOwner"),
    @NamedQuery(name = "ViewfieldToTablefield.findByViewName", query = "SELECT v FROM ViewfieldToTablefield v WHERE v.viewfieldToTablefieldPK.viewName = :viewName"),
    @NamedQuery(name = "ViewfieldToTablefield.findByViewField", query = "SELECT v FROM ViewfieldToTablefield v WHERE v.viewfieldToTablefieldPK.viewField = :viewField"),
    @NamedQuery(name = "ViewfieldToTablefield.findByTableOwner", query = "SELECT v FROM ViewfieldToTablefield v WHERE v.viewfieldToTablefieldPK.tableOwner = :tableOwner"),
    @NamedQuery(name = "ViewfieldToTablefield.findByTableName", query = "SELECT v FROM ViewfieldToTablefield v WHERE v.viewfieldToTablefieldPK.tableName = :tableName"),
    @NamedQuery(name = "ViewfieldToTablefield.findByTableField", query = "SELECT v FROM ViewfieldToTablefield v WHERE v.viewfieldToTablefieldPK.tableField = :tableField"),
    @NamedQuery(name = "ViewfieldToTablefield.findByMakeDate", query = "SELECT v FROM ViewfieldToTablefield v WHERE v.makeDate = :makeDate"),
    @NamedQuery(name = "ViewfieldToTablefield.findByMakeOperator", query = "SELECT v FROM ViewfieldToTablefield v WHERE v.makeOperator = :makeOperator"),
    @NamedQuery(name = "ViewfieldToTablefield.findByModifyDate", query = "SELECT v FROM ViewfieldToTablefield v WHERE v.modifyDate = :modifyDate"),
    @NamedQuery(name = "ViewfieldToTablefield.findByModifyOperator", query = "SELECT v FROM ViewfieldToTablefield v WHERE v.modifyOperator = :modifyOperator")})
public class ViewfieldToTablefield implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected ViewfieldToTablefieldPK viewfieldToTablefieldPK;
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

    public ViewfieldToTablefield() {
    }

    public ViewfieldToTablefield(ViewfieldToTablefieldPK viewfieldToTablefieldPK) {
        this.viewfieldToTablefieldPK = viewfieldToTablefieldPK;
    }

    public ViewfieldToTablefield(String viewOwner, String viewName, String viewField, String tableOwner, String tableName, String tableField) {
        this.viewfieldToTablefieldPK = new ViewfieldToTablefieldPK(viewOwner, viewName, viewField, tableOwner, tableName, tableField);
    }

    public ViewfieldToTablefieldPK getViewfieldToTablefieldPK() {
        return viewfieldToTablefieldPK;
    }

    public void setViewfieldToTablefieldPK(ViewfieldToTablefieldPK viewfieldToTablefieldPK) {
        this.viewfieldToTablefieldPK = viewfieldToTablefieldPK;
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
        hash += (viewfieldToTablefieldPK != null ? viewfieldToTablefieldPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ViewfieldToTablefield)) {
            return false;
        }
        ViewfieldToTablefield other = (ViewfieldToTablefield) object;
        if ((this.viewfieldToTablefieldPK == null && other.viewfieldToTablefieldPK != null) || (this.viewfieldToTablefieldPK != null && !this.viewfieldToTablefieldPK.equals(other.viewfieldToTablefieldPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.ViewfieldToTablefield[ viewfieldToTablefieldPK=" + viewfieldToTablefieldPK + " ]";
    }
    
}
