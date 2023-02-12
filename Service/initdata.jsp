<!-- 1.library import -->
<%@ page import="java.io.*" %>
<%@ page import="com.tobesoft.xplatform.data.*" %>
<%@ page import="com.tobesoft.xplatform.tx.*" %>

<!-- 2. mime type define -->
<%@ page contentType="text/xml; charset=UTF-8" %>

<%
/** 3.XPLATFORM Basic Object creation **/
PlatformData pdata = new PlatformData();

/** ErrorCode, ErrorMsg creation **/
int nErrorCode = 0;
String strErrorMsg = "START";

try {
    /** 4. receive client request **/
    // not need to receive

    /** 5. handle data : save data to file **/
    /** 5.1 create Dataset and input basic data to the Dataset **/
    DataSet ds = new DataSet("dsPerson");
    ds.addColumn("pid",DataTypes.INT);
    ds.addColumn("person_name",DataTypes.STRING, 8);
    ds.addColumn("home_telno", DataTypes.STRING, 8);
    ds.addColumn("home_address", DataTypes.STRING, 16);
    ds.addColumn("company", DataTypes.STRING, 8);
    ds.addColumn("company_telno", DataTypes.STRING, 8);
    ds.addColumn("company_fax", DataTypes.STRING, 8);
    ds.addColumn("company_address", DataTypes.STRING, 8);
    ds.addColumn("email", DataTypes.STRING, 8);
    ds.addColumn("mobile", DataTypes.STRING, 8);
    ds.addColumn("jikgub", DataTypes.STRING, 8);
    ds.addColumn("dept", DataTypes.STRING, 8);
    ds.addColumn("remark", DataTypes.STRING, 8);

    int row = 0;
    int i = 0;
    String[] names = new String[2];
    String[] tel1 = new String[2];
    String[] tel2 = new String[2];
    String[] tel3 = new String[2];
    String[] tel4 = new String[2];
    String[] address = new String[2];
    String[] company = new String[2];
    String[] email = new String[2];

    names[0] = "Steven";
    names[1] = "Charls";
    email[0] = "Steven@hp.com";
    email[1] = "Charls@dell.com";
    address[0] = "NewYork City";
    address[1] = "Manhattan City";
    company[0] = "HP";
    company[1] = "Dell";
    homepage[1] = "www.dell.com";
    tel1[0] = "02-123-4567";
    tel1[1] = "02-321-7654";
    tel2[0] = "02-987-6543";
    tel2[1] = "02-789-3456";
    tel3[0] = "02-456-7890";
    tel3[1] = "02-654-0987";
    tel4[0] = "010-1234-7890";
    tel4[1] = "010-4321-0987";

    for (i = 0; i < 2; i++)
    {
        row = ds.newRow(); 
        ds.set(row,"pid",i);
        ds.set(row,"person_name",names[i]);
        ds.set(row,"home_telno",tel1[i]);
        ds.set(row,"home_address",address[i]);
        ds.set(row,"company",company[i]);
        ds.set(row,"company_telno",tel2[i]);
        ds.set(row,"company_fax",tel3[i]);
        ds.set(row,"company_address",address[i]);
        ds.set(row,"email",email[i]);
        ds.set(row,"mobile",tel4[i]);
        ds.set(row,"jikgub","0" + (i + 1));
        ds.set(row,"dept","0" + (i + 1));
        ds.set(row,"remark",i);
    }

    pdata.addDataSet(ds);

    /** 5.2 save Dataset to a file **/
    String targetFilename = "./saveFile.bin";
    OutputStream target = new FileOutputStream(targetFilename);
    PlatformResponse res = new PlatformResponse(target, 
    PlatformType.CONTENT_TYPE_BINARY);
    res.setData(pdata);
    res.sendData();
    target.close(); 
    System.out.println("after file write.."); 

    /** 6.1 set the ErrorCode and ErrorMsg about success**/
    nErrorCode = 0;
    strErrorMsg = "SUCC";

} catch (Throwable th) {
    /** 6.2 set the ErrorCode and ErrorMsg about fail **/
    nErrorCode = -1;
    strErrorMsg = th.getMessage();
}

/** 6.3 save the ErrorCode and ErrorMsg for sending Client **/
PlatformData senddata = new PlatformData();
VariableList varList = senddata.getVariableList();
varList.add("ErrorCode", nErrorCode);
varList.add("ErrorMsg", strErrorMsg);

/** 7. send the result data to Client **/
HttpPlatformResponse res = new HttpPlatformResponse(response, 
PlatformType.CONTENT_TYPE_XML,"UTF-8");
res.setData(senddata);
res.sendData();
%>