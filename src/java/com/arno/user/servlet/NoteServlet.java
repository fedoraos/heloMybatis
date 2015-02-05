package com.arno.user.servlet;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.arno.user.dao.UserMapper;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class NoteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static SqlSessionFactory sqlSessionFactory;

    static {
        InputStream inputStream = null;
        try {
            inputStream = Resources.getResourceAsStream("mybatis-config.xml");
        } catch (IOException e) {
            e.printStackTrace();
        }
        sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
    }

    /**
     * @see javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    /**
     * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String status = request.getParameter("status");
        String path = "note_list.jsp";

        SqlSession session = sqlSessionFactory.openSession();
        UserMapper udao = session.getMapper(UserMapper.class);
        if ("queryAll".equals(status)) {

            request.setAttribute("users", udao.selectUser(1));
        }
        if ("queryByUserid".equals(status)) {
            String uid = request.getParameter("id");
            request.setAttribute("users", udao.selectUser(1));

        }
        if ("queryByNoteid".equals(status)) {
            String nid = request.getParameter("id");

            path = "note_content.jsp";
        }
        request.getRequestDispatcher(path).forward(request, response);
    }

}
