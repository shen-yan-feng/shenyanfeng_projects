package model.one;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import model.BdyzResponseInsured;
import model.BdyzResponsePol;
import model.BdyzResponsePolPK;

@Generated(value="EclipseLink-2.6.2.v20151217-rNA", date="2016-09-14T15:11:02")
@StaticMetamodel(BdyzResponsePol.class)
public class BdyzResponsePol_ { 

    public static volatile SingularAttribute<BdyzResponsePol, String> riskName;
    public static volatile SingularAttribute<BdyzResponsePol, BdyzResponseInsured> bdyzResponseInsured;
    public static volatile SingularAttribute<BdyzResponsePol, BdyzResponsePolPK> bdyzResponsePolPK;
    public static volatile SingularAttribute<BdyzResponsePol, String> riskCode;
    public static volatile SingularAttribute<BdyzResponsePol, String> insuredName;
    public static volatile SingularAttribute<BdyzResponsePol, String> prem;
    public static volatile SingularAttribute<BdyzResponsePol, Date> responseDate;
    public static volatile SingularAttribute<BdyzResponsePol, String> amnt;

}