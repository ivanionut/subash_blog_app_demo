<cfoutput>
<div id="login">
	<form id="loginform" action="#buildUrl('user.authorize')#" method="post" validate>
		<div class="form-group" >
			<label for="username">
				<b>Username:</b>
			</label><br/>
			<input type="text" class="form-control" name="username" required="yes"></input>
		</div>
		<div class="form-group">
			<label for="password">
				<b>Password:</b>
			</label><br/>
		<input type="password" class="form-control" name="password" required="yes"></input><br/>

		<div style="text-align: center;">
			<input type="submit" class="btn btn-primary" value="Login"></input>
		</div>

		<cfif isdefined("url.error")>
			<br/><span class = "label label-danger">#url.error#</span>
		</cfif>

	</form>
</div>
</cfoutput>