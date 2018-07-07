/*EncryptBdyzResponsePolFacade
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.ejb.Stateless;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;

import model.BdyzRequest;
import model.BdyzResponse;
import model.BdyzResponseCont;
import model.QueryBdyzResponse;
import model.QueryBdyzResponseCont;
import model.QueryBdyzResponseAppnt;
import model.QueryBdyzResponseInsured;
import model.QueryBdyzResponsePol;
import model.EncryptBdyzResponse;
import model.EncryptBdyzResponseCont;
import model.EncryptBdyzResponseAppnt;
import model.EncryptBdyzResponseInsured;
import model.EncryptBdyzResponsePol;
import facade.BdyzRequestFacade;
import facade.BdyzResponseFacade;
import facade.BdyzResponseContFacade;
import facade.BdyzResponseAppntFacade;
import facade.BdyzResponseInsuredFacade;
import facade.BdyzResponsePolFacade;
import facade.QueryBdyzResponseFacade;
import facade.QueryBdyzResponseContFacade;
import facade.QueryBdyzResponseAppntFacade;
import facade.QueryBdyzResponseInsuredFacade;
import facade.QueryBdyzResponsePolFacade;
import facade.EncryptBdyzResponseFacade;
import facade.EncryptBdyzResponseContFacade;
import facade.EncryptBdyzResponseAppntFacade;
import facade.EncryptBdyzResponseInsuredFacade;
import facade.EncryptBdyzResponsePolFacade;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.security.InvalidKeyException;
import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;
import javax.ejb.EJB;
import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.xml.bind.Marshaller;
import javax.crypto.KeyGenerator;
import java.security.SecureRandom;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import javax.crypto.Cipher;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import model.EncryptBdyzResponseAppntPK;
import model.EncryptBdyzResponseContPK;
import model.EncryptBdyzResponseInsuredPK;
import model.EncryptBdyzResponsePolPK;

import util.MessageUtil;
import util.LoggingInterceptor;

/**
 *
 * @author HQST100207
 */
@WebService(serviceName = "BdyzQuery")
@Stateless()
public class BdyzQuery {

    private String requestXml;//出入的请求报文
    private BdyzRequest bdyzRequestOriginal = null;//请求实体类,内容是加密的
    private BdyzRequest bdyzRequest = null;//请求实体类
    private BdyzResponse bdyzResponseOriginal = null;//response未加密时的实体类
    private BdyzResponse bdyzResponse = null;//response实体类
    private QueryBdyzResponse queryBdyzResponse = null;//存储查询结果的中间返回基本实体类
    private List<QueryBdyzResponseCont> queryBdyzResponseContList = null;//存储查询结果的中间返回保单实体类
    private List<QueryBdyzResponseAppnt> queryBdyzResponseAppntList = null;//存储查询结果的中间返回投保人实体类
    private List<QueryBdyzResponseInsured> queryBdyzResponseInsuredList = null;//存储查询结果的中间返回被保人实体类
    private List<QueryBdyzResponsePol> queryBdyzResponsePolList = null;//存储查询结果的中间返回险种实体类
    private String policyNoInVerifyCode = null;
    private String idTypeInVerifyCode = null;
    private String customerIdInVerifyCode = null;
    private String errorCode = null;//RESPONSE时的错误代码
    private String errorReason = null;//RESPONSE时的错误原因
    private String responseXmlFileName = null;//存储response xml的XML文件
    private String key = "BDYZ_ZBX";
    private String responseXml = null;
    private boolean writeFileFlag = false;
    private boolean fileToDbFlag = false;
    private boolean verifyRequestTruthFlag = false;
    private boolean fetchResponseBasicFlag = false;
    private boolean fetchIndContFlag = false;
    private boolean fetchGrpContFlag = false;
    private boolean fetchIndAppntFlag = false;
    private boolean fetchGrpAppntFlag = false;
    private boolean fetchIndInsuredFlag = false;
    private boolean fetchIndPolFlag = false;
    private boolean copyToResponseFlag = false;
    private boolean copyToResponseContFlag = false;
    private boolean copyToResponseAppntFlag = false;
    private boolean copyToResponseInsuredFlag = false;
    private boolean copyToResponsePolFlag = false;
    private boolean encryptBdyzResponseFlag = false;
    private boolean encryptBdyzResponseContFlag = false;
    private boolean encryptBdyzResponseAppntFlag = false;
    private boolean encryptBdyzResponseInsuredFlag = false;
    private boolean encryptBdyzResponsePolFlag = false;
    private boolean marshalToXmlFlag = false;
    private boolean getResponseXmlFlag = false;

    @EJB
    private BdyzRequestFacade bdyzRequestFacade;
    @EJB
    private BdyzResponseFacade bdyzResponseFacade;
    @EJB
    private BdyzResponseContFacade bdyzResponseContFacade;
    @EJB
    private BdyzResponseAppntFacade bdyzResponseAppntFacade;
    @EJB
    private BdyzResponseInsuredFacade bdyzResponseInsuredFacade;
    @EJB
    private BdyzResponsePolFacade bdyzResponsePolFacade;
    @EJB
    private QueryBdyzResponseFacade queryBdyzResponseFacade;
    @EJB
    private QueryBdyzResponseContFacade queryBdyzResponseContFacade;
    @EJB
    private QueryBdyzResponseAppntFacade queryBdyzResponseAppntFacade;
    @EJB
    private QueryBdyzResponseInsuredFacade queryBdyzResponseInsuredFacade;
    @EJB
    private QueryBdyzResponsePolFacade queryBdyzResponsePolFacade;
    @EJB
    private EncryptBdyzResponseFacade encryptBdyzResponseFacade;
    @EJB
    private EncryptBdyzResponseContFacade encryptBdyzResponseContFacade;
    @EJB
    private EncryptBdyzResponseAppntFacade encryptBdyzResponseAppntFacade;
    @EJB
    private EncryptBdyzResponseInsuredFacade encryptBdyzResponseInsuredFacade;
    @EJB
    private EncryptBdyzResponsePolFacade encryptBdyzResponsePolFacade;

    @PersistenceContext(unitName = "BDYZPU")
    private EntityManager em01;

    @PersistenceContext(unitName = "BDYZPU2")
    private EntityManager em02;

    /**
     * 个险投保人被保人查询 团险被保人查询 保单 SQL
     */
    private static final String sqlIndCont = "select\n"
            + "? BATCHNO, \n"
            + " a.contno CONT_NO,\n"
            + " case\n"
            + "   when a.conttype = '1' then\n"
            + "    '02'\n"
            + "   when a.conttype = '2' then\n"
            + "    '01'\n"
            + " end GROUP_FLAG,\n"
            + " (select b.codealias\n"
            + "    from lis.ldcode b\n"
            + "   where b.codetype = 'contstate'\n"
            + "     and b.code = a.state) REAL_SIGN,\n"
            + " '' DOWNLOAD_URL,\n"
            + " (select case\n"
            + "           when lm.risktype = 'L' then\n"
            + "            '寿险'\n"
            + "           when lm.risktype = 'A' then\n"
            + "            '意外险'\n"
            + "           when lm.risktype = 'H' then\n"
            + "            '健康险'\n"
            + "         END\n"
            + "    from lis.lmriskapp lm\n"
            + "   where lm.riskcode = (select min(lcp.riskcode)\n"
            + "                          from lis.lcpol lcp\n"
            + "                         where lcp.contno = a.contno\n"
            + "                           and lcp.polno = lcp.mainpolno)) POLICY_TYPE,\n"
            + " a.cvalidate START_DATE,\n"
            + " '24:00:00' START_TIME,\n"
            + " (select min(c.enddate) from lis.lcpol c where c.contno = a.contno and c.polno = c.mainpolno and c.appflag='1') END_DATE,\n"
            + " '24:00:00' END_TIME,\n"
            + " (select sum(d.sumactupaymoney)\n"
            + "    from lis.ljapayperson d\n"
            + "   where d.contno = a.contno) ALREADY_PAY,\n"
            + " (select min(case when c.payintv = '0' then c.cvalidate else c.paytodate end) \n"
            + "    from lis.lcpol c\n"
            + "   where c.contno = a.contno\n"
            + "     and c.polno = c.mainpolno\n"
            + "     and c.appflag = '1'\n"
            + "     ) PAY_DATE,\n"
            + " (select sum(c.amnt)\n"
            + "    from lis.lcpol c\n"
            + "   where c.contno = a.contno\n"
            + "     and c.polno = c.mainpolno\n"
            + "     and c.appflag = '1') SUM_AMNT,\n"
            + " a.appntno APPNT_NO,\n"
            + " a.insuredno INSURED_NO,\n"
            + " (select count(distinct lc1.insuredno)\n"
            + "    from lis.lccont lc1\n"
            + "   where lc1.contno = a.contno) INSURED_PEOPLES,\n"
            + " sysdate RESPONSE_DATE,\n"
            + " a.grpcontno GRP_CONT_NO\n"
            + "  from lis.lccont a\n"
            + " where a.contno = ?";

    /**
     * 团险投保人查询 保单 SQL
     */
    private static final String sqlGrpCont = "select\n"
            + " ? BATCHNO,\n"
            + " a.grpcontno CONT_NO,\n"
            + " '01' GROUP_FLAG,\n"
            + " (select b.codealias\n"
            + "    From lis.ldcode b\n"
            + "   where b.codetype = 'grpcontstate'\n"
            + "     and b.code = a.state) REAL_SIGN,\n"
            + " '' DOWNLOAD_URL,\n"
            + " (select replace(wm_concat(distinct case\n"
            + "                             when lm.risktype = 'L' then\n"
            + "                              '寿险'\n"
            + "                             when lm.risktype = 'A' then\n"
            + "                              '意外险'\n"
            + "                             when lm.risktype = 'H' then\n"
            + "                              '健康险'\n"
            + "                           END),\n"
            + "                 ',',\n"
            + "                 '_')\n"
            + "    from lis.lcpol t, lis.lmriskapp lm\n"
            + "   where t.grpcontno = a.grpcontno\n"
            + "     and t.polno = t.mainpolno\n"
            + "     and lm.riskcode = t.riskcode) POLICY_TYPE,\n"
            + " a.cvalidate START_DATE,\n"
            + " '24:00:00' START_TIME,\n"
            + " (select distinct max(least(nvl((select min(startdate)\n"
            + "                                  from lis.lcgrpcontstate e\n"
            + "                                 where e.statetype = 'Terminate'\n"
            + "                                   and e.state = '1'\n"
            + "                                   and e.grpcontno = f.grpcontno\n"
            + "                                   and e.grppolno = f.grppolno),\n"
            + "                                date '9999-12-31'),\n"
            + "                            (select max(g.enddate)\n"
            + "                               from lis.lcpol g\n"
            + "                              where g.grppolno = f.grppolno\n"
            + "                                and g.riskcode = f.riskcode)))\n"
            + "    from lis.lcgrppol f\n"
            + "   where f.grpcontno = a.grpcontno) END_DATE,\n"
            + " '24:00:00' END_TIME,\n"
            + " (select sum(d.sumactupaymoney)\n"
            + "    from lis.ljapayperson d\n"
            + "   where d.grpcontno = a.grpcontno) ALREADY_PAY,\n"
            + " (select min(case\n" 
            + "               when c.payintv = '0' then\n" 
            + "                c.cvalidate\n"
            + "               else\n"
            + "                c.paytodate\n"
            + "             end)\n"
            + "    from lis.lcgrppol c\n"
            + "   where c.grpcontno = a.grpcontno\n"
            + "     and c.grppolno = c.grppolno\n" 
            + "     and c.appflag = '1') PAY_DATE,"
            + " (select sum(c.amnt)\n"
            + "    from lis.lcpol c\n"
            + "   where c.grpcontno = a.grpcontno\n"
            + "     and c.appflag = '1') SUM_AMNT,\n"
            + " a.appntno APPNT_NO,\n"
            + " null INSURED_NO,\n"
            + "  (select count(distinct lc1.insuredno)\n"
            + "    from lis.lccont lc1\n"
            + "   where lc1.grpcontno = a.grpcontno and (lc1.state like '1%' or lc1.state like '2%')) INSURED_PEOPLES,\n"
            + " sysdate RESPONSE_DATE,\n"
            + " a.grpcontno GRP_CONT_NO\n"
            + "  from lis.lcgrpcont a\n"
            + " where a.grpcontno = ?";//用这个号码试一下 GP78000000003793

    /**
     * 个险 投保人 SQL
     */
    private static final String sqlIndAppnt = "select\n"
            + "  ? BATCHNO,\n"
            + "  a.contno POLICY_NO,\n"
            + "  a.appntno APPNT_NO,\n"
            + "  a.APPNTNAME APPNT_NAME,\n"
            + "  sysdate RESPONSE_DATE\n"
            + "FROM LIS.LCCONT A\n"
            + "where a.contno = ? ";

    /**
     * 团险 投保人 SQL
     */
    private static final String sqlGrpAppnt = "select \n"
            + "  ? BATCHNO,\n"
            + "  a.grpcontno POLICY_NO,\n"
            + "  a.appntno APPNT_NO,\n"
            + "  a.grpname APPNT_NAME,\n"
            + "  sysdate RESPONSE_DATE\n"
            + "from lis.lcgrpcont a\n"
            + "where a.grpcontno = ?";

    /**
     * 个险 被保人 SQL
     */
    private static final String sqlIndInsured = "select \n"
            + "  ? BATCHNO,\n"
            + "  a.contno POLICY_NO,\n"
            + "  a.insuredno INSURED_NO,\n"
            + "  a.insuredname INSURED_NAME,\n"
            + "  sysdate RESPONSE_DATE\n"
            + "from lis.lccont a\n"
            + "where a.contno = ?";

    /**
     * 个险 险种 SQL
     */
    private static final String sqlIndPol = "select\n"
            + "  ? BATCHNO,\n"
            + "  a.contno POLICY_NO,\n"
            + "  a.insuredno INSURED_NO,\n"
            + "  a.insuredname INSURED_NAME,\n"
            + "  a.polno POL_NO,\n"
            + "  a.riskcode RISK_CODE,\n"
            + "  (select b.riskname from lis.lmrisk b where b.riskcode = a.riskcode) RISK_NAME,\n"
            + "  a.amnt AMNT,\n"
            + "  a.prem PREM,\n"
            + "  sysdate RESPONSE_DATE\n"
            + "from lis.lcpol a\n"
            + "where a.contno = ?\n"
            + "and a.appflag = '1'";

    /**
     * 把数据导入 bdyz_response 表的SQL
     */
    private static final String sqlResponse = "insert into bdyz_response\n"
            + "select * from encrypt_bdyz_response t\n"
            + "where t.batchno = ?";

    /**
     * 把数据导入 bdyz_response_cont 表的SQL
     */
    private static final String sqlResponseCont = "insert into bdyz_response_cont\n"
            + "select * from encrypt_bdyz_response_cont t\n"
            + "where t.batchno = ?";

    /**
     * 把数据导入 bdyz_response_appnt 表的SQL
     */
    private static final String sqlResponseAppnt = "insert into bdyz_response_appnt\n"
            + "select * from encrypt_bdyz_response_appnt t\n"
            + "where t.batchno = ?";

    /**
     * 把数据导入 bdyz_response_insured 表的SQL
     */
    private static final String sqlResponseInsured = "insert into bdyz_response_insured\n"
            + "select * from encrypt_bdyz_response_insured t\n"
            + "where t.batchno = ?";

    /**
     * 把数据导入 bdyz_response_pol 表的SQL
     */
    private static final String sqlResponsePol = "insert into bdyz_response_pol\n"
            + "select * from encrypt_bdyz_response_pol t\n"
            + "where t.batchno = ?";

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "query")
    public String query(@WebParam(name = "name") String reqXml) {
        System.out.println("entering query," + (new java.util.Date()).toString());

        requestXml = reqXml;
        /**
         * 把传入的XML内容，写入到本地磁盘的XML文件中，字段是加密的
         */
        this.writeFileFlag = writeFile();//注意，这个出错时，batchno还没生成，这个地方的错误在response中没有记录。这一块还得在看。
        if (this.writeFileFlag) {
            /**
             * 把写在本地文件中的请求信息解密，解密后的信息，写进数据库，同时放在this.bdyzRequest对象中
             */
            this.fileToDbFlag = fileToDb();
            if (this.fileToDbFlag) {
                /**
                 * 对this.bdyzRequest对象中的请求的内容进行判断
                 * 获取验证码中的参数值，和实际的参数值进行比对，看是否一致，如果不一致，返回错误代码：02，错误描述为：参数核对时发现数据不一致，可能信息被篡改！
                 */
                this.verifyRequestTruthFlag = verifyRequestTruth();
                if (this.verifyRequestTruthFlag) {
                    if ("02".equalsIgnoreCase(this.bdyzRequest.getQueryFlag()) || (("01".equalsIgnoreCase(this.bdyzRequest.getQueryFlag())) && ("01".equalsIgnoreCase(this.bdyzRequest.getInsuredFlag())))) {
                        /**
                         * 对于查询，分2类处理 第1类，包含 个险保单查询（包括投、被保人查询）、团险保单被保人查询 第2类，包含
                         * 团险保单投保人查询
                         */

                        //第1类，包含 个险保单查询（包括投、被保人查询）、团险保单被保人查询
                        /**
                         * 查保单信息，返回保单类
                         */
                        this.fetchIndContFlag = fetchIndCont();
                        if (this.fetchIndContFlag) { //注意，条件本身，就是对保单的查询及写入，同时兼具了判断的性质

                            /**
                             * 查投保人信息，返回投保人类
                             */
                            this.fetchIndAppntFlag = fetchIndAppnt();
                            if (this.fetchIndAppntFlag) {
                                /**
                                 * 查被保人信息，返回被保人类
                                 */
                                this.fetchIndInsuredFlag = fetchIndInsured();
                                if (this.fetchIndInsuredFlag) {
                                    /**
                                     * 查险种信息，返回险种类
                                     */
                                    this.fetchIndPolFlag = fetchIndPol();
                                    if (this.fetchIndPolFlag) {
                                        this.errorCode = "";//错误代码为空
                                        this.errorReason = "";//错误原因为空
                                        transformIndividualAndGrpIndData();
                                    } else {
                                        //险种信息查询错误
                                        //告知没有符合查询条件的保单数据
                                        transformBasicData();
                                    }

                                } else {
                                    //被人认信息查询错误
                                    //告知没有符合条件的保单数据
                                    transformBasicData();
                                }

                            } else {
                                //投保人信息查询错误
                                //返回基本信息，告知无符合条件的保单数据
                                transformBasicData();
                            }

                        } else {
                            /**
                             * 如果查不到保单（投保人、被保人人、险种，都不判断，只判断保单是否存在），返回促我代码：03，促我描述：无符合查询条件的保单数据。
                             */
                            this.errorCode = "03";
                            //this.errorReason = MessageUtil.getMessage("NoSatisfiedData"); 这个报空指针错误，得查。
                            this.errorReason = "无符合查询条件的保单数据，请确认输入信息的正确性或拨打该公司的客服电话400-816-1688，再次查询确认！";
                            transformBasicData();
                        }
                    } else if (("01".equalsIgnoreCase(this.bdyzRequest.getQueryFlag())) && ("02".equalsIgnoreCase(this.bdyzRequest.getInsuredFlag()))) {
                        //第2类，包含 团险保单投保人查询

                        /**
                         * 团险 投保人 查询 保单信息 找到信息，返回true，找不到信息，返回false。
                         */
                        this.fetchGrpContFlag = fetchGrpCont();
                        if (this.fetchGrpContFlag) {

                            /**
                             * 查投保人信息，返回投保人类
                             */
                            this.fetchGrpAppntFlag = fetchGrpAppnt();
                            if (this.fetchGrpAppntFlag) {
                                this.errorCode = "";//错误代码为空
                                this.errorReason = "";//错误原因为空
                                transformGrpAppData();

                            } else {
                                //查询团险投保人信息出错
                                //没有满足条件的保单数据
                                transformBasicData();
                            }

                        } else {
                            //查询团险保单不成功
                            //没有满足条件的保单数据
                            this.errorCode = "03";
                            //this.errorReason = MessageUtil.getMessage("NoSatisfiedData")
                            this.errorReason = "无符合查询条件的保单数据，请确认输入信息的正确性或拨打该公司的客服电话400-816-1688，再次查询确认！";;
                            transformBasicData();
                        }

                    }

                } else {
                    /**
                     * 校验码中的信息和request其它字段中的信息，不相符。
                     */
                    this.errorCode = "02";
                    //this.errorReason = MessageUtil.getMessage("InfoMayBeModified");
                    this.errorReason = "参数核对时发现数据不一致，可能信息被篡改！";
                    transformBasicData();
                }
            } else {
                //fileToDb()出错
                //写基本的response，返回XML
                //transformBasicData(); fileToDb()的catch中已经写表了
            }
        } else {
            //writeFile()是出错
            //写基本表，返回response
            //transformBasicData();在writeFile（） catch中已经写表了
        }

        /**
         * 生成RESPONSE用的XML文件
         */
        this.marshalToXmlFlag = marshalToXml();

        /**
         * 生成查询返回的XML文件 注意，加密。加密前后的信息，都要存下来。
         */
        this.getResponseXmlFlag = getResponseXml();

        System.out.println("leaving query," + (new java.util.Date()).toString());

        return this.responseXml;
    }

    private boolean writeFile() {

        System.out.println("entering writeFile()," + (new java.util.Date()).toString());

        
        try {
            File file = new File("C:\\CDM\\PRODUCTION\\BDYZ_REQUEST\\request001.xml");
            FileWriter fileWriter = new FileWriter(file);
            fileWriter.write(requestXml);
            fileWriter.flush();
            System.out.println("leaving writeFile()," + (new java.util.Date()).toString());
            return true;
        } catch (Exception ex) {
            System.out.println("in writeFile() excepton 01 ");
            this.errorCode = "01";
            this.errorReason = "接口处理过程中程序发生异常！";
            transformBasicData();
            Logger.getLogger(BdyzQuery.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("leaving writeFile()," + (new java.util.Date()).toString());
            System.out.println("in writeFile() excepton 02 ");
            return false;
        }
    }

    private boolean fileToDb() {

        System.out.println("entering fileToDb()," + (new java.util.Date()).toString());

        try {
            /**
             * 把request传过来的XML文件，反序列化，写到数据库中
             */
            File file = new File("C:\\CDM\\PRODUCTION\\BDYZ_REQUEST\\request001.xml");//把request传来的加密的XML报文放到XML文件中
            JAXBContext jaxbContext = JAXBContext.newInstance(BdyzRequest.class);//生成JAXB上下文
            Unmarshaller unmarshaller = jaxbContext.createUnmarshaller();//生成Unmarshaller对象。Unmarshaller，用于把XML文件转成java对象
            this.bdyzRequestOriginal = (BdyzRequest) unmarshaller.unmarshal(file);//反序列化，生成JAVA对象
            this.bdyzRequest = new BdyzRequest();//java对象，存储解密后的内容
            this.bdyzRequest.setPolicyNo(decrypt(this.bdyzRequestOriginal.getPolicyNo(), this.key));
            this.bdyzRequest.setQueryFlag(decrypt(this.bdyzRequestOriginal.getQueryFlag(), this.key));
            this.bdyzRequest.setInsuredFlag(decrypt(this.bdyzRequestOriginal.getInsuredFlag(), this.key));
            this.bdyzRequest.setIdType(decrypt(this.bdyzRequestOriginal.getIdType(), this.key));
            this.bdyzRequest.setCustomerId(decrypt(this.bdyzRequestOriginal.getCustomerId(), this.key));
            this.bdyzRequest.setVerifyCode(decrypt(this.bdyzRequestOriginal.getVerifyCode(), this.key));
            this.bdyzRequest.setReqDate(new java.util.Date());
            this.bdyzRequest.setReqState("REQUEST");
            LocalTime localTime = LocalTime.now();
            String localTimeStr = localTime.toString();
            LocalDate localDate = LocalDate.now();
            String localDateStr = localDate.toString();
            String batchNo = localDateStr + "_" + localTimeStr + "_" + this.bdyzRequest.getVerifyCode();//设置主键
            this.bdyzRequest.setBatchno(batchNo);
            bdyzRequestFacade.create(this.bdyzRequest);
            System.out.println("leaving fileToDb()," + (new java.util.Date()).toString());
            return true;
        } catch (JAXBException ex) {
            this.errorCode = "01";
            this.errorReason = "接口处理过程中程序发生异常！";
            transformBasicData();
            Logger.getLogger(BdyzQuery.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("leaving fileToDb()," + (new java.util.Date()).toString());
            return false;
        }
    }

    /**
     * 对请求的内容进行判断
     * 获取验证码中的参数值，和实际的参数值进行比对，看是否一致，如果不一致，返回错误代码：02，错误描述为：参数核对时发现数据不一致，可能信息被篡改！
     * 验证相符，返回true;验证不相符，返回false.
     */
    private boolean verifyRequestTruth() {

        System.out.println("entering verifyRequestTruth()," + (new java.util.Date()).toString());

        String verifyCode = this.bdyzRequest.getVerifyCode();

        int first = verifyCode.indexOf("_", 0);//从0位置开始，第一次出现下划线的位置
        int second = verifyCode.indexOf("_", first + 1);//从第一次出现下划线的位置加一位开始，再次出现下划线的位置
        int third = verifyCode.indexOf("_", second + 1);//从第二次出现下划线的位置加一位开始，再次出现下划线的位置
        int fourth = verifyCode.indexOf("_", third + 1);//从第三次出现下划线的位置加一位开始，再次出现下划线的位置

        policyNoInVerifyCode = verifyCode.substring(second + 1, third);//得到验证码中的保单号
        idTypeInVerifyCode = verifyCode.substring(third + 1, fourth);//得到验证码中的证件类型
        customerIdInVerifyCode = verifyCode.substring(fourth + 1);//得到验证码中的证件号码

        if ((!policyNoInVerifyCode.equalsIgnoreCase(this.bdyzRequest.getPolicyNo())) || (!idTypeInVerifyCode.equalsIgnoreCase(this.bdyzRequest.getIdType())) || (!customerIdInVerifyCode.equalsIgnoreCase(this.bdyzRequest.getCustomerId()))) {
            System.out.println("验证码和请求中的其它信息不符！");

            System.out.println("leaving verifyRequestTruth()," + (new java.util.Date()).toString());

            return false;
        } else {
            System.out.println("验证码和请求中的其它信息相符！");

            System.out.println("leaving verifyRequestTruth()," + (new java.util.Date()).toString());

            return true;
        }

    }

    /**
     * 取得RESPONSE中的基本信息，把数据放到临时表中
     */
    private boolean fetchResponseBasic() {

        System.out.println("entering fetchResponseBasic()," + (new java.util.Date()).toString());

        //解析request，没有错误，取数，没有错误。此时，返回下面的数据
        this.queryBdyzResponse = new QueryBdyzResponse();
        this.queryBdyzResponse.setBatchno(this.bdyzRequest.getBatchno());
        this.queryBdyzResponse.setErrorCode(this.errorCode);
        this.queryBdyzResponse.setErrorReason(this.errorReason);
        this.queryBdyzResponse.setResponseDate(new java.util.Date());
        this.queryBdyzResponseFacade.create(this.queryBdyzResponse);
        System.out.println("leaving fetchResponseBasic()," + (new java.util.Date()).toString());
        return true;
    }

    /**
     * 用本地SQL取出保单数据，把数据放到临时表中 找到保单信息，方法返回true，没找到保单信息，方法返回false。
     */
    private boolean fetchIndCont() {

        System.out.println("entering fetchIndCont()," + (new java.util.Date()).toString());
        System.out.println("entering fetchIndCont() positon 01," + (new java.util.Date()).toString());
        this.queryBdyzResponseContList = em02.createNativeQuery(sqlIndCont, QueryBdyzResponseCont.class).setParameter(1, this.bdyzRequest.getBatchno()).setParameter(2, this.bdyzRequest.getPolicyNo()).getResultList();
        System.out.println("entering fetchIndCont() positon 02," + (new java.util.Date()).toString());
        if (!this.queryBdyzResponseContList.isEmpty()) {
            System.out.println("entering fetchIndCont() positon 03," + (new java.util.Date()).toString());
            for (QueryBdyzResponseCont cont : this.queryBdyzResponseContList) {
                System.out.println("entering fetchIndCont() positon 04," + (new java.util.Date()).toString());
                this.queryBdyzResponseContFacade.create(cont);
            }

            System.out.println("leaving fetchIndCont()," + (new java.util.Date()).toString());

            return true;
        } else {
            this.errorCode = "03";
            this.errorReason = "无符合查询条件的保单数据，请确认输入信息的正确性或拨打该公司的客服电话400-816-1688，再次查询确认！";
            System.out.print("找不到保单信息");
            System.out.println("leaving fetchIndCont()," + (new java.util.Date()).toString());

            return false;
            //response基本信息那，上找不到保单
        }

    }

    /**
     * 用本地SQL取出保单数据，把数据放到临时表中
     */
    private boolean fetchGrpCont() {

        System.out.println("entering fetchGrpCont()," + (new java.util.Date()).toString());

        this.queryBdyzResponseContList = em02.createNativeQuery(sqlGrpCont, QueryBdyzResponseCont.class).setParameter(1, this.bdyzRequest.getBatchno()).setParameter(2, this.bdyzRequest.getPolicyNo()).getResultList();
        if (!this.queryBdyzResponseContList.isEmpty()) {
            for (QueryBdyzResponseCont cont : this.queryBdyzResponseContList) {
                this.queryBdyzResponseContFacade.create(cont);
            }

            System.out.println("leaving fetchGrpCont()," + (new java.util.Date()).toString());

            return true;
        } else {
            this.errorCode = "03";
            this.errorReason = "无符合查询条件的保单数据，请确认输入信息的正确性或拨打该公司的客服电话400-816-1688，再次查询确认！";
            System.out.print("找不到团单信息");

            System.out.println("leaving fetchGrpCont()," + (new java.util.Date()).toString());

            return false;
            //response基本信息那，上找不到保单
        }

    }

    /**
     * 用本地SQL取出投保人数据，把数据放到临时表中
     */
    private boolean fetchIndAppnt() {

        System.out.println("entering fetchIndAppnt()," + (new java.util.Date()).toString());

        this.queryBdyzResponseAppntList = em02.createNativeQuery(sqlIndAppnt, QueryBdyzResponseAppnt.class).setParameter(1, this.bdyzRequest.getBatchno()).setParameter(2, this.bdyzRequest.getPolicyNo()).getResultList();
        if (!this.queryBdyzResponseAppntList.isEmpty()) {
            for (QueryBdyzResponseAppnt appnt : this.queryBdyzResponseAppntList) {
                this.queryBdyzResponseAppntFacade.create(appnt);
            }
            System.out.println("leaving fetchIndAppnt()," + (new java.util.Date()).toString());
            return true;
        } else {
            this.errorCode = "03";
            this.errorReason = "无符合查询条件的保单数据，请确认输入信息的正确性或拨打该公司的客服电话400-816-1688，再次查询确认！";
            System.out.print("找不到投保人信息");
            //response基本信息那，找不到投保人信息
            System.out.println("leaving fetchIndAppnt()," + (new java.util.Date()).toString());
            return false;
        }
    }

    /**
     * 用本地SQL取出投保人数据，把数据放到临时表中
     */
    private boolean fetchGrpAppnt() {

        System.out.println("entering fetchGrpAppnt()," + (new java.util.Date()).toString());

        this.queryBdyzResponseAppntList = em02.createNativeQuery(sqlGrpAppnt, QueryBdyzResponseAppnt.class).setParameter(1, this.bdyzRequest.getBatchno()).setParameter(2, this.bdyzRequest.getPolicyNo()).getResultList();
        if (!this.queryBdyzResponseAppntList.isEmpty()) {
            for (QueryBdyzResponseAppnt appnt : this.queryBdyzResponseAppntList) {
                this.queryBdyzResponseAppntFacade.create(appnt);
            }
            System.out.println("leaving fetchGrpAppnt()," + (new java.util.Date()).toString());
            return true;
        } else {
            this.errorCode = "03";
            this.errorReason = "无符合查询条件的保单数据，请确认输入信息的正确性或拨打该公司的客服电话400-816-1688，再次查询确认！";
            System.out.print("找不到投保人信息");
            //response基本信息那，找不到投保人信息
            System.out.println("leaving fetchGrpAppnt()," + (new java.util.Date()).toString());
            return false;
        }
    }

    /**
     * 用本地SQL取出被保人数据，把数据放到临时表中
     */
    private boolean fetchIndInsured() {

        System.out.println("entering fetchIndInsured()," + (new java.util.Date()).toString());

        this.queryBdyzResponseInsuredList = em02.createNativeQuery(sqlIndInsured, QueryBdyzResponseInsured.class).setParameter(1, this.bdyzRequest.getBatchno()).setParameter(2, this.bdyzRequest.getPolicyNo()).getResultList();
        if (!this.queryBdyzResponseInsuredList.isEmpty()) {
            for (QueryBdyzResponseInsured insured : this.queryBdyzResponseInsuredList) {
                this.queryBdyzResponseInsuredFacade.create(insured);
            }
            System.out.println("leaving fetchIndInsured()," + (new java.util.Date()).toString());
            return true;
        } else {
            this.errorCode = "03";
            this.errorReason = "无符合查询条件的保单数据，请确认输入信息的正确性或拨打该公司的客服电话400-816-1688，再次查询确认！";
            System.out.print("找不到被保人信息");
            //response基本信息那，找不到被保人信息
            System.out.println("leaving fetchIndInsured()," + (new java.util.Date()).toString());
            return false;
        }

    }

    /**
     * 用本地SQL取出被保人险种数据，把数据放到临时表中
     */
    private boolean fetchIndPol() {

        System.out.println("entering fetchIndPol()," + (new java.util.Date()).toString());

        this.queryBdyzResponsePolList = em02.createNativeQuery(sqlIndPol, QueryBdyzResponsePol.class).setParameter(1, this.bdyzRequest.getBatchno()).setParameter(2, this.bdyzRequest.getPolicyNo()).getResultList();
        if (!this.queryBdyzResponsePolList.isEmpty()) {
            for (QueryBdyzResponsePol pol : this.queryBdyzResponsePolList) {
                this.queryBdyzResponsePolFacade.create(pol);
            }
            System.out.println("leaving fetchIndPol()," + (new java.util.Date()).toString());
            return true;
        } else {
            this.errorCode = "03";
            this.errorReason = "无符合查询条件的保单数据，请确认输入信息的正确性或拨打该公司的客服电话400-816-1688，再次查询确认！";
            System.out.print("找不到险种信息");
            //response基本信息那，找不到险种信息
            System.out.println("leaving fetchIndPol()," + (new java.util.Date()).toString());
            return false;
        }
    }

    /**
     * 把数据从查询用临时表copy到RESPONSE表
     */
    private boolean copyToResponse() {

        System.out.println("entering copyToResponse()," + (new java.util.Date()).toString());

        em01.createNativeQuery(sqlResponse).setParameter(1, this.bdyzRequest.getBatchno()).executeUpdate();

        System.out.println("leaving copyToResponse()," + (new java.util.Date()).toString());
        return true;
    }

    /**
     * 把数据从查询用临时表copy到RESPONSECONT表
     */
    private boolean copyToResponseCont() {

        System.out.println("entering copyToResponseCont()," + (new java.util.Date()).toString());

        em01.createNativeQuery(sqlResponseCont).setParameter(1, this.bdyzRequest.getBatchno()).executeUpdate();

        System.out.println("leaving copyToResponseCont()," + (new java.util.Date()).toString());
        return true;
    }

    /**
     * 把数据从查询用临时表copy到RESPONSEAPPNT表
     */
    private boolean copyToResponseAppnt() {

        System.out.println("entering copyToResponseAppnt()," + (new java.util.Date()).toString());

        em01.createNativeQuery(sqlResponseAppnt).setParameter(1, this.bdyzRequest.getBatchno()).executeUpdate();

        System.out.println("leaving copyToResponseAppnt()," + (new java.util.Date()).toString());
        return true;
    }

    /**
     * 把数据从查询用临时表copy到RESPONSEINSURED表
     */
    private boolean copyToResponseInsured() {

        System.out.println("entering copyToResponseInsured()," + (new java.util.Date()).toString());

        em01.createNativeQuery(sqlResponseInsured).setParameter(1, this.bdyzRequest.getBatchno()).executeUpdate();

        System.out.println("leaving copyToResponseInsured()," + (new java.util.Date()).toString());
        return true;
    }

    /**
     * 把数据从查询用临时表copy到RESPONSEPOL表
     */
    private boolean copyToResponsePol() {

        System.out.println("entering copyToResponsePol()," + (new java.util.Date()).toString());

        em01.createNativeQuery(sqlResponsePol).setParameter(1, this.bdyzRequest.getBatchno()).executeUpdate();

        System.out.println("leaving copyToResponsePol()," + (new java.util.Date()).toString());
        return true;
    }

    /**
     * 得到加密的RESPONSE数据 从query表读取未加密的数据，加密后，写入encrypt表
     */
    private boolean encryptBdyzResponse() {

        System.out.println("entering encryptBdyzResponse()," + (new java.util.Date()).toString());

        List<QueryBdyzResponse> queryBdyzResponseFacadeListTemp = this.queryBdyzResponseFacade.findByBatchno(this.bdyzRequest.getBatchno());
        EncryptBdyzResponse encryptBdyzResponseTemp = new EncryptBdyzResponse();
        for (QueryBdyzResponse queryBdyzResponse : queryBdyzResponseFacadeListTemp) {
            encryptBdyzResponseTemp.setBatchno(queryBdyzResponse.getBatchno());
            encryptBdyzResponseTemp.setErrorCode(encrypt(queryBdyzResponse.getErrorCode(), this.key));//注意，没加密前，错误码是空的，加密后，错误码有值，不是空。但解密后，就是空
            encryptBdyzResponseTemp.setErrorReason(encrypt(queryBdyzResponse.getErrorReason(), this.key));
            encryptBdyzResponseTemp.setResponseDate(queryBdyzResponse.getResponseDate());
            this.encryptBdyzResponseFacade.create(encryptBdyzResponseTemp);
        }

        System.out.println("leaving encryptBdyzResponse()," + (new java.util.Date()).toString());
        return true;
    }

    /**
     * 得到加密的RESPONSECONT数据 从query表读取未加密的数据，加密后，写入encrypt表
     */
    private boolean encryptBdyzResponseCont() {

        System.out.println("entering encryptBdyzResponseCont()," + (new java.util.Date()).toString());

        List<QueryBdyzResponseCont> queryBdyzResponseContListTemp = this.queryBdyzResponseContFacade.findByBatchno(this.bdyzRequest.getBatchno());
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
        for (QueryBdyzResponseCont queryBdyzResponseContTemp : queryBdyzResponseContListTemp) {
            EncryptBdyzResponseCont encryptBdyzResponseContTemp = new EncryptBdyzResponseCont();
            encryptBdyzResponseContTemp.setAlreadyPay(encrypt(queryBdyzResponseContTemp.getAlreadyPay().toPlainString(), this.key));//BigDecimal parse成string 再加密 再接着做其它字段
            encryptBdyzResponseContTemp.setAppntNo(encrypt(queryBdyzResponseContTemp.getAppntNo(), this.key));
            encryptBdyzResponseContTemp.setDownloadUrl(encrypt(queryBdyzResponseContTemp.getDownloadUrl(), this.key));
            encryptBdyzResponseContTemp.setEncryptBdyzResponseContPK(new EncryptBdyzResponseContPK(queryBdyzResponseContTemp.getQueryBdyzResponseContPK().getBatchno(), encrypt(queryBdyzResponseContTemp.getQueryBdyzResponseContPK().getContNo(), this.key)));
            encryptBdyzResponseContTemp.getEncryptBdyzResponseContPK().setContNo(encrypt(queryBdyzResponseContTemp.getQueryBdyzResponseContPK().getContNo(), this.key));
            String dateString = simpleDateFormat.format(queryBdyzResponseContTemp.getEndDate());
            encryptBdyzResponseContTemp.setEndDate(encrypt(dateString, this.key));
            encryptBdyzResponseContTemp.setEndTime(encrypt(queryBdyzResponseContTemp.getEndTime(), this.key));
            encryptBdyzResponseContTemp.setGroupFlag(encrypt(queryBdyzResponseContTemp.getGroupFlag(), this.key));
            encryptBdyzResponseContTemp.setGrpContNo(encrypt(queryBdyzResponseContTemp.getGrpContNo(), this.key));
            encryptBdyzResponseContTemp.setInsuredNo(encrypt(queryBdyzResponseContTemp.getInsuredNo(), this.key));
            encryptBdyzResponseContTemp.setInsuredPeoples(encrypt(queryBdyzResponseContTemp.getInsuredPeoples(), this.key));
            String payDateString = "";
            if(queryBdyzResponseContTemp.getPayDate() != null){
                payDateString = simpleDateFormat.format(queryBdyzResponseContTemp.getPayDate());
            }            
            encryptBdyzResponseContTemp.setPayDate(encrypt(payDateString, this.key));
            encryptBdyzResponseContTemp.setPolicyType(encrypt(queryBdyzResponseContTemp.getPolicyType(), this.key));
            encryptBdyzResponseContTemp.setPolicyType(encrypt(queryBdyzResponseContTemp.getPolicyType(), this.key));
            encryptBdyzResponseContTemp.setRealSign(encrypt(queryBdyzResponseContTemp.getRealSign(), this.key));
            encryptBdyzResponseContTemp.setResponseDate(queryBdyzResponseContTemp.getResponseDate());
            String startDateString = simpleDateFormat.format(queryBdyzResponseContTemp.getStartDate());
            encryptBdyzResponseContTemp.setStartDate(encrypt(startDateString, this.key));
            encryptBdyzResponseContTemp.setStartTime(encrypt(queryBdyzResponseContTemp.getStartTime(), this.key));
            BigDecimal sumAmnt = BigDecimal.ZERO;
            if(queryBdyzResponseContTemp.getSumAmnt() != null){
                sumAmnt = queryBdyzResponseContTemp.getSumAmnt();
            }
            encryptBdyzResponseContTemp.setSumAmnt(encrypt(sumAmnt.toPlainString(), this.key));
            this.encryptBdyzResponseContFacade.create(encryptBdyzResponseContTemp);
            encryptBdyzResponseContTemp = null;
        }

        System.out.println("leaving encryptBdyzResponseCont()," + (new java.util.Date()).toString());
        return true;
    }

    /**
     * 得到加密的RESPONSEAPPNT数据 从query表读取未加密的数据，加密后，写入encrypt表
     */
    private boolean encryptBdyzResponseAppnt() {

        System.out.println("entering encryptBdyzResponseAppnt()," + (new java.util.Date()).toString());

        List<QueryBdyzResponseAppnt> queryBdyzResponseAppntListTemp = this.queryBdyzResponseAppntFacade.findByBatchno(this.bdyzRequest.getBatchno());
        for (QueryBdyzResponseAppnt queryBdyzResponseAppntTemp : queryBdyzResponseAppntListTemp) {
            EncryptBdyzResponseAppnt encryptBdyzResponseAppntTemp = new EncryptBdyzResponseAppnt();
            encryptBdyzResponseAppntTemp.setAppntName(encrypt(queryBdyzResponseAppntTemp.getAppntName(), this.key));
            encryptBdyzResponseAppntTemp.setEncryptBdyzResponseAppntPK(new EncryptBdyzResponseAppntPK(queryBdyzResponseAppntTemp.getQueryBdyzResponseAppntPK().getBatchno(), encrypt(queryBdyzResponseAppntTemp.getQueryBdyzResponseAppntPK().getPolicyNo(), this.key), encrypt(queryBdyzResponseAppntTemp.getQueryBdyzResponseAppntPK().getAppntNo(), this.key)));
            encryptBdyzResponseAppntTemp.setResponseDate(queryBdyzResponseAppntTemp.getResponseDate());
            this.encryptBdyzResponseAppntFacade.create(encryptBdyzResponseAppntTemp);
            encryptBdyzResponseAppntTemp = null;
        }

        System.out.println("leaving encryptBdyzResponseAppnt()," + (new java.util.Date()).toString());
        return true;
    }

    /**
     * 得到加密的RESPONSEINSURED数据 从query表读取未加密的数据，加密后，写入encrypt表
     */
    private boolean encryptBdyzResponseInsured() {

        System.out.println("entering encryptBdyzResponseInsured()," + (new java.util.Date()).toString());

        List<QueryBdyzResponseInsured> queryBdyzResponseInsuredListTemp = this.queryBdyzResponseInsuredFacade.findByBatchno(this.bdyzRequest.getBatchno());
        for (QueryBdyzResponseInsured queryBdyzResponseInsuredTemp : queryBdyzResponseInsuredListTemp) {
            EncryptBdyzResponseInsured encryptBdyzResponseInsuredTemp = new EncryptBdyzResponseInsured();
            encryptBdyzResponseInsuredTemp.setEncryptBdyzResponseInsuredPK(new EncryptBdyzResponseInsuredPK(queryBdyzResponseInsuredTemp.getQueryBdyzResponseInsuredPK().getBatchno(), encrypt(queryBdyzResponseInsuredTemp.getQueryBdyzResponseInsuredPK().getPolicyNo(), this.key), encrypt(queryBdyzResponseInsuredTemp.getQueryBdyzResponseInsuredPK().getInsuredNo(), this.key)));
            encryptBdyzResponseInsuredTemp.setInsuredName(encrypt(queryBdyzResponseInsuredTemp.getInsuredName(), this.key));
            encryptBdyzResponseInsuredTemp.setResponseDate(queryBdyzResponseInsuredTemp.getResponseDate());
            this.encryptBdyzResponseInsuredFacade.create(encryptBdyzResponseInsuredTemp);
            encryptBdyzResponseInsuredTemp = null;
        }

        System.out.println("leaving encryptBdyzResponseInsured()," + (new java.util.Date()).toString());
        return true;
    }

    /**
     * 得到加密的RESPONSEPOL数据 从query表读取未加密的数据，加密后，写入encrypt表
     */
    private boolean encryptBdyzResponsePol() {

        System.out.println("entering encryptBdyzResponsePol()," + (new java.util.Date()).toString());

        List<QueryBdyzResponsePol> queryBdyzResponsePolListTemp = this.queryBdyzResponsePolFacade.findByBatchno(this.bdyzRequest.getBatchno());
        for (QueryBdyzResponsePol queryBdyzResponsePolTemp : queryBdyzResponsePolListTemp) {
            EncryptBdyzResponsePol encryptBdyzResponsePolTemp = new EncryptBdyzResponsePol();
            encryptBdyzResponsePolTemp.setAmnt(encrypt(queryBdyzResponsePolTemp.getAmnt().toPlainString(), this.key));
            encryptBdyzResponsePolTemp.setEncryptBdyzResponsePolPK(new EncryptBdyzResponsePolPK(queryBdyzResponsePolTemp.getQueryBdyzResponsePolPK().getBatchno(), encrypt(queryBdyzResponsePolTemp.getQueryBdyzResponsePolPK().getPolicyNo(), this.key), encrypt(queryBdyzResponsePolTemp.getQueryBdyzResponsePolPK().getInsuredNo(), this.key), encrypt(queryBdyzResponsePolTemp.getQueryBdyzResponsePolPK().getPolNo(), this.key)));
            encryptBdyzResponsePolTemp.setInsuredName(encrypt(queryBdyzResponsePolTemp.getInsuredName(), this.key));
            encryptBdyzResponsePolTemp.setPrem(encrypt(queryBdyzResponsePolTemp.getPrem().toPlainString(), this.key));
            encryptBdyzResponsePolTemp.setResponseDate(queryBdyzResponsePolTemp.getResponseDate());
            encryptBdyzResponsePolTemp.setRiskCode(encrypt(queryBdyzResponsePolTemp.getRiskCode(), this.key));
            encryptBdyzResponsePolTemp.setRiskName(encrypt(queryBdyzResponsePolTemp.getRiskName(), this.key));
            this.encryptBdyzResponsePolFacade.create(encryptBdyzResponsePolTemp);
            encryptBdyzResponsePolTemp = null;
        }

        System.out.println("leaving encryptBdyzResponsePol()," + (new java.util.Date()).toString());
        return true;

    }

    /**
     * 序列化Java类到XML文件
     */
    private boolean marshalToXml() {

        System.out.println("entering marshalToXml()," + (new java.util.Date()).toString());

        bdyzResponse = (BdyzResponse) bdyzResponseFacade.find(this.bdyzRequest.getBatchno());//加密的数据对象，先生成未加密的对象，再对对象属性赋加密的值
        try {
            this.responseXmlFileName = "C:\\CDM\\PRODUCTION\\BDYZ_RESPONSE\\" + this.bdyzRequest.getBatchno().replace(":", "_").replace(".", "_") + ".xml";
            File file = new File(this.responseXmlFileName);
            JAXBContext jaxbContext = JAXBContext.newInstance(BdyzResponse.class);
            Marshaller marshaller = jaxbContext.createMarshaller();
            marshaller.marshal(bdyzResponse, file);
            System.out.println("leaving marshalToXml()," + (new java.util.Date()).toString());
            return true;
        } catch (JAXBException ex) {
            this.errorCode = "01";
            this.errorReason = "接口处理过程中程序发生异常！";
            transformBasicData();
            Logger.getLogger(BdyzQuery.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("leaving marshalToXml()," + (new java.util.Date()).toString());
            return false;
        }
    }

    /**
     * 从已经序列化成XML的response文件，读出XML内容，放到ResponseXml中
     */
    private boolean getResponseXml() {

        System.out.println("entering getResponseXml()," + (new java.util.Date()).toString());

        this.responseXml = "";
        File file = new File(this.responseXmlFileName);
        try {
            FileReader fileReader = new FileReader(file);

            int i = fileReader.read();
            while (i != -1) {
                this.responseXml = this.responseXml + (char) i;
                i = fileReader.read();
                //System.out.println(this.responseXml);
            }
            System.out.println("leaving getResponseXml()," + (new java.util.Date()).toString());
            return true;
        } catch (FileNotFoundException ex) {
            this.errorCode = "01";
            this.errorReason = "接口处理过程中程序发生异常！";
            transformBasicData();
            Logger.getLogger(BdyzQuery.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            this.errorCode = "01";
            this.errorReason = "接口处理过程中程序发生异常！";
            transformBasicData();
            Logger.getLogger(BdyzQuery.class.getName()).log(Level.SEVERE, null, ex);
        }

        System.out.println("leaving getResponseXml()," + (new java.util.Date()).toString());
        return false;
    }

//解密 
    /**
     * 解密 中保信提供
     *
     * @param content 待解密内容
     * @param key 解密的密钥
     * @return 解密后报文
     */
    private static String decrypt(String content, String key) {
        if (content.length() < 1) {
            return null;
        }
        byte[] byteRresult = new byte[content.length() / 2];
        for (int i = 0; i < content.length() / 2; i++) {
            int high = Integer.parseInt(content.substring(i * 2, i * 2 + 1), 16);
            int low = Integer.parseInt(content.substring(i * 2 + 1, i * 2 + 2), 16);
            byteRresult[i] = (byte) (high * 16 + low);
        }
        try {
            KeyGenerator kgen = KeyGenerator.getInstance("AES");
            kgen.init(128, new SecureRandom(key.getBytes()));
            SecretKey secretKey = kgen.generateKey();
            byte[] enCodeFormat = secretKey.getEncoded();
            SecretKeySpec secretKeySpec = new SecretKeySpec(enCodeFormat, "AES");
            Cipher cipher = Cipher.getInstance("AES");
            cipher.init(Cipher.DECRYPT_MODE, secretKeySpec);
            byte[] result = cipher.doFinal(byteRresult);
            return new String(result);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (NoSuchPaddingException e) {
            e.printStackTrace();
        } catch (InvalidKeyException e) {
            e.printStackTrace();
        } catch (IllegalBlockSizeException e) {
            e.printStackTrace();
        } catch (BadPaddingException e) {
            e.printStackTrace();
        }
        return null;
    }

    //加密
    /**
     * 加密 中保信提供
     *
     * @param content 待加密内容
     * @param key 加密的密钥
     * @return
     */
    private static String encrypt(String content, String key) {
        if (content != null && !content.isEmpty()) {
            try {
                KeyGenerator kgen = KeyGenerator.getInstance("AES");
                kgen.init(128, new SecureRandom(key.getBytes()));
                SecretKey secretKey = kgen.generateKey();
                byte[] enCodeFormat = secretKey.getEncoded();
                SecretKeySpec secretKeySpec = new SecretKeySpec(enCodeFormat, "AES");
                Cipher cipher = Cipher.getInstance("AES");
                byte[] byteContent = content.getBytes("utf-8");
                cipher.init(Cipher.ENCRYPT_MODE, secretKeySpec);
                byte[] byteRresult = cipher.doFinal(byteContent);
                StringBuffer sb = new StringBuffer();
                for (int i = 0; i < byteRresult.length; i++) {
                    String hex = Integer.toHexString(byteRresult[i] & 0xFF);
                    if (hex.length() == 1) {
                        hex = '0' + hex;
                    }
                    sb.append(hex.toUpperCase());
                }
                return sb.toString();
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            } catch (NoSuchPaddingException e) {
                e.printStackTrace();
            } catch (InvalidKeyException e) {
                e.printStackTrace();
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            } catch (IllegalBlockSizeException e) {
                e.printStackTrace();
            } catch (BadPaddingException e) {
                e.printStackTrace();
            }
            return null;
        } else {
            return null;
        }

    }

    private void transformIndividualAndGrpIndData() {
        this.fetchResponseBasic();//写query开头的表
        this.fetchIndCont();//从数据源查数据并写query开头的表
        this.fetchIndAppnt();//从数据源查数据并写query开头的表
        this.fetchIndInsured();//从数据源查数据并写query开头的表
        this.fetchIndPol();//从数据源查数据并写query开头的表
        this.encryptBdyzResponse();//copy query开头的表，加密后，进入encrypt开头的表
        this.encryptBdyzResponseCont();///copy query开头的表，加密后，进入encrypt开头的表
        this.encryptBdyzResponseAppnt();///copy query开头的表，加密后，进入encrypt开头的表
        this.encryptBdyzResponseInsured();///copy query开头的表，加密后，进入encrypt开头的表
        this.encryptBdyzResponsePol();///copy query开头的表，加密后，进入encrypt开头的表
        this.copyToResponse();//copy encrypt开头的表，到 最终报送的表
        this.copyToResponseCont();//copy encrypt开头的表，到 最终报送的表
        this.copyToResponseAppnt();//copy encrypt开头的表，到 最终报送的表
        this.copyToResponseInsured();//copy encrypt开头的表，到 最终报送的表
        this.copyToResponsePol();//copy encrypt开头的表，到 最终报送的表
    }

    private void transformGrpAppData() {
        this.fetchResponseBasic();//写query开头的表
        this.fetchGrpCont();//从数据源查数据并写query开头的表
        this.fetchGrpAppnt();//从数据源查数据并写query开头的表
        this.encryptBdyzResponse();//copy query开头的表，加密后，进入encrypt开头的表
        this.encryptBdyzResponseCont();//copy query开头的表，加密后，进入encrypt开头的表
        this.encryptBdyzResponseAppnt();//copy query开头的表，加密后，进入encrypt开头的表
        this.copyToResponse();//copy encrypt开头的表，到 最终报送的表
        this.copyToResponseCont();//copy encrypt开头的表，到 最终报送的表
        this.copyToResponseAppnt();//copy encrypt开头的表，到 最终报送的表
    }

    private void transformBasicData() {
        this.fetchResponseBasic();//写query开头的表
        this.encryptBdyzResponse();//copy query开头的表，加密后，进入encrypt开头的表
        this.copyToResponse();//copy encrypt开头的表，到 最终报送的表
    }

}
