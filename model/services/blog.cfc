<cfcomponent accessors="true">

<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

	<cfproperty name="blogDAO">

	<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

	<cffunction name="list" returnType="query" access="public" output="false" hint="I return a list of blog entries">

		<cfset qReturn = "">
		<cfset qReturn = blogDAO.list()>
		<cfreturn qReturn>

	</cffunction>

	<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

	<cffunction name="getpost" returnType="query" access="public" output="false" hint="I return posts">
		<cfargument name="id"	type="numeric" required="true" hint="I am the id of the post" displayname="id" />

		<cfset qPost = "">
		<cfset qPost = blogDAO.getpost(arguments.id)>
		<cfreturn qPost>

	</cffunction>

	<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

</cfcomponent>