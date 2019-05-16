package jee.support.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import jee.support.dao.AttachmentDao;
import jee.support.dao.TeacherDao;
import jee.support.entity.Attachment;
import jee.support.entity.Teacher;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

//TicketDao类,封装对ticket对象CRUD操作
@Service
public class TeacherService {
    @Autowired
    TeacherDao teacherDao;

    @Autowired
    AttachmentDao attachmentDao;
    //根据id获取票据对象,如果不存在返回null
    public Teacher getTeacher(long id) {
        return teacherDao.getTeacher(id);
    }

    // 添加票据,返回该票据对应的id号
    @Transactional(rollbackFor = Exception.class)  //处理事务回滚
    public long addTeacher(Teacher teacher) {
        //设置票据默认信息
        teacher.setDateCreated(new Date());
        teacher.setStatus(0);
        teacherDao.addTeacher(teacher);
        // 插入票据记录,获取票据id
        long teacherId = teacher.getTeacherId();
        System.out.println("new id:" + teacherId);
        //插入附件记录到数据库
        for (Attachment attachment: teacher.getAttachments()) {
            teacher.setTeacherId(teacherId);//设置ticketId
            attachmentDao.addAttachment(attachment);
        }
         return teacherId;
    }

    //删除学生信息
    @Transactional
    public int delTeacher(long teacherId) {
        return teacherDao.delTeacher(teacherId);
    }

    //根据票据主体进行模糊查询
    public List<Teacher> findByNameLike(String keyword){
        return teacherDao.findByNameLike(keyword) ;
    }
//动态查询
  public List<Teacher> findByNameAndSex(String keyword){
        return teacherDao.findByNameAndSex(keyword);
  }



    //更新票据信息
//    返回受影响的行数
    @Transactional
    public int  updateTeacher(long id, Teacher teacher) {
        teacher.setTeacherId(id); //设置更新的ticket的id
        return teacherDao.updateTeacher(teacher);
    }

     //获取票据列表
    //入参: 当期页, 每页的记录数
    public PageInfo<Teacher> findTeacherList(int page, int size){
        PageHelper.startPage(page, size);
        List list = teacherDao.findAllTeacher();
        PageInfo<Teacher> pageInfo = new PageInfo<>(list);

        return  pageInfo;  //获取分页对象
    }

    public static void main(String[] args) {
        BeanFactory factory = new ClassPathXmlApplicationContext("config" +
                "/applicationContext.xml");
        System.out.println(factory);
        TeacherService teacherService = (TeacherService) factory.getBean("teacherService");
//
        Teacher teacher= teacherService.getTeacher(41);
        System.out.println( teacher.getName());
        //查询用户名
        System.out.println( teacher.getAdmin().getAdminname());
    }
}

