package model.two;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import model.EncryptBdyzResponsePol;
import model.EncryptBdyzResponsePolPK;

@Generated(value="EclipseLink-2.6.2.v20151217-rNA", date="2016-09-14T15:11:02")
@StaticMetamodel(EncryptBdyzResponsePol.class)
public class EncryptBdyzResponsePol_ { 

    public static volatile SingularAttribute<EncryptBdyzResponsePol, String> riskName;
    public static volatile SingularAttribute<EncryptBdyzResponsePol, EncryptBdyzResponsePolPK> encryptBdyzResponsePolPK;
    public static volatile SingularAttribute<EncryptBdyzResponsePol, String> riskCode;
    public static volatile SingularAttribute<EncryptBdyzResponsePol, String> insuredName;
    public static volatile SingularAttribute<EncryptBdyzResponsePol, String> prem;
    public static volatile SingularAttribute<EncryptBdyzResponsePol, Date> responseDate;
    public static volatile SingularAttribute<EncryptBdyzResponsePol, String> amnt;

}