<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/26
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path=request.getContextPath();%>
<html>
<head>
    <meta charset="utf-8">
    <title>设置我的资料</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link href="/static/common/image/hdrc.jpg" sizes="128x128" rel="shortcut icon" type="image/x-icon" />
    <link href="/static/common/image/hdrc.jpgo" sizes="128x128" rel="shortcut icon" />
    <link rel="stylesheet" href="<%=path%>/static/layuiadmin/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="<%=path%>/static/layuiadmin/style/admin.css" media="all">
    <style type="text/css">
        #add1, #add2, #add3,#add4,#add5 {
            /*width: 260px;*/
            /*height: 150px;*/
            cursor: pointer;
            opacity: 0;
            position: absolute;
            top: 0;
            left: 0;
        }
        .info_title{margin-left: 0;}
    </style>
</head>

<body>

<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-header">修改密码</div>
                <div class="layui-card-body" pad15>
                    <div class="layui-form" id="admin" lay-filter="">
                        <div class="layui-form-item">
                            <label class="layui-form-label">旧密码</label>
                            <div class="layui-input-inline">
                                <input type="password" id="oldPwd" name="phone" value="" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">新密码</label>
                            <div class="layui-input-inline">
                                <input type="password" id="newPwd" name="phone" value="" autocomplete="off" class="layui-input">
                            </div>
                        </div> <div class="layui-form-item">
                        <label class="layui-form-label">确认密码</label>
                        <div class="layui-input-inline">
                            <input type="password" id="confirmPwd" name="phone" value="" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button class="layui-btn" lay-submit lay-filter="setmyinfo">确认修改</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="<%=path%>/static/common/jquery.min.js"></script>
<script src="<%=path%>/static/layuiadmin/layui/layui.js"></script>
<script>
    layui.config({
        base: '<%=path%>/static/layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index']);
    layui.use(['form','layer','upload'], function(){
        var form = layui.form;
        var layer =layui.layer;
        var upload =layui.upload;

        //普通图片上传
        var uploadInst = upload.render({
            elem: '#test1'
            ,size:2048, url: '/upload/image/uploadImg'
            ,data: {
                baseCatalog: "/static/upload/image/admin"
            }
            ,before: function(obj){
                //预读本地文件示例，不支持ie8
                obj.preview(function(index, file, result){
                    if(file.size>1024*1024*2){
                    }else{
                        $('#demo1').attr('src', "<%=path%>/"+result); //图片链接（base64）
                    }

                });
            }
            ,done: function(res){
                //如果上传失败
                if(res.code == 0){
                    console.log(res.data);
                    $('#demo1').attr('src', "<%=path%>/"+res.data);
                    return layer.msg('上传成功');
                }else{
                    return layer.msg(res.msg);
                }
                //上传成功
            }
            ,error: function(){
                //演示失败状态，并实现重传
                var demoText = $('#demoText');
                demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                demoText.find('.demo-reload').on('click', function(){
                    uploadInst.upload();
                });
            }
        });
        form.on("submit(setmyinfo)",function(res){
            var id='${admin.id}';
            var oldPwd=$("#oldPwd").val();
            var newPwd=$("#newPwd").val();
            var confirmPwd=$("#confirmPwd").val();
            if(newPwd!=confirmPwd){
                alert("密码不一致");
                return false;
            }
            var data={};
            data.id=id;
            data.oldPwd=oldPwd;
            data.newPwd=newPwd;
            $.post("<%=path%>/admin/updatePassword",data,function(res){
                if(res.code==0){
                    layer.msg(res.msg);
                }else{
                    layer.msg(res.msg);
                }
            });
        })
    });
</script>
</body>
</html>