<h3 class="list-group-item active">Blog Entries</h3>
<cfoutput query="rc.qReturn">
	<ul class="list-unstyled">
		<li>
			<h3 class="list-group-item" style="padding-top:0px;">
					<a href="#buildURL('admin.edit?id=#rc.qReturn.id#')#" class="list-group-ite" ><br>#rc.qReturn.currentrow#. #rc.qReturn.post_title#</a>
			</h3>
		</li>
	</ul>
</cfoutput>
<cfoutput><a href="#buildUrl('user.logout')#"><h4><button type="button" class="btn btn-danger pull-right">Logout</button></h4></a></cfoutput>