<cfcomponent accessors="true">

<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

	<cfproperty name="blogDAO">

	<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

	<cffunction name="list" returnType="query" access="public" output="false" hint="I return a list of blog entries">

		<cfset var qReturn = "">
		<cfset qReturn = blogDAO.list()>
		<cfreturn qReturn>

	</cffunction>

	<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

	<cffunction name="getPost" returnType="query" access="public" output="false" hint="I return posts">
		<cfargument name="id"	type="numeric" required="true" hint="I am the id of the post" displayname="id" />

		<cfset var qPost = "">
		<cfset qPost = blogDAO.getpost(arguments.id)>
		<cfreturn qPost>

	</cffunction>

	<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

	<cffunction name="updatePost" returnType="boolean" hint="I edit a post">
		<cfargument name="id" 		type="numeric" required="true" hint="I am the id of the post" displayname="id" />
		<cfargument name="content" 	type="string" required="true" hint="I am the content to be updated" displayname="content" />

		<cfset var qUpdate = "">
		<cfset qUpdate = blogDAO.updatePost(arguments.id, arguments.content)>
		<cfreturn qUpdate>

	</cffunction>

	<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

</cfcomponent>