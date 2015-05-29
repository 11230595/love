<!-- 已经创建的地址 -->
<div class="col-md-7 col-md-push-5" id="created">
	<table class="table table-hover">
	   <caption>已经生成的网址</caption>
	   <thead>
	      <tr>
	         <th style="width:50%">网址</th>
	         <th style="width:30%">访问</th>
	         <th style="width:30%">操作</th>
	      </tr>
	   </thead>
	   <tbody>
	   	  <#list temps as temp>
		      <tr>
		         <td>${url!''}i/${temp.webCode!''}</td>
		         <td><a href="${url!''}i/${temp.webCode!''}" target="_blank">访问</a></td>
		         <td><a href="javascript:void(0);" onclick="deleteWeb('${temp.id}')">删除</a></td>
		      </tr>
	      </#list>
	   </tbody>
	</table>
</div>

<!-- 修改个人资料 -->
<div class="col-md-7 col-md-push-5" id="updateUser" style="display:none;">
	<h2><span class="text-muted">修改密码<span class="text-muted"><h2>
	<div class="input-group">
	 <span class="input-group-addon">旧密码</span>
	 <input type="password" class="form-control" id="oldPassword" onblur="checkOldPassword(this);" placeholder="旧密码">
	</div>
	<div class="input-group">
	 <span class="input-group-addon">新密码</span>
	 <input type="password" class="form-control" placeholder="新密码" id="password">
	</div>
	<div class="input-group">
	 <span class="input-group-addon">新密码</span>
	 <input type="password" class="form-control" placeholder="确认密码" id="password1">
	</div>
	<p>&nbsp;</p>
	<p class="lead">
		<a class="btn btn-default" href="javascript:void(0);" onclick="updateUser();" role="button">修改</a>
	</p>
</div>