/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import javax.xml.bind.annotation.adapters.XmlAdapter;

/**
 *
 * @author HQST100207
 */
public class DateYYYYMMDDHHAdapter extends XmlAdapter<String,Date> {
    private String format = "yyyy/MM/dd";
    private SimpleDateFormat simpleDateFormat = new SimpleDateFormat(format);

    @Override
    public Date unmarshal(String v) throws Exception {
        return simpleDateFormat.parse(v);
    }

    @Override
    public String marshal(Date v) throws Exception {
        return simpleDateFormat.format(v);
    }
    
}
