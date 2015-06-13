<%@ page language="java"  pageEncoding="gbk"%>

<div id="content" class="span10">
	<div>
		<ul class="breadcrumb">
			<li>
				<a href="#">Home</a> <span class="divider">/</span>
			</li>
			<li>
				<a href="#">������</a>
			</li>
		</ul>
	</div>
	<div id="queryForTopic" class="row-fluid sortable">
	<div class="box span12">
		<div class="box-header well" data-original-title>
			<h2><i class="icon-globe"></i> ��������</h2>
			<div class="box-icon">
				<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
				<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
				<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
			</div>
		</div>
		<div class="box-content">
			<%@ include file="div_part/queryForTopic.jsp" %>
		</div>
	</div>
	</div>
	<div id="topicImportParent" class="row-fluid sortable" >
		<div id="topicImport" class="box span12" style="display:none">
			<div class="box-header well" data-original-title>
				<h2><i class="icon-search"></i> <span id="topicImportTitle"></span></h2>
				<div class="box-icon">
					<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
					<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
					<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
				</div>
			</div>
		</div>
	</div>
</div>