package com.arno.user;

import com.arno.user.dao.UserMapper;
import com.arno.user.domain.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.BeforeClass;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;


/**
 * Created by arno on 15-2-2.
 */
public class testdatebase {
    //nce created, the SqlSessionFactory should exist for the duration of your application execution
    private static SqlSessionFactory sessionFactory;


    public static  void init(){
        String resource = "mybatis-config.xml";
        InputStream inputStream = null;
        try{
            inputStream = Resources.getResourceAsStream(resource);
        }catch (IOException e){
            e.printStackTrace();
        }
        // sessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        sessionFactory = new SqlSessionFactoryBuilder().build(inputStream,"development");
    }


    public void selectUserByAnnotation(){
        init();
        SqlSession session = sessionFactory.openSession();
        try {
            UserMapper mapper = session.getMapper(UserMapper.class);
            User blog = mapper.selectUser(1);
            System.out.println(blog);
        } finally {
            session.close();
        }
    }


    public void selectUserByXML(){
        init();
        SqlSession  session = sessionFactory.openSession();
        UserMapper mapper = session.getMapper(UserMapper.class);
        User user =mapper.selectUserById(2);
        System.out.println(user);
        session.close();
    }


    public void deleteUser(){
        SqlSession session = sessionFactory.openSession();
        UserMapper mapper = session.getMapper(UserMapper.class);
        mapper.deleteUserById(3);
    }

    public static void main(String[] args){
        testdatebase test = new testdatebase();
        test.selectUserByAnnotation();
    }

}
