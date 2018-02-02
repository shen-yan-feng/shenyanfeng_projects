/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import javax.ejb.EJB;
import business.Deal;

/**
 *
 * @author HQST100207
 */
@Named(value = "reportTableController")
@SessionScoped
public class ReportTableController implements Serializable {
    
    @EJB
    Deal deal;

    /**
     * Creates a new instance of ReportTableController
     */
    public ReportTableController() {
    }
    
    public void deal(){
        deal.deal();
    }
    
}
