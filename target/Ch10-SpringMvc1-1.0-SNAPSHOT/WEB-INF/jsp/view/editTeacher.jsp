
<template:user_backend htmlTitle="编辑教师信息" bodyTitle="编辑教师信息">
    <form method="POST" action="${cx}/Teacher/update/"
          enctype="multipart/form-data">


        <div class="form-group">
            <label for="firstname1" class="col-sm-1 control-label">学生ID#</label>
            <div class="col-sm-6">
                <input type="text" name="teacherId" value="${teacher.teacherId}" class="form-control" id="firstname1" >
            </div>
        </div><br/><br/>

        <div class="form-group">
            <label for="firstname" class="col-sm-1 control-label">名字</label>
            <div class="col-sm-6">
                <input type="text" name="name"
                       disabled value="${teacher.name}" class="form-control" id="firstname"
                      >
            </div>
        </div><br/><br/>

        <div class="form-group">
            <label for="firstname2" class="col-sm-1 control-label">电话号码</label>
            <div class="col-sm-6">
                <input type="text" name="cellphone" value="${teacher.cellphone}" class="form-control" id="firstname2"
                       placeholder="请输入电话号码">
            </div>
        </div><br/><br/>
        <div class="col-sm-8 col-sm-offset-1">

            <strong>性别 </strong><br/>

            <select  name="type">
                <option value="男" ${teacher.sex eq "男" ? "selected" : ""}>男</option>
                <option value="女" ${teacher.sex eq "女" ? "selected" : ""}>女</option>
                <option value="不公开" ${teacher.sex eq "不公开" ? "selected" : ""}>不公开</option>

            </select><br/><br/>
            <input type="hidden" name="name"   value="${teacher.name}"><br/><br/>
            <strong> 家庭地址</strong><br/>
            <textarea name="address" rows="5" cols="30">${teacher.address}
            </textarea><br/><br/>
           <strong> 状态</strong><br/>
            <td><c:if test="${teacher.status eq 0}"><kbd>未审核</kbd></c:if>
                <c:if test="${teacher.status eq 1}"><kbd>审核通过</kbd></c:if></td>
            <td><br/><br/>

                <strong>创建时间:</strong><br/>
                    <fmt:formatDate value="${teacher.dateCreated}"
                                    pattern="yyyy年MM月dd日 E hh时mm分ss秒"/>
                <br/><br/>

                <input type="submit" value="提交" class="btn btn-default"/>
        </div>

    </form>
    <script>
        //设置页面对应的菜单选项
        var ItemId ="Item1_00";
    </script>
</template:user_backend>
