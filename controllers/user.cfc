<cfcomponent accessors="true" output="false">

	<cfproperty name="userService">

	<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

	<cfscript>

		<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

		function init( fw ) {
			variables.fw = fw;
			return this;
		}

		<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

		function authorize (rc){
		rc.qLogin = userService.login(rc.username, rc.password);
		if (rc.qLogin.RecordCount Greater THAN 0){
					session.auth.isLoggedIn = true;
					session.auth.role = rc.qLogin.role;
					session.auth.userName = rc.qLogin.username;
					session.auth.userId = rc.qLogin.id;
					if(session.auth.role EQ "admin"){
						variables.fw.redirect('admin.list');
					}
					else{
						variables.fw.redirect('blog.list');
					}
			}
		else{
			location(url="userlogin.cfm?action=user.userlogin&error=Authorization Failed! Please Try again.", addtoken="false");
			}

		}

		<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

		function logout(rc){
			session.auth = {};
			session.auth.isLoggedIn = false;
			session.auth.userId = '0';
			session.auth.userName = 'Guest';
			session.auth.role = 'none';
		}

		<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

	</cfscript>

	<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

</cfcomponent>
