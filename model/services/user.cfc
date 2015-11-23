<cfcomponent accessors="true">

<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

	<cfproperty name="userDAO">

	<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

	<cffunction name="login" returnType="query" access="public" output="false" hint="I return a list of blog entries">
		<cfargument name="username" type="string" required="true" hint="I am username" displayname="username" />
		<cfargument name="password" type="string" required="true"hint="I am password" displayname="password" />

		<cfset qLogin = "">
		<cfset qLogin = userDAO.login(arguments.username,arguments.password)>
		<cfreturn qLogin>

	</cffunction>

	<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

</cfcomponent>