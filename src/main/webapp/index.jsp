<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <!--<meta charset ="utf-8">-->
    <title>INTERN_REGISTRATION</title>


    <style>
        form
        {
            display: inline-block;
            background-color: #B5E6F7;
            padding: 9px;
        }

        label{

            display: block;
            direction: rtl;
        }

        input{
            direction: ltr;
        }

        label::after{
            content: attr(data-text);
        }


        body {    margin: 0px;
            text-align: center;
            background-color: #ecfcff;
            font-family:  cursive;
        }
        hr{
            border-color: grey;
            border-style: dotted;
            border-bottom-width: 6px;
            border-top-width: 0;
            width: 3%
        }
        h1:hover{

            color: #8186d5;

        }
    </style>

</head>
<form  action="/hello-servlet" method="get">

    <table>

        <tr>
            <td colspan="2"><h1>INTERN REGISTRATION FORM</h1></td>
        </tr>


        <tr>
            <td><label for="NAME">Name</label></td>
            <td><input type="text" id="name" name="name" placeholder="Name"></td>
        </tr>

        <tr>
            <td><label for="Legal Name">Legal Name</label></td>
            <td><input type="text" id="legalname" name="legalname" placeholder="First&Last Name"></td>
        </tr>

        <tr>
            <td><label for="Email ID">Email ID</label></td>
            <td><input type="text" id="emailid" name="emailid" placeholder="Email"></td>
        </tr>

        <tr>
            <td><label for="PHONE NUMBER">Phone_NO</label></td>
            <td><input type="text" id="phone" name="phone" placeholder="Phone"></td>
        </tr>

        <tr>
            <td><label for="Address">Address</label></td>
            <td><textarea type="text" id="address" name="address" rows="2" placeholder="Address"></textarea></td>
        </tr>


        <tr>
            <td><label for="START DATE" >Internship Start Date</label></td>
            <td><input type="date" id="startdate" name="startdate" placeholder="START DATE"></td>
        </tr>

        <tr>
            <td><label for="END DATE">Internship End Date</label></td>
            <td><input type="date" id="enddate" name="enddate" placeholder="END DATE"></td>
        </tr>

        <tr>
            <td><label for="Started Salary">Started Sallary Amount</label></td>
            <td><input type="text" id="s_salary" name="s_salary" placeholder="Start Salary"></td>
        </tr>

        <tr>
            <td><label for="last salary">Last Sallary Amount</label></td>
            <td><input type="text" id="l_salary" name="l_salary" placeholder="Last Salary"></td>
        </tr>

        <tr>
            <td><label for="bank name">BANK NAME</label></td>
            <td><input type="text" id="bank" name="bank" placeholder="Bank Name"></td>
        </tr>

        <tr>
            <td><label for="Account-ID">Account-ID</label></td>
            <td><input type="text" id="accountid" name="accountid" placeholder="Account No."></td>
        </tr>

        <tr>
            <td colspan="2"><button type='submit'  value="/Servlet1">SubMit</button></td>
            <td ><input type="reset" value="reset"/></td>
        </tr>

    </table>
</form>
<a href="hello-servlet">Hello Servlet</a>

</body>

</html>