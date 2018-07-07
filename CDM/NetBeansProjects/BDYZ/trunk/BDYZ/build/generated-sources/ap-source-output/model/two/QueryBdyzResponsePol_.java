package model.two;

import java.math.BigDecimal;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import model.QueryBdyzResponsePol;
import model.QueryBdyzResponsePolPK;

@Generated(value="EclipseLink-2.6.2.v20151217-rNA", date="2016-09-14T15:11:02")
@StaticMetamodel(QueryBdyzResponsePol.class)
public class QueryBdyzResponsePol_ { 

    public static volatile SingularAttribute<QueryBdyzResponsePol, String> riskName;
    public static volatile SingularAttribute<QueryBdyzResponsePol, QueryBdyzResponsePolPK> queryBdyzResponsePolPK;
    public static volatile SingularAttribute<QueryBdyzResponsePol, String> riskCode;
    public static volatile SingularAttribute<QueryBdyzResponsePol, String> insuredName;
    public static volatile SingularAttribute<QueryBdyzResponsePol, BigDecimal> prem;
    public static volatile SingularAttribute<QueryBdyzResponsePol, Date> responseDate;
    public static volatile SingularAttribute<QueryBdyzResponsePol, BigDecimal> amnt;

}