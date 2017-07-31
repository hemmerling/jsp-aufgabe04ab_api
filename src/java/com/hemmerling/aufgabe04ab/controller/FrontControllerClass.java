/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hemmerling.aufgabe04ab.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.Map;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Properties;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author rhemmerling
 */
@WebServlet(name = "FrontController", urlPatterns = {"/FrontController"})
public class FrontControllerClass extends HttpServlet {

    private static final String ACTION = "todo";

    private static final String REQUESTPARAMETERS = "RequestParameters";
    private static final String REQUESTHEADERS = "RequestHeaders";
    private static final String REQUESTATTRIBUTES = "RequestAttributes";
    private static final String REQUESTMETHODS = "RequestMethods";

    private static final String RESPONSEHEADERS = "ResponseHeaders";
    private static final String RESPONSEMETHODS = "ResponseMethods";

    private static final String SESSIONATTRIBUTES = "SessionAttributes";
    private static final String SESSIONMETHODS = "SessionMethods";

    private static final String CONTEXPARAMETERS = "ContextParameters";
    private static final String CONTEXATTRIBUTES = "ContextAttributes";
    private static final String CONTEXMETHODS = "ContextMethods";

    private static final String DEFAULT = "Default";

    private static final String VIEWPAGE = "view.jsp";
    private static final String TOPIC = "topic";

    private static Properties actionMap = new Properties();

//    interface Action {
//    public abstract void execute(HttpServletRequest request, HttpServletResponse response)
//                         throws ServletException, IOException;
//    }
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        Object obj = session.getAttribute(TOPIC);

        String todo = request.getParameter(ACTION);
//        if (todo != null && !todo.trim().isEmpty()) {
//            String className = actionMap.getProperty(todo);
//            Action action = (Action) Class.forName(className).newInstance();
//            action.execute(request, response);
//        }
        if (todo != null && !todo.trim().isEmpty()) {
            switch (todo) {
                case REQUESTPARAMETERS: {
                    Map<String, String[]> map;
                    map = (Map<String, String[]>) request.getParameterMap();
                    Topic topic = new Topic(REQUESTPARAMETERS, "Key", "Value", map);
                    session.setAttribute(TOPIC, topic);
                    break;
                }
                case REQUESTHEADERS: {
                    Map<String, String[]> map = new HashMap<String, String[]>();
                    Enumeration enum2 = request.getHeaderNames();
                    while (enum2.hasMoreElements()) {
                        String name = enum2.nextElement().toString();
                        map.put(name,new String[]{request.getHeader(name)});
                        Topic topic = new Topic(REQUESTHEADERS, "Key", "Value", map);
                        session.setAttribute(TOPIC, topic);
                    };
                    break;
                }
                case REQUESTATTRIBUTES: {
                    Map<String, String[]> map = new HashMap<String, String[]>();
                    Enumeration enum2 = request.getAttributeNames();
                    while (enum2.hasMoreElements()) {
                        String name = enum2.nextElement().toString();
                        map.put(name,new String[]{(String)request.getAttribute(name)});
                        Topic topic = new Topic(REQUESTATTRIBUTES, "Key", "Value", map);
                        session.setAttribute(TOPIC, topic);
                    };
                    break;
                }
                case RESPONSEHEADERS: {
                    response.setHeader("Content-Language","en");
                    
                    Map<String, String[]> map = new HashMap<String, String[]>();
                    Collection<String> coll2;
                    coll2 = response.getHeaderNames();
                    for (String name:coll2) {
                        map.put(name,new String[]{(String)response.getHeader(name)});
                        Topic topic = new Topic(RESPONSEHEADERS, "Key", "Value", map);
                        session.setAttribute(TOPIC, topic);
                    };
                    break;
                }
               case SESSIONATTRIBUTES: {
                    String aRequestParameter = request.getParameter("myAction");
                    if(aRequestParameter == null) {
                        aRequestParameter = "Request parameter not set";
                    }
                    session.setAttribute("myAction", aRequestParameter); 
                    
                    Map<String, String[]> map = new HashMap<String, String[]>();
                    Enumeration enum2 = session.getAttributeNames();
                    while (enum2.hasMoreElements()) {
                        String name = enum2.nextElement().toString();
                        map.put(name,new String[]{(String)session.getAttribute(name)});
                        Topic topic = new Topic(SESSIONATTRIBUTES, "Key", "Value", map);
                        session.setAttribute(TOPIC, topic);
                    };
                    break;
                }
               case CONTEXATTRIBUTES: {
                    ServletContext context2 = request.getServletContext();                    
                    Map<String, String[]> map = new HashMap<String, String[]>();
                    Enumeration enum2 = context2.getAttributeNames();
                    while (enum2.hasMoreElements()) {
                        String name = enum2.nextElement().toString();
                        map.put(name,new String[]{context2.getAttribute(name).toString()});
                        Topic topic = new Topic(CONTEXATTRIBUTES, "Key", "Value", map);
                        session.setAttribute(TOPIC, topic);
                    };
                    break;
                }
               case CONTEXPARAMETERS: {
                    ServletContext context2 = request.getServletContext();                    
                    Map<String, String[]> map = new HashMap<String, String[]>();
                    Enumeration enum2 = context2.getInitParameterNames();
                    while (enum2.hasMoreElements()) {
                        String name = enum2.nextElement().toString();
                        map.put(name,new String[]{(String)context2.getInitParameter(name)});
                        Topic topic = new Topic(CONTEXPARAMETERS, "Key", "Value", map);
                        session.setAttribute(TOPIC, topic);
                    };
                    break;
                }
               case DEFAULT: {
                    Map<String, String[]> map = new HashMap<String, String[]>();
                    map.put("leftHeader",new String[]{"rightHeader"});
                    Topic topic = new Topic(DEFAULT, "Key", "Value", map);
                    session.setAttribute(TOPIC, topic);
                    break;
                }
            }
        }
        RequestDispatcher requestDispatcher = request.getRequestDispatcher(VIEWPAGE);
            requestDispatcher.forward(request, response);
        }

        // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
        /**
         * Handles the HTTP <code>GET</code> method.
         *
         * @param request servlet request
         * @param response servlet response
         * @throws ServletException if a servlet-specific error occurs
         * @throws IOException if an I/O error occurs
         */
        @Override
        protected void doGet
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
        }

        /**
         * Handles the HTTP <code>POST</code> method.
         *
         * @param request servlet request
         * @param response servlet response
         * @throws ServletException if a servlet-specific error occurs
         * @throws IOException if an I/O error occurs
         */
        @Override
        protected void doPost
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
        }

        /**
         * Returns a short description of the servlet.
         *
         * @return a String containing servlet description
         */
        @Override
        public String getServletInfo
        
            () {
        return "Short description";
        }// </editor-fold>

    }
