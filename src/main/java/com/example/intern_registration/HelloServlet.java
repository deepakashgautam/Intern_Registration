package com.example.intern_registration;

import org.jetbrains.annotations.NotNull;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.PreparedStatement;
import java.sql.*;






@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init()
    {

    }

    public void doGet(HttpServletRequest req, @NotNull HttpServletResponse resp) throws IOException {
        resp.setContentType("text/html");

        // Hello

        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        String name  =req.getParameter("name");
        String legalname  =req.getParameter("legalname");
        String emailid  =req.getParameter("emailid");
        String phone  =req.getParameter("phone");
        String address  =req.getParameter("address");
        String startdate  =req.getParameter("startdate");
        String enddate  =req.getParameter("enddate");
        String s_salary  =req.getParameter("s_salary");
        String l_salary  =req.getParameter("l_salary");
        String bank  =req.getParameter("bank");
        String accountid  =req.getParameter("accountid");


        try{
            Connection connection = DBConnect.getConnection();
            Statement statement = connection.createStatement();

            String query = "insert into rgt(name,legalname,emailid,phone,address,startdate,enddate,s_salary,l_salary,bank,accountid)values(?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pst = connection.prepareStatement(query);


            pst.setString(1, name);
            pst.setString(2, legalname);
            pst.setString(3, emailid);
            pst.setString(4, phone);
            pst.setString(5, address);
            pst.setString(6, startdate);
            pst.setString(7, enddate);
            pst.setString(8, s_salary);
            pst.setString(9, l_salary);
            pst.setString(10,bank);
            pst.setString(11,accountid);

            pst.execute();

            out.println("Data Inserted Successfully");

            connection.close();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

    public void destroy() {
    }
}