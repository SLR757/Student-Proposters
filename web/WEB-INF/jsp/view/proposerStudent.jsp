<template:user_backend htmlTitle="贫困生申请" bodyTitle="贫困生申请">

    <div class="col-md-11">
        <div class="panel panel-success">
            <div class="panel-heading"
                 style="background-color:#0b7285;color: white">
                <span class="glyphicon glyphicon-book"></span> 贫困生申请表
            </div>
            <div class="panel-body">
                <form action="${cx}/student/proposer"  method="POST" enctype="multipart/form-data">
                    <fieldset>
                        <div class="form-group ">
                            <label class="control-label">姓名</label>
                            <input type="text" style="width: 280px;display: inline-block;"
                                   class="form-control" placeholder="请输入学生姓名" name="name"/>
                            <label class="control-label">性别</label>
                            <select class="form-control" name="sex" style="width: 280px;display: inline-block;">
                                <option value="男">男</option>
                                <option value="女">女</option>
                                <option value="不公开">不公开</option>
                            </select>
                            <label class="control-label">身份证号</label>
                            <input type="text" style="width: 280px;display: inline-block;" class="form-control" placeholder="" name="name"/>
                            <%--<div class="fileUpload">--%>
                                <label class="control-label" style="margin-left: 20px;">照片</label>
                                    ${msg}
                                <input type="file" name="file" value=""  multiple="multiple" style="display: inline-block"/>
                            <%--</div>--%>
                        </div>
                        <div class="form-group ">
                            <label class="control-label">电话号码</label>
                            <input type="text" style="width: 240px;display: inline-block" class="form-control" placeholder="请输入电话号码" name="cellphone"/>
                            <label class="control-label">是否低保</label>
                            <select class="form-control" name="Dibao" style="width: 280px;display: inline-block;">
                                <option value="是">是</option>
                                <option value="否">否</option>
                                <option value="不公开">不公开</option>
                            </select>
                            <label class="control-label">是否建档</label>
                            <select class="form-control" name="Jiandang" style="width: 280px;display: inline-block;">
                                <option value="是">是</option>
                                <option value="否">否</option>
                                <option value="不公开">不公开</option>
                            </select>
                        </div>
                        <div class="form-group ">
                            <label class="control-label">家庭情况</label>
                        </div>
                        <div class="form-group ">
                            <label class="control-label">父亲姓名</label>
                            <input type="text" style="width: 280px;display: inline-block;"
                                   class="form-control" placeholder="请输入父亲姓名" name="name"/>
                            <label class="control-label">联系方式</label>
                            <input type="text" style="width: 280px;display: inline-block;"
                                   class="form-control" placeholder="请输入联系方式" name="name"/>
                            <label class="control-label">工作单位</label>
                            <input type="text" style="width: 280px;display: inline-block;"
                                   class="form-control" placeholder="请输入工作单位" name="name"/>
                        </div>
                        <div class="form-group ">
                            <label class="control-label">母亲姓名</label>
                            <input type="text" style="width: 280px;display: inline-block;"
                                   class="form-control" placeholder="请输入母亲姓名" name="name"/>
                            <label class="control-label">联系方式</label>
                            <input type="text" style="width: 280px;display: inline-block;"
                                   class="form-control" placeholder="请输入联系方式" name="name"/>
                            <label class="control-label">工作单位</label>
                            <input type="text" style="width: 280px;display: inline-block;"
                                   class="form-control" placeholder="请输入工作单位" name="name"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">家庭平均月收入</label>
                            <input type="text" style="width: 280px;display: inline-block;"
                                   class="form-control" placeholder="" name="name"/>
                        </div>
                        <div class="form-group ">
                            <label class="control-label">家庭地址</label>
                            <textarea  class="form-control" name="address" rows="3" cols="10">
                                请输入详细的家庭地址，具体到区
                            </textarea>
                        </div>
                        <div class="form-group ">
                            <label class="control-label">申请理由</label>
                            <textarea  class="form-control" name="address" rows="6" cols="28">
                                请输入申请理由
                            </textarea>
                        </div>

                        <div class="form-group">
                            <div class="fileUpload">
                            <label class="control-label">附件</label>
                                ${msg};
                            <input type="file" name="file" value=""  multiple="multiple"/>
                            </div><br/><br/>
                            <button id="addFile" type="button" class="btn btn-success" > 继续添加</button>
                        </div>
                            <p class="col-lg-4 col-lg-offset-4">
                                <button class="btn btn-default">重置</button>
                                <button class="btn"  style="background-color:#0b7285;color: white">申请表单</button>
                        </p>
                    </fieldset>
                </form>
            </div>

        </div>
    </div>
    <script>
        //设置页面对应的菜单选项
        var ItemId = "Item1_8";

        $(document).ready(function () {
            //添加文件控件
            $("#addFile").click(function () {
                $(".fileUpload:last").clone().insertBefore($("#addFile"));
                return false;
            });
        });

    </script>
</template:user_backend>
