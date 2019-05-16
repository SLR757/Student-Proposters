package jee.support.dao;

import jee.support.entity.Teacher;
import org.apache.ibatis.annotations.*;

import java.util.List;

//TeacherDao类,封装对teacher对象CRUD操作
@Mapper
public interface TeacherDao {
    //根据id获取票据对象,如果不存在返回null
    @Select("select * from teacher t where t.teacherId=#{id}")
    @ResultMap("TeacherWithAdminAndAtt") //返回结果使用xml文件定义的resultMap封装
    public Teacher getTeacher(long id);

    //插入票据,返回新票据的id号
    @Insert("insert into teacher(adminId, name, address,DateCreated,cellphone," +
            "sex,status)" +
            " value(#{admin.adminId},#{name},#{address}, #{dateCreated}, #{cellphone}, " +
            "#{sex},#{status})")
    @Options(useGeneratedKeys = true, keyProperty = "teacherId")
    public long addTeacher(Teacher teacher);

    //删除票据
    @Delete("delete from teacher  where teacherId=#{id}")
    public int delTeacher(long teacherId);

    //根据票据主体进行模糊查询
   public List<Teacher> findByNameLike(String keyword);


   public List<Teacher> findByNameAndSex(String keyword);

    //更新票据信息
    @Update("update teacher  set name=#{name}, address=#{address}, cellphone=#{cellphone}," +
            "sex=#{sex} where teacherId=#{teacherId}")
    public int updateTeacher(Teacher teacher);

    //获取票据列表
    @Select("select * from teacher")
    @ResultMap("TeacherWithAdminAndAtt")
    public List<Teacher> findAllTeacher();

}

