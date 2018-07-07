package model.two;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import model.BdyzRequest;
import model.BdyzResponse;

@Generated(value="EclipseLink-2.6.2.v20151217-rNA", date="2016-09-14T15:11:02")
@StaticMetamodel(BdyzRequest.class)
public class BdyzRequest_ { 

    public static volatile SingularAttribute<BdyzRequest, String> batchno;
    public static volatile SingularAttribute<BdyzRequest, String> queryFlag;
    public static volatile SingularAttribute<BdyzRequest, String> insuredFlag;
    public static volatile SingularAttribute<BdyzRequest, String> idType;
    public static volatile SingularAttribute<BdyzRequest, String> verifyCode;
    public static volatile SingularAttribute<BdyzRequest, String> reqIp;
    public static volatile SingularAttribute<BdyzRequest, Date> reqDate;
    public static volatile SingularAttribute<BdyzRequest, String> reqState;
    public static volatile SingularAttribute<BdyzRequest, String> customerId;
    public static volatile SingularAttribute<BdyzRequest, String> policyNo;
    public static volatile SingularAttribute<BdyzRequest, BdyzResponse> bdyzResponse;

}