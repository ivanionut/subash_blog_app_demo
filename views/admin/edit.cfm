<cfoutput>
<div style="background-color: RGBA(63, 175, 255, 0.2); padding:10px;">
	<form name="saveForm" action="#buildUrl('admin.save')#" method="post">
		<textarea rows="10" cols="60" name="content" style="width:100%;">#rc.qPost.post_content#</textarea><br/><br/>
		<button type="submit" class="btn btn-default" name="save">Save</button>
		<input type="hidden" name="id" value="#url.id#"/>
	</form>
	<cfif isDefined("url.sMessage")>
		<cfoutput><span class = "label label-success">#url.sMessage#</span></cfoutput>
	</cfif>
</div>
<a href="#buildUrl('admin.list')#"><br/>Go Back</a>
</cfoutput>