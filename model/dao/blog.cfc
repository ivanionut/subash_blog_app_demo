<cfcomponent accessors="true">

	<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

	<cffunction name="init" hint="I return an instance of myself">
		<cfreturn this>
	</cffunction>

	<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

	<cffunction name="list" returntype="query" hint="I return a list of blog entries">
		<cfset var qReturn = "">

		<cfquery name="qReturn">
			select 		id, post_title, post_content
			from 		tbl_posts
			ORDER BY 	created DESC
		</cfquery>

		<cfreturn qReturn>

	</cffunction>

	<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

	<cffunction name="getPost" returnType="query"hint="I return blog posts">
		<cfargument name="id" 		type="numeric" required="true" hint="I am the id of the post" displayname="id" />

		<cfset var qPost = "">

		<cfquery name="qPost">
			select 		*
			from 		tbl_posts
			WHERE 		id = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.id#">
		</cfquery>

		<cfreturn qPost>

	</cffunction>

	<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

</cfcomponent>