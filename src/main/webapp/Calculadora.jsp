<%-- 
    Document   : Calculadora
    Created on : Sep 26, 2020, 7:01:58 PM
    Author     : DANIEL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Calculadora" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado</title>
    </head>
    <body>
        <a href="index.html"> Regresar </a>
        <%! double number1, number2;
            Calculadora calculadora;
            String add, sub, mult, div, higher, pow, bin;
        %>
        <div style="text-align: center">
        <h1>Los resultados son</h1>
        <% 
            calculadora = new Calculadora();

            number1 = (!request.getParameter("1").isBlank()) ? 
                    Double.parseDouble(request.getParameter("1")) : 0;
            number2 = (!request.getParameter("2").isBlank()) ? 
                    Double.parseDouble(request.getParameter("2")) : 0;
            
            add = (request.getParameter("add") != null)?
                    request.getParameter("add") : "false";
            
            sub = (request.getParameter("substract") != null)?
                    request.getParameter("substract") : "false";
            
            mult = (request.getParameter("multiply") != null)?
                    request.getParameter("multiply") : "false";
            
            div = (request.getParameter("divide") != null)?
                    request.getParameter("divide") : "false";
            
            higher = (request.getParameter("higher") != null)?
                    request.getParameter("higher") : "false";
                    
            pow = (request.getParameter("power") != null)?
                    request.getParameter("power") : "false";
                    
            bin = (request.getParameter("binary") != null)?
                    request.getParameter("binary") : "false";
            if (add.equals("true")) { %>
                <h3>
                    <%=number1 + " + " + number2 + "= "%>
                    <%=calculadora.add(number1, number2)%>
                </h3>
        <%        }
            if (sub.equals("true")) {%>
                <h3>
                    <%=number1 + " - " + number2 + "= "%>
                    <%=calculadora.substract(number1, number2)%>
                </h3>
        <%        }
            if (mult.equals("true")) {%>
                <h3>
                    <%=number1 + " * " + number2 + "= "%>
                    <%=calculadora.multiply(number1, number2)%>
                </h3>
        <%        }
            if (div.equals("true")) {%>
                <h3>
                    <%=number1 + " / " + number2 + "= "%>
                    <%=calculadora.divide(number1, number2)%>
                </h3>
     <%        }
            if (higher.equals("true")) {%>
                <h3>
                    <%="Entre " + number1 + " y " + number2 + " el  mayor es: "%>
                    <%=calculadora.higher(number1, number2)%>
                </h3>
<%        }
            if (pow.equals("true")) {%>
                <h3>
                    <%=number1 + " ^ " + number2 + "= "%>
                    <%=calculadora.power(number1, number2)%>
                </h3>
<%        }
            if (bin.equals("true")) {%>
                <h3>
                    <%=number1 + " en binario: "%>
                    <%=calculadora.binary(number1)%>
                </h3>
                <h3>
                    <%=number2 + " en binario: "%>
                    <%=calculadora.binary(number2)%>
                </h3>
        <%        }
        %>
        </div>
    </body>
</html>
