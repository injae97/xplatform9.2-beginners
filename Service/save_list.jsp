<!-- 1.library import -->
<%@ page import="java.io.*" %>
<%@ page import="com.tobesoft.xplatform.data.*" %>
<%@ page import="com.tobesoft.xplatform.tx.*" %>

<!-- 2. mime type define -->
<%@ page contentType="text/xml; charset=UTF-8" %>

<%
/** 3.XPLATFORM Basic Object creation **/
PlatformData pdata = new PlatformData();

/** 6.1 ErrorCode, ErrorMsg creation **/
int nErrorCode = 0;
String strErrorMsg = "START";

try {
    /** 4. receive client request **/
    // create HttpPlatformRequest for receive data from client
    HttpPlatformRequest req = new HttpPlatformRequest(request);
    req.receiveData();
    /** 5. handle data : load data from file **/
    /** 5.1 load data from http object **/ 
    pdata = req.getData();

    /** get Dataset from received data **/
    DataSet ds = pdata.getDataSet("dsPerson");

    /** save data to file with init data **/
    String targetFilename = "./saveFile.bin";
    OutputStream target = new FileOutputStream(targetFilename);
    PlatformResponse res = new PlatformResponse(target, 
        PlatformType.CONTENT_TYPE_BINARY);
    res.setData(pdata);
    res.sendData();
    target.close(); 

    /** 6.2 set the ErrorCode and ErrorMsg about success **/
    nErrorCode = 0;
    strErrorMsg = "person list saved complete : row count("+ds.getRowCount()+")";

} catch (Throwable th) {
    /** 6.3 set the ErrorCode and ErrorMsg about fail **/
    nErrorCode = -1;
    strErrorMsg = th.getMessage();
    System.out.println("ERROR:"+strErrorMsg); 
}
/** 6.4 save the ErrorCode and ErrorMsg for sending Client **/
PlatformData senddata = new PlatformData();
VariableList varList = senddata.getVariableList();
varList.add("ErrorCode", nErrorCode);
varList.add("ErrorMsg", strErrorMsg);
/** 7. send the result data to Client **/
HttpPlatformResponse res = new HttpPlatformResponse(response, PlatformType.CONTENT_TYPE_XML,"UTF-8");
res.setData(senddata);
res.sendData();
%>