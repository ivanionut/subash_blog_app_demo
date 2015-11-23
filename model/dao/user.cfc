<cfcomponent accessors="true">

	<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

	<cffunction name="init" hint="I return an instance of myself">
		<cfreturn this>
	</cffunction>

	<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

	<cffunction name="login" returntype="query" hint="I return a list of blog entries">
		<cfargument name="username" type="string" required="true" hint="I am username" displayname="username" />
		<cfargument name="password" type="string" required="true"hint="I am password" displayname="password" />
		<cfset var qLogin = "">

		<cfquery name="qLogin">
					SELECT id, username, password, role
					FROM users
					WHERE username = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.username#"> AND password = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.password#">;
		</cfquery>

		<cfreturn qLogin>

	</cffunction>

	<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

</cfcomponent>