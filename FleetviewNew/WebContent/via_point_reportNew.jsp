<%@ include file="headernew.jsp"%>

<%@ page language="java" import="java.sql.*" import="java.util.*"
	import=" java.text.*" import="moreservlets.listeners.*" errorPage=""%>
<link href="css/ERP.css" rel="stylesheet" type="text/css"></link>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style type="text/css">
@import url(jscalendar-1.0/calendar-blue.css);
</style>
<%@ page import="java.io.FileNotFoundException"%>
<%@ page import="java.io.FileOutputStream"%>
<%@ page import=" java.io.IOException"%>


<html>
<head>



<title></title>
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>



<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Export Options Links of DataTables -->

<link rel="stylesheet"
	href="https://cdn.datatables.net/buttons/1.5.1/css/buttons.dataTables.min.css ">
<script type="text/javascript" src="datatablejs/bootstrap.js"></script>

<script
	src=" https://cdn.datatables.net/buttons/1.5.1/js/buttons.flash.min.js "></script>
<script
	src=" https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js "></script>
<script
	src=" https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js "></script>
<script
	src=" https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js "></script>
<script
	src=" https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js "></script>
<script
	src=" https://cdn.datatables.net/buttons/1.5.1/js/buttons.print.min.js "></script>

<script type="text/javascript" src="datatablejs/buttons.colVis.min.js"></script>





<style>td.highlight {
    background-color: whitesmoke !important;
}</style>

<script type="text/javascript">
 $(document).ready(function() {
	    $('#example').DataTable( {
	    //	"pagingType": "full_numbers",
	    	
	        dom: 'Blfrtip',
	        "bLengthChange" : false,
	        buttons: [
	        	
	        	{
	        		extend: 'collection',
	        		
	        		text: 'Export',
	        		buttons: [
	        			{
	                        extend: 'excel',
	                        title: 'Via Point Report', 
	                    },
	                    {
	                        extend: 'pdf',
	                        orientation: 'landscape',
	                        pageSize: 'LEGAL',
	                        title: 'Via Point Report', 
	                    },
	                    {
	                        extend: 'csv',
	                        title: 'Via Point Report',
	                    },
	                    {
	                        extend: 'print',
	                        title: 'Via Point Report',
	                    },
	                    {
	                        extend: 'copy',
	                        title: 'Via Point Report',
	                    },
	                    
	            				/* 'copy', 'csv', 'excel', 'pdf', 'print' */
	            				
	                    
	            			]
	        	},
	        	
	            'colvis',
	            'pageLength'
	        ],
	        
	        
	        "oLanguage": {
	        	   "sSearch": "Search"
	        	 },
	        
	        lengthMenu: [
	            [ 10, 25, 50, -1 ],
	            [ '10 Rows' , '25 Rows', '50 Rows', 'Show all' ],
	            
	        ],	        
	       
	        "aoColumns": [
	            null,
	            null,
	            null,null,null,null

	            
	          
	          
	        ]
	    
	    	
	    } );
		var table = $('#example').DataTable();
	     
	    $('#example tbody')
	        .on( 'mouseenter', 'td', function () {
	            var colIdx = table.cell(this).index().column;
	 
	            $( table.cells().nodes() ).removeClass( 'highlight' );
	            $( table.column( colIdx ).nodes() ).addClass( 'highlight' );
	        } );
	});
 jQuery.extend( jQuery.fn.dataTableExt.oSort, {
	 "date-uk-pre": function ( a ) {
	    var ukDatea = a.split('/');
	    return (ukDatea[2] + ukDatea[1] + ukDatea[0]) * 1;
	 },

	 "date-uk-asc": function ( a, b ) {
	    return ((a < b) ? -1 : ((a > b) ? 1 : 0));
	 },

	 "date-uk-desc": function ( a, b ) {
	    return ((a < b) ? 1 : ((a > b) ? -1 : 0));
	 }
	 } );
</script>




<script>
function delete1(v,s,t) {
    var txt="Delete The ViaPoint of -"+v;
   	  
 var status="Delete";
    
    if (confirm(txt)) {
    	
    	
    	location.assign("via_point_report.jsp?tripid="+v+"&vehcode="+s+"&status="+status+"&vianame="+t);
    	
    	
    	//location.assign("AdvanceApprovalAction.jsp?id="+id+"&Action="+v+"&Reason="+c);
     
    }        
 else {
       
        return false;
    }
}

function Redirect()
{
	var V=document.getElementById("tripid").value;
	  var S=document.getElementById("vehcode").value;
	  
  	location.assign("via_point_report.jsp?tripid="+V+"&vehcode="+S);
	}
	
</script>



</head>
<body>

<%
Connection conn=null;
Statement st=null,st1=null,st2=null;

%>
<%
try
{
	/* String MM_dbConn_DRIVER="org.gjt.mm.mysql.Driver";
	String MM_dbConn_USERNAME="fleetview";
	String MM_dbConn_PASSWORD="1@flv";
	String MM_dbConn_STRING="jdbc:mysql://192.168.2.26/db_gps"; */
	Class.forName(MM_dbConn_DRIVER);
	conn = DriverManager.getConnection(MM_dbConn_STRING,MM_dbConn_USERNAME,MM_dbConn_PASSWORD);
	
	

    st=conn.createStatement();
    st1=conn.createStatement();
    st2=conn.createStatement();
    
    ResultSet rs3=null;
   
	
}
catch(Exception e)
{
	
}
	
%>
<%
String username="";
username=(String)session.getAttribute("usertypevalue");

System.out.println("Session name----------------->:"+username); 
String selected=request.getParameter("status");

System.out.println("--------"+selected);

%>
<%
String ddx = request.getQueryString();
String bt=request.getParameter("button");
System.out.println(" buttom :- "+bt);
	
%>




<input type="hidden" id="PageName" name="PageName"
				value="<%=PageName%>" />


	<div align="center" style="font-size: 13px;">
		<font><b> Via Point Report Of <%=username %></b></font>


		
	</div>








		<%
 

		ResultSet rs3=null;

String query="";

%>



	<% 
		int i=0;
	String Tripid="", VehicleCode="",status="";
	Tripid=request.getParameter("tripid");
	VehicleCode=request.getParameter("vehcode");

	status=request.getParameter("status");
	
	if(status==null)
	{
	%>
		
		<table id="example" class="display" style="width: 100%">
		<thead>
			<tr>
	                <th  align="center">Delete</th>

				<th width="4%" align="center">Sr No</th>
	                <th  align="center">TripId</th>
	                <th  align="center">VehicleRegNo</th>
	                <th  align="center">VehLocName</th>
	                                <th  align="center">Start Location</th>
	                                <th  align="center">End Location</th>
	                
	                
	                
	                
			</tr>
		</thead>
		<tbody>
	
	<% 
	
	 query="select TripId,VehicleRegNo,ViaLocName,StartLocation,EndLocation,Vehcode from db_gps.ViaPoints where TripId='"+Tripid+"' and Vehcode='"+VehicleCode+"' "; 
	 //query="select TripId,VehicleRegNo,ViaLocName,StartLocation,EndLocation,Vehcode from db_gps.ViaPoints where TripId='2104230885U_10885' and Vehcode='13137' ";
	   	System.out.println("Query is:"+query);
	      
	      rs3=st.executeQuery(query);
 	 

	     while(rs3.next())
	      {
	    	  
	    
	    	 i++;
	    	  
	
	    	  				%>
	    	  				 <tr>	
	    	  		          <td align="left">
	    	    				<a href="#" title="Delete The Via Point" onclick="return delete1('<%=rs3.getString("TripId") %>','<%=rs3.getString("Vehcode")%>','<%=rs3.getString("ViaLocName")%>')" style="color:#505050"><img src="Delete.png" alt="Delete Record" width="18" height="18" border="0"></a><br></br>
	    	    			</td>	          
	    	    	    		<td  align="right"><%=i %></td>
	    	    	            <td   align="left"><%= rs3.getString("TripId")%></td>
	    	    	            <td  align="right"><%= rs3.getString("VehicleRegNO")%></td>
	    	    	            <td  align="right"><%= rs3.getString("ViaLocName")%></td>    
	    	    	            
	    	    	              <td  align="right"><%= rs3.getString("StartLocation")%></td>
	    	    	            <td  align="right"><%= rs3.getString("EndLocation")%></td>    
	    	    	            
	    	    	            
	    	    	        </tr>
	    	    	          <% 

      }
      %>
	    		  
  	  
      
	</tbody>
	
	<tfoot>
		<tr>
                <th  align="center">Delete</th>
			<th width="4%" align="center">Sr No</th>
                <th  align="center">TripId</th>
                <th  align="center">VehicleRegNo</th>
                <th  align="center">VehLocName</th>
                  <th  align="center">Start Location</th>
                                <th  align="center">End Location</th>
                
                
                
		</tr>

	</tfoot>
</table>
<%}else{
	String vianame=request.getParameter("vianame");
	
	String detetequery="delete from db_gps.ViaPoints where TripId='"+Tripid+"' and Vehcode='"+VehicleCode+"' and ViaLocName='"+vianame+"'";
	st2.executeUpdate(detetequery);
	%>
	<input type="hidden" id="tripid" name="tripid"
			value="<%=Tripid%>" />
			<input type="hidden" id="vehcode" name="vehcode"
				value="<%=VehicleCode%>" />
				
			<% 
			out.println("<script>  Redirect();</script>");	
}

	%>

<%@ include file ="footernew.jsp" %>

</body>
</html>

