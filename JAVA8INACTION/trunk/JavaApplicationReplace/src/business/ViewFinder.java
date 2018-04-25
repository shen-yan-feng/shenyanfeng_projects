/*
 *遍历指定目录下面的所有文件
 *找到视图名称
 *视图名称所在的行被写到目标文件中，生成新文件。
 *视图名字被人工维护在一个数组中
 */
package business;

import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.FileVisitResult;
import static java.nio.file.FileVisitResult.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author HQST100207
 */
public class ViewFinder extends SimpleFileVisitor<Path> {
// Print information about
// each type of file.

    @Override
    public FileVisitResult visitFile(Path file, BasicFileAttributes attr) {
        if (attr.isSymbolicLink()) {
            System.out.format("Symbolic link: %s ", file);
        } else if (attr.isRegularFile()) {
            System.out.format("Regular file: %s ", file);
            fileReplace(file);
        } else {
            System.out.format("Other: %s ", file);
        }
        System.out.println("(" + attr.size() + "bytes)");
        return CONTINUE;
    }
// Print each directory visited.

    @Override
    public FileVisitResult postVisitDirectory(Path dir, IOException exc) {
        System.out.format("Directory: %s%n", dir);
        return CONTINUE;
    }
// If there is some error accessing
// the file, let the user know.
// If you don't override this method
// and an error occurs, an IOException
// is thrown.

    @Override
    public FileVisitResult visitFileFailed(Path file, IOException exc) {
        System.err.println(exc);
        return CONTINUE;
    }

    /*
    *遍历指定目录下面的所有文件
    *读出文件内容
    *找到视图名称
    *视图名称所在的行被写到目标文件中，生成新文件。
    *视图名字被人工维护在一个数组中
     */
    public void fileReplace(Path file) {
        //视图名称来自于dmart user_views
        String[] view = new String[]{
            "AGENT_HISTORY",
            "BI_13M_RENEW_CONTINUITY",
            "BI_13M_RENEW_CONTINUITY_R",
            "BI_BQ_EWJF",
            "BI_CDM_AGENT_HISTORY",
            "BI_CDM_AGENT_NEW",
            "BI_CDM_DIM_AGE",
            "BI_CDM_DIM_AGENTCOM",
            "BI_CDM_DIM_AGENTCOM_BROKER",
            "BI_CDM_DIM_AGENTGRADE",
            "BI_CDM_DIM_AGENTGROUP",
            "BI_CDM_DIM_BANK",
            "BI_CDM_DIM_BRANCH",
            "BI_CDM_DIM_BRANCHGROUP",
            "BI_CDM_DIM_BRANCH_ZF",
            "BI_CDM_DIM_BUSSTYPE",
            "BI_CDM_DIM_CASE",
            "BI_CDM_DIM_CILIC_BROKER",
            "BI_CDM_DIM_CONDOLETYPE",
            "BI_CDM_DIM_CONTINUITY",
            "BI_CDM_DIM_CSR",
            "BI_CDM_DIM_CUSTOMERTYPE",
            "BI_CDM_DIM_FREQUENCY",
            "BI_CDM_DIM_GENDER",
            "BI_CDM_DIM_ICD",
            "BI_CDM_DIM_MANAGECOM",
            "BI_CDM_DIM_MANAGECOM_GX",
            "BI_CDM_DIM_MANAGECOM_GX_2",
            "BI_CDM_DIM_MANAGECOM_YB",
            "BI_CDM_DIM_PAYFREQUENCY",
            "BI_CDM_DIM_POLICYSTATE",
            "BI_CDM_DIM_PRODUCT",
            "BI_CDM_DIM_PRODUCT_GROUP_YB",
            "BI_CDM_DIM_PRODUCT_YB",
            "BI_CDM_DIM_SALEBRANCH",
            "BI_CDM_DIM_SALECHNL",
            "BI_CDM_DIM_SALECHNL_ZF",
            "BI_CDM_FACT_AGENT_GAOFENG_RPT",
            "BI_CDM_FACT_BUSIQUALITYMAIN",
            "BI_CDM_FACT_CONTINUITY_25",
            "BI_CDM_FACT_DEPT_GAOFENG",
            "BI_CDM_FACT_INDEXINFO",
            "BI_CDM_FACT_NEWAGENT_GAOFENG",
            "BI_CDM_FACT_POLICY_PAYDUE_AD",
            "BI_CDM_OTH_DATAACCESSPRV",
            "BI_CDM_RPT_DAY_OUTCC_CONT",
            "BI_CDM_RPT_GB_APE_D_HIS_SHOW",
            "BI_CDM_RPT_GB_APE_M_HIS",
            "BI_CDM_RPT_GB_APE_WY_HIS",
            "BI_CDM_RPT_M_BROKER_PRDREV",
            "BI_CDW_DIM_AGENTCOM",
            "BI_DCR_LOG",
            "BI_DCR_LOG_AVE",
            "BI_DCR_LOG_END",
            "BI_DCR_LOG_TOTAL",
            "BI_DIM_BANK_AGENT",
            "BI_EMAIL_CDM_101B",
            "BI_EMAIL_CDM_107_107B",
            "BI_EMAIL_CDM_200",
            "BI_EMAIL_CDM_23",
            "BI_EMAIL_CDM_68",
            "BI_EMAIL_CDM_68D",
            "BI_EMAIL_CDM_73",
            "BI_EMAIL_CDM_79",
            "BI_EMAIL_CDM_88",
            "BI_EMAIL_CDM_93",
            "BI_EMAIL_CDM_94",
            "BI_ING_SMS_LOG",
            "BI_ING_SMS_LOG_AVE",
            "BI_ING_SMS_LOG_END",
            "BI_ING_SMS_LOG_TOTAL",
            "BI_LPREINTERSTFREERECORD",
            "BI_PORTAL_CDM_1",
            "BI_PORTAL_CDM_106C",
            "BI_PORTAL_CDM_106D",
            "BI_PORTAL_CDM_107",
            "BI_PORTAL_CDM_12",
            "BI_PORTAL_CDM_14",
            "BI_PORTAL_CDM_15",
            "BI_PORTAL_CDM_155",
            "BI_PORTAL_CDM_157",
            "BI_PORTAL_CDM_22",
            "BI_PORTAL_CDM_26",
            "BI_PORTAL_CDM_9",
            "BI_PORTAL_CDM_99",
            "BI_PORTAL_CDM_99A",
            "BI_PORTAL_CDM_99B",
            "BI_PORTAL_CDM_99C",
            "BI_PORTAL_CDM_99F",
            "BI_REP_SESS_LOG_AVE",
            "BI_V_13GYDY",
            "BI_V_13GYDYSXTBL",
            "BI_V_13GYGX_PERSON",
            "BI_V_13GYNLJ",
            "BI_V_13GYNLJSXTBL",
            "BI_V_13GY_GR",
            "BI_V_13GY_GX_DJ",
            "BI_V_13GY_JD",
            "BI_V_13GY_JD_DJ",
            "BI_V_13GY_QDZT",
            "BI_V_13GY_QDZT_DJ",
            "BI_V_13GY_QDZT_TYPE",
            "BI_V_13GY_YB_DJ",
            "BI_V_13GY_ZJ",
            "BI_V_25GYDY",
            "BI_V_25GYDYSXTBL",
            "BI_V_25GYGX_PERSON",
            "BI_V_25GYNLJ",
            "BI_V_25GYNLJSXTBL",
            "BI_V_25GYYB",
            "BI_V_25GY_GX_DJ",
            "BI_V_25GY_JD",
            "BI_V_25GY_JD_DJ",
            "BI_V_25GY_QDZT",
            "BI_V_25GY_QDZT_DJ",
            "BI_V_25GY_QDZT_TYPE",
            "BI_V_25GY_YB_DJ",
            "BI_V_37GYGX_PERSON",
            "BI_V_37GY_GX_DJ",
            "BI_V_37GY_JD",
            "BI_V_37GY_JD_DJ",
            "BI_V_37GY_QDZT",
            "BI_V_37GY_QDZT_DJ",
            "BI_V_37GY_QDZT_TYPE",
            "BI_V_37GY_YB_DJ",
            "BI_V_ADD_ACC_AMT_SUM",
            "BI_V_ADD_SER_ACHIEVE_INFO",
            "BI_V_ADD_SER_COMMISSION",
            "BI_V_BINDING_CUSTOMER_INFO",
            "BI_V_BNLJMQ",
            "BI_V_BNLJTB",
            "BI_V_BQMQGFYFSJ",
            "BI_V_BRANCH_SALECHANNL_DCR",
            "BI_V_CBYJBB",
            "BI_V_CDM_AGENT_HISTORY",
            "BI_V_CDM_DIM_AGENTCOM",
            "BI_V_DIM_AGENCY_ORG_A_CDM_CP",
            "BI_V_DIM_AGENCY_ORG_CDM_CP",
            "BI_V_DIM_AGENTCOM_CDM",
            "BI_V_DIM_AGENTCOM_CDM_CC",
            "BI_V_DIM_AGENT_CDM",
            "BI_V_DIM_AGENT_HISTORY_CDM_CP",
            "BI_V_DIM_AGENT_NOW_CDM_CP",
            "BI_V_DIM_AGENT_NOW_CDM_FWHG",
            "BI_V_DIM_BANK_CDM_CP",
            "BI_V_DIM_BRANCH_150",
            "BI_V_DIM_BRANCH_ALL_CDM",
            "BI_V_DIM_BRANCH_BINDING",
            "BI_V_DIM_BRANCH_CDM",
            "BI_V_DIM_BRANCH_CDM_CP",
            "BI_V_DIM_BUSINESS_TYPE_GRP_CDM",
            "BI_V_DIM_BUSI_QUALITY_TYPE_CDM",
            "BI_V_DIM_BUSS_TYPE_CDM",
            "BI_V_DIM_CALENDAR_CDM_CP",
            "BI_V_DIM_CHANNEL_CDM_CP",
            "BI_V_DIM_CITY_228",
            "BI_V_DIM_CLAIM_TYPE_GRP_CDM",
            "BI_V_DIM_COM_NATURE_GRP_CDM",
            "BI_V_DIM_FREQUENCY_CDM",
            "BI_V_DIM_FREQUENCY_CDM_CP",
            "BI_V_DIM_GLJG_153",
            "BI_V_DIM_GLJG_158",
            "BI_V_DIM_GLJG_291",
            "BI_V_DIM_GRADE_CDM",
            "BI_V_DIM_GROUP_CDM",
            "BI_V_DIM_GROUP_NEW_CDM",
            "BI_V_DIM_MANAGECOM_335",
            "BI_V_DIM_MANAGECOM_CDM_CC",
            "BI_V_DIM_MANAGE_NOW_CDM_FWHG",
            "BI_V_DIM_MANAGE_ORG_CDM",
            "BI_V_DIM_MEMBER_TYPE_CDM",
            "BI_V_DIM_MONTH_CALENDAR_CDM",
            "BI_V_DIM_MONTH_CDM",
            "BI_V_DIM_ORG_151",
            "BI_V_DIM_ORG_43",
            "BI_V_DIM_ORG_CDM",
            "BI_V_DIM_ORG_CDM_CP",
            "BI_V_DIM_ORPHAN_CDM",
            "BI_V_DIM_POL_STATE_CDM",
            "BI_V_DIM_POL_STATE_GRP_CDM",
            "BI_V_DIM_POL_YEAR_CDM",
            "BI_V_DIM_POL_YEAR_CDM_CP",
            "BI_V_DIM_PRODUCT_CDM",
            "BI_V_DIM_PRODUCT_CDM_CC",
            "BI_V_DIM_PRODUCT_CDM_CC_YH",
            "BI_V_DIM_PROD_TYPE_CDM_CP",
            "BI_V_DIM_PROJ_TYPE_CDM",
            "BI_V_DIM_QUARTER",
            "BI_V_DIM_REPORT_CHANNEL_CDM_CP",
            "BI_V_DIM_REPORT_MONTH_CDM_CP",
            "BI_V_DIM_REPORT_PERIOD_CDM_CP",
            "BI_V_DIM_SALECHNL_ADD_CDM",
            "BI_V_DIM_SALECHNL_BINDING",
            "BI_V_DIM_SALECHNL_CB_CDM_FWHG",
            "BI_V_DIM_SALECHNL_CDM",
            "BI_V_DIM_SALECHNL_CDM_CC",
            "BI_V_DIM_SALECHNL_GRP_CDM",
            "BI_V_DIM_SALE_ORG_335",
            "BI_V_DIM_SALE_TYPE_CDM",
            "BI_V_DIM_SEX_CDM",
            "BI_V_DIM_STAT_LEVEL",
            "BI_V_DIM_STAT_MONTH_CDM_CP",
            "BI_V_DIM_STAT_SPAN_CDM_CP",
            "BI_V_DIM_SUBJECT_CDM",
            "BI_V_DIM_TIME_CDM",
            "BI_V_DIM_TROUBLE_TYPE_CDM",
            "BI_V_DIM_TROUBLE_TYPE_GRP_CDM",
            "BI_V_DIM_VARIABLE_TYPE_335",
            "BI_V_DYGFGSDXDFB",
            "BI_V_DYKHNLJG_APE",
            "BI_V_DYKHNLJG_CNT_APE",
            "BI_V_FGSCPJS_APE",
            "BI_V_FGSJYBZJXZB",
            "BI_V_FGSXXJGJXZB",
            "BI_V_FGSZYJYZB",
            "BI_V_FHXXJLSSBCXB",
            "BI_V_FJ4BYSJ",
            "BI_V_FZCMQCLBD",
            "BI_V_FZCTB",
            "BI_V_HNSRSBXYWTJB",
            "BI_V_HNSRSBXYWTJB_CITY",
            "BI_V_JKGAHFBB",
            "BI_V_KHJGBB",
            "BI_V_KHTBLZZB",
            "BI_V_LNRTB",
            "BI_V_MATURITY_RPT",
            "BI_V_MONTH_APE_DEPT_GRP",
            "BI_V_MONTH_APE_DEPT_PERSON",
            "BI_V_MQCLBD",
            "BI_V_POL_DEPT_13MONTH",
            "BI_V_PORTAL_PREM_MONTH",
            "BI_V_QCMQGFYFWFSJ",
            "BI_V_RENEW_RATE_13MONTH",
            "BI_V_RENEW_RATE_13MONTH_PUB",
            "BI_V_RPT_MED_LFSYSB_FJ6_JKX",
            "BI_V_RPT_MED_LFSYSB_FJ6_LP",
            "BI_V_SBRMYH",
            "BI_V_STOCK_POLICY",
            "BI_V_SURREND_LAST_MONTH_PUB",
            "BI_V_SURREND_LAST_MONTH_RATE",
            "BI_V_SURREND_MONTH_PUB",
            "BI_V_SURREND_MONTH_RATE",
            "BI_V_SURREND_YEAR_PUB",
            "BI_V_SURREND_YEAR_RATE",
            "BI_V_SYXDJYTSJ",
            "BI_V_SYXZFBSJ",
            "BI_V_TBJBQK",
            "BI_V_TOUBLE_COUNT_ORG",
            "BI_V_TROUBLE_CLOSE_RATE_ORG",
            "BI_V_TROUBLE_EXAMEN",
            "BI_V_TXXQYFDSXTJB",
            "BI_V_TXXQYFXGLBB",
            "BI_V_TXXQYFXZGLBB",
            "BI_V_XJXJYXDQMQBD",
            "BI_V_XQDCMXSSB",
            "BI_V_XQDCMXSSB_NEW",
            "BI_V_XQDCMXSSB_YB",
            "BI_V_XQSSBFKBSSB",
            "BI_V_XQSSBFKBXQYXFWBSSB",
            "BI_V_XQSSBFKBYXFWBSSB",
            "BI_V_XQSSBFSSBCX_NEWNEW",
            "BI_V_XQSZJGWXSSSSBFMRKB",
            "BI_V_XQWXSSBFMRKB",
            "BI_V_XQYHF",
            "BI_V_XQYHFFXDWT",
            "BI_V_YJZB",
            "BI_V_YPJLBZJMXB",
            "BI_V_YYQDHJ_TB",
            "BI_V_YYQDMQHJ",
            "BI_V_ZCTBBDMX",
            "BI_V_ZCTBXZMX",
            "CDM_AGENT_HISTORY",
            "CDM_DIM_AGENTCOM_NEW",
            "CDM_DIM_AGENTGROUP",
            "CDM_DIM_AGENT_NEW",
            "CDM_DIM_APPNT_NEW",
            "CDM_DIM_BRANCHGROUP_NEW",
            "CDM_DIM_CONTADDRESS_NEW",
            "CDM_DIM_CONTINUITY_MANAGECOM",
            "CDM_DIM_CONT_NEW",
            "CDM_DIM_CUSTADDRESS_NEW",
            "CDM_DIM_INSURED_NEW",
            "CDM_DIM_SALEBRANCH_NEW",
            "CDM_FACT_13_MANPOWER_ORM",
            "CDM_FACT_AGENT_DEGREE_ORM",
            "CDM_FACT_APE_ORM",
            "CDM_FACT_CALL_ORM",
            "CDM_FACT_MANPOWER_ORM",
            "CDM_FACT_QUALITY_ORM",
            "CDM_FACT_QUANTITY_YOUTUI_ORM",
            "CDM_FACT_RENEW_CONTINUTER13ORM",
            "CDM_FACT_RENEW_CONTINUTE_13ORM",
            "CDM_FACT_RENEW_CONTINUTE_25ORM",
            "CDM_RPT_AGENTGRADE_FYP",
            "D_CILIC_BROKER",
            "ES10_VORG",
            "ES10_VUSER",
            "STG_DIM_LPEDORAPP",
            "STG_DIM_LPEDORAPP_NEW",
            "STG_LCCONT_NEW",
            "STG_LCPOL_NEW",
            "STG_LPEDORITEM_NEW",
            "V_CDM_DIM_AGENT",
            "V_CDM_DIM_ICD",
            "V_CDM_DIM_POL",
            "V_CDM_FACT_AGETENDORSE",
            "V_CDM_FACT_AGETENDORSE_CONTNO",
            "V_CDM_FACT_AGETENDORSE_POLNO",
            "V_CDM_FACT_CALLBACK",
            "V_CDM_FACT_CALLBACKQUESTION",
            "V_CDM_FACT_CLAIMDETAIL",
            "V_CDM_FACT_CLAIMDETAIL_CLMNO",
            "V_CDM_FACT_CLAIMSUMPREM",
            "V_CDM_FACT_FINA_BRANCH",
            "V_CDM_FACT_FINA_MANAGECOM",
            "V_CDM_FACT_FINA_SALECHNL",
            "V_CDM_FACT_MANPOWER_EXT",
            "V_CDM_FACT_MANPOWER_EXT_PSN",
            "V_CDM_FACT_MATURITY_RPT",
            "V_CDM_FACT_MONTH_MANPOWER",
            "V_CDM_FACT_RENEW_SURREND_SIM",
            "V_CDM_FACT_REV_INDEX",
            "V_CDM_FACT_WAGE",
            "V_CDM_RPT_M_RSBXYWSB_HN",
            "V_EMAIL_CDM_101",
            "V_EMAIL_CDM_101B",
            "V_EMAIL_CDM_103",
            "V_EMAIL_CDM_107",
            "V_EMAIL_CDM_107B",
            "V_EMAIL_CDM_107B1",
            "V_EMAIL_CDM_200",
            "V_EMAIL_CDM_23",
            "V_EMAIL_CDM_68",
            "V_EMAIL_CDM_68B",
            "V_EMAIL_CDM_68C",
            "V_EMAIL_CDM_68D",
            "V_EMAIL_CDM_68E",
            "V_EMAIL_CDM_73",
            "V_EMAIL_CDM_79",
            "V_EMAIL_CDM_88",
            "V_EMAIL_CDM_93",
            "V_EMAIL_CDM_94",
            "V_FACT_DAY_AGENT_CURDAY_LATEST",
            "V_HENAN",
            "V_POLICYINFO",
            "V_PORTAL_CDM_100",
            "V_PORTAL_CDM_106A",
            "V_PORTAL_CDM_106B",
            "V_PORTAL_CDM_106C",
            "V_PORTAL_CDM_106D",
            "V_PORTAL_CDM_12",
            "V_PORTAL_CDM_14",
            "V_PORTAL_CDM_15",
            "V_PORTAL_CDM_152",
            "V_PORTAL_CDM_153",
            "V_PORTAL_CDM_22",
            "V_PORTAL_CDM_22B",
            "V_PORTAL_CDM_26",
            "V_PORTAL_CDM_30",
            "V_PORTAL_CDM_44A",
            "V_PORTAL_CDM_44B",
            "V_PORTAL_CDM_45",
            "V_PORTAL_CDM_71",
            "V_PORTAL_CDM_71B",
            "V_PORTAL_CDM_71_BK20130228",
            "V_PORTAL_CDM_83",
            "V_PORTAL_CDM_9",
            "V_PORTAL_CDM_94",
            "V_PORTAL_CDM_96",
            "V_TEMP_TEST"
        };

        StringBuffer stringBuffer = new StringBuffer();//存储replace后的内容
        try {
            //List<String> fileContent = Files.readAllLines(file);//原始的文件内容字符串列表
            List<String> fileContent = Files.readAllLines(file, Charset.forName("GBK"));//原始的文件内容字符串列表
            for (String content : fileContent) {//遍历列表
                for(int i=0;i<view.length;i++){
                    if(content.toUpperCase().contains(view[i])){//该行包含要遍历的视图名称
                        String contentReplaced = content.replace("\\u20", " ").replace("\\n", System.getProperty("line.separator"));//\\u20替换成空格 \\n替换成换行
                        stringBuffer.append(contentReplaced).append(System.getProperty("line.separator"));//把该行放到串中，并且，每行后换行
                    }                    
                }
            }
            Path replacedFile = Paths.get(file + "_view");//新的文件名，在旧的名字后面跟一个_view
            Files.createFile(replacedFile);//创建空文件 如果文件存在 会失败 抛出异常
            Files.write(replacedFile, stringBuffer.toString().getBytes());//写文件
        } catch (IOException ex) {
            Logger.getLogger(ViewFinder.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) {
        System.out.println("haha");

        Path startingDir = Paths.get("C:\\TEMP");
        ViewFinder pf = new ViewFinder();
        try {
            Files.walkFileTree(startingDir, pf);
        } catch (IOException ex) {
            Logger.getLogger(ViewFinder.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
