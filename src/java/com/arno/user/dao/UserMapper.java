package com.arno.user.dao;

import com.arno.user.domain.User;
import org.apache.ibatis.annotations.Select;

/**
 * Created by arno on 15-2-2.
 */
public interface UserMapper {
   @Select("SELECT * FROM users WHERE id = #{id}")
   User selectUser(int id);

    User selectUserById(int id);

    void deleteUserById(int id);

}
