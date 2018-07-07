package model.one;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import model.EncryptBdyzResponse;

@Generated(value="EclipseLink-2.6.2.v20151217-rNA", date="2016-09-14T15:11:02")
@StaticMetamodel(EncryptBdyzResponse.class)
public class EncryptBdyzResponse_ { 

    public static volatile SingularAttribute<EncryptBdyzResponse, String> batchno;
    public static volatile SingularAttribute<EncryptBdyzResponse, String> errorReason;
    public static volatile SingularAttribute<EncryptBdyzResponse, String> errorCode;
    public static volatile SingularAttribute<EncryptBdyzResponse, Date> responseDate;

}