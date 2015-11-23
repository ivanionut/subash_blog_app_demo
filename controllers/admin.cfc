<cfcomponent accessors="true" output="false">

	<cfproperty name="blogService">

	<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

	<cfscript>

		/* :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */

		function init( fw ) {
			variables.fw = fw;
			return this;
		}

		/* :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */

		function list(rc) {
			rc.qReturn = blogService.list();
		}

		/* :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */

		function edit( rc ) {
			rc.qPost = blogService.getPost(rc.id);
		}

		<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

		function save(rc){
			rc.qUpdate = blogService.updatePost(rc.id, rc.content);
			if(rc.qUpdate = true){
				variables.fw.redirect('admin.edit?id=#rc.id#&sMessage=Successfully Updated !!!');
			}
		}

		<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

	</cfscript>

	<!--- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --->

</cfcomponent>

