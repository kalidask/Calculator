
<%@ page contentType="text/html; charset=UTF-8" %>
<%@page import="com.javacodegeeks.ejb.*, javax.naming.InitialContext" %>

<%!
     OperationSessionBeanLocal ops = null;
    float result = 0;
    

    public void jspInit() {
        try {

            InitialContext ic = new InitialContext();
         //  InitialContext ejbic =(InitialContext)ic.lookup("java:global/Calculator_web/OperationSessionBean!com.javacodegeeks.ejb.OperationSessionBeanLocal");
           OperationSessionHome home=(OperationSessionHome) ic.lookup("OperationSessionBean");
            ops = home.create();
           
           
            //EAP 5
         // ops = (OperationSessionBeanLocal)ic.lookup("OperationSessionBean/local");
          //EAP 6&7
      //ops = (OperationSessionBeanLocal) ic.lookup("java:global/Calculator_web/OperationSessionBean");
       //  ops = (OperationSessionBeanLocal) ic.lookup("java:global/Calculator_web/OperationSessionBean!com.javacodegeeks.ejb.OperationSessionBeanLocal");
          
            

            System.out.println("Loaded Calculator Bean");


        } catch (Exception ex) {
            System.out.println("Error:"
                    + ex.getMessage());
            ex.printStackTrace();
        }
    }

    public void jspDestroy() {
        ops = null;
    }
%>


<%

    try {
        String s1 = request.getParameter("num1");
        String s2 = request.getParameter("num2");
        String s3 = request.getParameter("group1");

        System.out.println(s3);

        if (s1 != null && s2 != null) {
            Float num1 = new Float(s1);
            Float num2 = new Float(s2);

            if (s3.equals("add")) {
                result = ops.add(num1.floatValue(), num2.floatValue());
            } else if (s3.equals("sub")) {
                result = ops.subtract(num1.floatValue(), num2.floatValue());
            } else if (s3.equals("multi")) {
                result = ops.multiply(num1.floatValue(), num2.floatValue());
            } else {
                result = ops.divide(num1.floatValue(), num2.floatValue());
            }

%>
<p>
    <b>The result is:</b> <%= result%>
<p>

    <%
            }
        }// end of try
        catch (Exception e) {
            e.printStackTrace();
            //result = "Not valid";
        }
    %>
