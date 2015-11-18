<h3 class="list-group-item active">Blog Entries</h3>
<cfoutput query="rc.qReturn">
	<ul class="list-unstyled">
		<li>
			<h3 class="list-group-item" style="padding-top:0px;">
				<a href="#buildURL('main.getPost?id=#rc.qReturn.id#')#" class="list-group-ite" ><br>#rc.qReturn.currentrow#. #rc.qReturn.post_title#</a>
			</h3>
		</li>
	</ul>
</cfoutput>
