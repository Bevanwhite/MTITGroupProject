<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleCustomerServiceImplProxyid" scope="session" class="com.mtit.group.service.CustomerServiceImplProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleCustomerServiceImplProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleCustomerServiceImplProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleCustomerServiceImplProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        com.mtit.group.service.CustomerServiceImpl getCustomerServiceImpl10mtemp = sampleCustomerServiceImplProxyid.getCustomerServiceImpl();
if(getCustomerServiceImpl10mtemp == null){
%>
<%=getCustomerServiceImpl10mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
</TABLE>
<%
}
break;
case 17:
        gotMethod = true;
        String eid_1id=  request.getParameter("eid34");
        int eid_1idTemp  = Integer.parseInt(eid_1id);
        com.mtit.group.beans.Employee checktheEmployeePayout17mtemp = sampleCustomerServiceImplProxyid.checktheEmployeePayout(eid_1idTemp);
if(checktheEmployeePayout17mtemp == null){
%>
<%=checktheEmployeePayout17mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(checktheEmployeePayout17mtemp != null){
java.lang.String typeaddress20 = checktheEmployeePayout17mtemp.getAddress();
        String tempResultaddress20 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress20));
        %>
        <%= tempResultaddress20 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">eid:</TD>
<TD>
<%
if(checktheEmployeePayout17mtemp != null){
%>
<%=checktheEmployeePayout17mtemp.getEid()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">age:</TD>
<TD>
<%
if(checktheEmployeePayout17mtemp != null){
%>
<%=checktheEmployeePayout17mtemp.getAge()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">name:</TD>
<TD>
<%
if(checktheEmployeePayout17mtemp != null){
java.lang.String typename26 = checktheEmployeePayout17mtemp.getName();
        String tempResultname26 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typename26));
        %>
        <%= tempResultname26 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">workinghoursperday:</TD>
<TD>
<%
if(checktheEmployeePayout17mtemp != null){
%>
<%=checktheEmployeePayout17mtemp.getWorkinghoursperday()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">amountperhour:</TD>
<TD>
<%
if(checktheEmployeePayout17mtemp != null){
%>
<%=checktheEmployeePayout17mtemp.getAmountperhour()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">marriageStatus:</TD>
<TD>
<%
if(checktheEmployeePayout17mtemp != null){
java.lang.String typemarriageStatus32 = checktheEmployeePayout17mtemp.getMarriageStatus();
        String tempResultmarriageStatus32 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemarriageStatus32));
        %>
        <%= tempResultmarriageStatus32 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 36:
        gotMethod = true;
        com.mtit.group.beans.Employee[] getallEmployeedetails36mtemp = sampleCustomerServiceImplProxyid.getallEmployeedetails();
		if(getallEmployeedetails36mtemp == null){
		%>
		<%=getallEmployeedetails36mtemp %>
		<%
		}else{
	        String tempreturnp37 = null;
	        if(getallEmployeedetails36mtemp != null){
	        java.util.List<com.mtit.group.beans.Employee> listreturnp37= java.util.Arrays.asList(getallEmployeedetails36mtemp);
	        	//tempreturnp37 = listreturnp37.toString();
	        	for(com.mtit.group.beans.Employee e :listreturnp37){
	        		int eid = e.getEid();
	        		String name = e.getName();
	        		int age = e.getAge();
	        		String marriageStatus = e.getMarriageStatus();
	        		String address = e.getAddress();
	        		float workinghoursperday = e.getWorkinghoursperday();
	        		float amountperhour = e.getAmountperhour();
	        		
	        		%>
	         		<%=eid %>::<%=name %>::<%=age %>::<%=marriageStatus %>::<%=address%>::<%=workinghoursperday*amountperhour*30 %>
	         		<%
	        	}
	        }
}
break;
case 39:
        gotMethod = true;
        String pid_2id=  request.getParameter("pid42");
        int pid_2idTemp  = Integer.parseInt(pid_2id);
        boolean removepoolbooking39mtemp = sampleCustomerServiceImplProxyid.removepoolbooking(pid_2idTemp);
        String tempResultreturnp40 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(removepoolbooking39mtemp));
        %>
        <%= tempResultreturnp40 %>
        <%
break;
case 44:
        gotMethod = true;
        com.mtit.group.beans.Customer[] getallCustomerdetails44mtemp = sampleCustomerServiceImplProxyid.getallCustomerdetails();
		if(getallCustomerdetails44mtemp == null){
		%>
		<%=getallCustomerdetails44mtemp %>
		<%
		}else{
	        String tempreturnp45 = null;
	        if(getallCustomerdetails44mtemp != null){
	        java.util.List<com.mtit.group.beans.Customer> listreturnp45= java.util.Arrays.asList(getallCustomerdetails44mtemp);
	         	//tempreturnp45 = listreturnp45.toString();
	         	for(com.mtit.group.beans.Customer c : listreturnp45){
	         		int cid = c.getCid();
	         		String name = c.getName();
	         		int age = c.getAge();
	         		int roomNumber = c.getNumberOfDays();
	         		int numberOfPeople = c.getNumberOfPeople();
	         		int numberOfDays = c.getNumberOfDays();
	         		double amount = c.getAmount();
	         		%>
	         		<%=cid %>::<%=name %>::<%=age %>::<%=roomNumber %>::<%=numberOfPeople*numberOfDays*amount%>
	         		<%
	         	}
	        }
	        %>
	        <%=tempreturnp45%>
	        <%
}
break;
case 47:
        gotMethod = true;
        String id_3id=  request.getParameter("id64");
        int id_3idTemp  = Integer.parseInt(id_3id);
        com.mtit.group.beans.Customer checkTheCutomerBill47mtemp = sampleCustomerServiceImplProxyid.checkTheCutomerBill(id_3idTemp);
if(checkTheCutomerBill47mtemp == null){
%>
<%=checkTheCutomerBill47mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">roomNumber:</TD>
<TD>
<%
if(checkTheCutomerBill47mtemp != null){
%>
<%=checkTheCutomerBill47mtemp.getRoomNumber()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">age:</TD>
<TD>
<%
if(checkTheCutomerBill47mtemp != null){
%>
<%=checkTheCutomerBill47mtemp.getAge()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">name:</TD>
<TD>
<%
if(checkTheCutomerBill47mtemp != null){
java.lang.String typename54 = checkTheCutomerBill47mtemp.getName();
        String tempResultname54 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typename54));
        %>
        <%= tempResultname54 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">amount:</TD>
<TD>
<%
if(checkTheCutomerBill47mtemp != null){
%>
<%=checkTheCutomerBill47mtemp.getAmount()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">numberOfPeople:</TD>
<TD>
<%
if(checkTheCutomerBill47mtemp != null){
%>
<%=checkTheCutomerBill47mtemp.getNumberOfPeople()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">numberOfDays:</TD>
<TD>
<%
if(checkTheCutomerBill47mtemp != null){
%>
<%=checkTheCutomerBill47mtemp.getNumberOfDays()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">cid:</TD>
<TD>
<%
if(checkTheCutomerBill47mtemp != null){
%>
<%=checkTheCutomerBill47mtemp.getCid()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 66:
        gotMethod = true;
        com.mtit.group.beans.PoolUsage[] seeallpoolusage66mtemp = sampleCustomerServiceImplProxyid.seeallpoolusage();
		if(seeallpoolusage66mtemp == null){
		%>
		<%=seeallpoolusage66mtemp %>
		<%
		}else{
	        String tempreturnp67 = null;
	        if(seeallpoolusage66mtemp != null){
	        	java.util.List<com.mtit.group.beans.PoolUsage> listreturnp67= java.util.Arrays.asList(seeallpoolusage66mtemp);
        		//tempreturnp67 = listreturnp67.toString();
	        	for(com.mtit.group.beans.PoolUsage p : listreturnp67){
	        		int pid =  p.getPid();
	        		String reasontobook = p.getReasontobook() ;
	        		int hours = p.getHours();
	        		String day = p.getDay();
	        		%>
	            	<%=pid%>::<%=reasontobook %>::<%=hours %>::<%=day%>
	            	<%
		        }
			}
		}
break;
case 69:
        gotMethod = true;
        String roomNumber_5id=  request.getParameter("roomNumber74");
        int roomNumber_5idTemp  = Integer.parseInt(roomNumber_5id);
        String age_6id=  request.getParameter("age76");
        int age_6idTemp  = Integer.parseInt(age_6id);
        String name_7id=  request.getParameter("name78");
            java.lang.String name_7idTemp = null;
        if(!name_7id.equals("")){
         name_7idTemp  = name_7id;
        }
        String amount_8id=  request.getParameter("amount80");
        double amount_8idTemp  = Double.parseDouble(amount_8id);
        String numberOfPeople_9id=  request.getParameter("numberOfPeople82");
        int numberOfPeople_9idTemp  = Integer.parseInt(numberOfPeople_9id);
        String numberOfDays_10id=  request.getParameter("numberOfDays84");
        int numberOfDays_10idTemp  = Integer.parseInt(numberOfDays_10id);
        String cid_11id=  request.getParameter("cid86");
        int cid_11idTemp  = Integer.parseInt(cid_11id);
        %>
        <jsp:useBean id="com1mtit1group1beans1Customer_4id" scope="session" class="com.mtit.group.beans.Customer" />
        <%
        com1mtit1group1beans1Customer_4id.setRoomNumber(roomNumber_5idTemp);
        com1mtit1group1beans1Customer_4id.setAge(age_6idTemp);
        com1mtit1group1beans1Customer_4id.setName(name_7idTemp);
        com1mtit1group1beans1Customer_4id.setAmount(amount_8idTemp);
        com1mtit1group1beans1Customer_4id.setNumberOfPeople(numberOfPeople_9idTemp);
        com1mtit1group1beans1Customer_4id.setNumberOfDays(numberOfDays_10idTemp);
        com1mtit1group1beans1Customer_4id.setCid(cid_11idTemp);
        boolean addCutomer69mtemp = sampleCustomerServiceImplProxyid.addCutomer(com1mtit1group1beans1Customer_4id);
        String tempResultreturnp70 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addCutomer69mtemp));
        %>
        <%= tempResultreturnp70 %>
        <%
break;
case 88:
        gotMethod = true;
        String address_13id=  request.getParameter("address93");
            java.lang.String address_13idTemp = null;
        if(!address_13id.equals("")){
         address_13idTemp  = address_13id;
        }
        String eid_14id=  request.getParameter("eid95");
        int eid_14idTemp  = Integer.parseInt(eid_14id);
        String age_15id=  request.getParameter("age97");
        int age_15idTemp  = Integer.parseInt(age_15id);
        String name_16id=  request.getParameter("name99");
            java.lang.String name_16idTemp = null;
        if(!name_16id.equals("")){
         name_16idTemp  = name_16id;
        }
        String workinghoursperday_17id=  request.getParameter("workinghoursperday101");
        float workinghoursperday_17idTemp  = Float.parseFloat(workinghoursperday_17id);
        String amountperhour_18id=  request.getParameter("amountperhour103");
        float amountperhour_18idTemp  = Float.parseFloat(amountperhour_18id);
        String marriageStatus_19id=  request.getParameter("marriageStatus105");
            java.lang.String marriageStatus_19idTemp = null;
        if(!marriageStatus_19id.equals("")){
         marriageStatus_19idTemp  = marriageStatus_19id;
        }
        %>
        <jsp:useBean id="com1mtit1group1beans1Employee_12id" scope="session" class="com.mtit.group.beans.Employee" />
        <%
        com1mtit1group1beans1Employee_12id.setAddress(address_13idTemp);
        com1mtit1group1beans1Employee_12id.setEid(eid_14idTemp);
        com1mtit1group1beans1Employee_12id.setAge(age_15idTemp);
        com1mtit1group1beans1Employee_12id.setName(name_16idTemp);
        com1mtit1group1beans1Employee_12id.setWorkinghoursperday(workinghoursperday_17idTemp);
        com1mtit1group1beans1Employee_12id.setAmountperhour(amountperhour_18idTemp);
        com1mtit1group1beans1Employee_12id.setMarriageStatus(marriageStatus_19idTemp);
        boolean addEmployee88mtemp = sampleCustomerServiceImplProxyid.addEmployee(com1mtit1group1beans1Employee_12id);
        String tempResultreturnp89 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addEmployee88mtemp));
        %>
        <%= tempResultreturnp89 %>
        <%
break;
case 107:
        gotMethod = true;
        String id_20id=  request.getParameter("id110");
        int id_20idTemp  = Integer.parseInt(id_20id);
        boolean removeEmployee107mtemp = sampleCustomerServiceImplProxyid.removeEmployee(id_20idTemp);
        String tempResultreturnp108 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(removeEmployee107mtemp));
        %>
        <%= tempResultreturnp108 %>
        <%
break;
case 112:
        gotMethod = true;
        String id_21id=  request.getParameter("id115");
        int id_21idTemp  = Integer.parseInt(id_21id);
        boolean removeCutomer112mtemp = sampleCustomerServiceImplProxyid.removeCutomer(id_21idTemp);
        String tempResultreturnp113 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(removeCutomer112mtemp));
        %>
        <%= tempResultreturnp113 %>
        <%
break;
case 117:
        gotMethod = true;
        String leid_22id=  request.getParameter("leid128");
        int leid_22idTemp  = Integer.parseInt(leid_22id);
        com.mtit.group.beans.Applyleaves seeleavecrad117mtemp = sampleCustomerServiceImplProxyid.seeleavecrad(leid_22idTemp);
if(seeleavecrad117mtemp == null){
%>
<%=seeleavecrad117mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">laid:</TD>
<TD>
<%
if(seeleavecrad117mtemp != null){
%>
<%=seeleavecrad117mtemp.getLaid()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">eid:</TD>
<TD>
<%
if(seeleavecrad117mtemp != null){
%>
<%=seeleavecrad117mtemp.getEid()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">date:</TD>
<TD>
<%
if(seeleavecrad117mtemp != null){
java.lang.String typedate124 = seeleavecrad117mtemp.getDate();
        String tempResultdate124 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedate124));
        %>
        <%= tempResultdate124 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">reason:</TD>
<TD>
<%
if(seeleavecrad117mtemp != null){
java.lang.String typereason126 = seeleavecrad117mtemp.getReason();
        String tempResultreason126 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typereason126));
        %>
        <%= tempResultreason126 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 130:
        gotMethod = true;
        com.mtit.group.beans.Applyleaves[] seeallleavecard130mtemp = sampleCustomerServiceImplProxyid.seeallleavecard();
		if(seeallleavecard130mtemp == null){
		%>
		<%=seeallleavecard130mtemp %>
		<%
		}else{
        String tempreturnp131 = null;
        if(seeallleavecard130mtemp != null){
        java.util.List<com.mtit.group.beans.Applyleaves> listreturnp131= java.util.Arrays.asList(seeallleavecard130mtemp);
        //tempreturnp131 = listreturnp131.toString();
        for(com.mtit.group.beans.Applyleaves a : listreturnp131){
        	int id = a.getLaid();
        	int eid = a.getEid();
        	String reason = a.getReason();
        	String date= a.getDate();
        	%>
        	<%=id%>::<%=eid %>::<%=reason %>::<%=date %> 
        	<%
        	}
        }
}
break;
case 133:
        gotMethod = true;
        String hours_24id=  request.getParameter("hours138");
        int hours_24idTemp  = Integer.parseInt(hours_24id);
        String reasontobook_25id=  request.getParameter("reasontobook140");
            java.lang.String reasontobook_25idTemp = null;
        if(!reasontobook_25id.equals("")){
         reasontobook_25idTemp  = reasontobook_25id;
        }
        String pid_26id=  request.getParameter("pid142");
        int pid_26idTemp  = Integer.parseInt(pid_26id);
        String day_27id=  request.getParameter("day144");
            java.lang.String day_27idTemp = null;
        if(!day_27id.equals("")){
         day_27idTemp  = day_27id;
        }
        %>
        <jsp:useBean id="com1mtit1group1beans1PoolUsage_23id" scope="session" class="com.mtit.group.beans.PoolUsage" />
        <%
        com1mtit1group1beans1PoolUsage_23id.setHours(hours_24idTemp);
        com1mtit1group1beans1PoolUsage_23id.setReasontobook(reasontobook_25idTemp);
        com1mtit1group1beans1PoolUsage_23id.setPid(pid_26idTemp);
        com1mtit1group1beans1PoolUsage_23id.setDay(day_27idTemp);
        boolean addpoolbooking133mtemp = sampleCustomerServiceImplProxyid.addpoolbooking(com1mtit1group1beans1PoolUsage_23id);
        String tempResultreturnp134 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addpoolbooking133mtemp));
        %>
        <%= tempResultreturnp134 %>
        <%
break;
case 146:
        gotMethod = true;
        String leid_28id=  request.getParameter("leid149");
        int leid_28idTemp  = Integer.parseInt(leid_28id);
        boolean removeleaveCard146mtemp = sampleCustomerServiceImplProxyid.removeleaveCard(leid_28idTemp);
        String tempResultreturnp147 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(removeleaveCard146mtemp));
        %>
        <%= tempResultreturnp147 %>
        <%
break;
case 151:
        gotMethod = true;
        String laid_30id=  request.getParameter("laid156");
        int laid_30idTemp  = Integer.parseInt(laid_30id);
        String eid_31id=  request.getParameter("eid158");
        int eid_31idTemp  = Integer.parseInt(eid_31id);
        String date_32id=  request.getParameter("date160");
            java.lang.String date_32idTemp = null;
        if(!date_32id.equals("")){
         date_32idTemp  = date_32id;
        }
        String reason_33id=  request.getParameter("reason162");
            java.lang.String reason_33idTemp = null;
        if(!reason_33id.equals("")){
         reason_33idTemp  = reason_33id;
        }
        %>
        <jsp:useBean id="com1mtit1group1beans1Applyleaves_29id" scope="session" class="com.mtit.group.beans.Applyleaves" />
        <%
        com1mtit1group1beans1Applyleaves_29id.setLaid(laid_30idTemp);
        com1mtit1group1beans1Applyleaves_29id.setEid(eid_31idTemp);
        com1mtit1group1beans1Applyleaves_29id.setDate(date_32idTemp);
        com1mtit1group1beans1Applyleaves_29id.setReason(reason_33idTemp);
        boolean addleavecard151mtemp = sampleCustomerServiceImplProxyid.addleavecard(com1mtit1group1beans1Applyleaves_29id);
        String tempResultreturnp152 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addleavecard151mtemp));
        %>
        <%= tempResultreturnp152 %>
        <%
break;
case 164:
        gotMethod = true;
        String pid_34id=  request.getParameter("pid175");
        int pid_34idTemp  = Integer.parseInt(pid_34id);
        com.mtit.group.beans.PoolUsage seepoolbooking164mtemp = sampleCustomerServiceImplProxyid.seepoolbooking(pid_34idTemp);
if(seepoolbooking164mtemp == null){
%>
<%=seepoolbooking164mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">hours:</TD>
<TD>
<%
if(seepoolbooking164mtemp != null){
%>
<%=seepoolbooking164mtemp.getHours()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">reasontobook:</TD>
<TD>
<%
if(seepoolbooking164mtemp != null){
java.lang.String typereasontobook169 = seepoolbooking164mtemp.getReasontobook();
        String tempResultreasontobook169 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typereasontobook169));
        %>
        <%= tempResultreasontobook169 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">pid:</TD>
<TD>
<%
if(seepoolbooking164mtemp != null){
%>
<%=seepoolbooking164mtemp.getPid()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">day:</TD>
<TD>
<%
if(seepoolbooking164mtemp != null){
java.lang.String typeday173 = seepoolbooking164mtemp.getDay();
        String tempResultday173 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeday173));
        %>
        <%= tempResultday173 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>