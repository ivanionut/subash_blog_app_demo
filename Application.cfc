component extends="framework.one"{

	APPLICATION_ROOT = hash(getBaseTemplatePath());

	this.name = APPLICATION_ROOT;
	this.datasource ="subash_blog";
	variables.framework={
		reloadApplicationOnEveryRequest	= true,
		error = "blog.error",
		home  = "blog.list"
	// 	unhandledExtensions = 'cfc',
	//  unhandledPaths	= "/#sSiteName#/dashboard/model/tests,/#sSiteName#/dashboard/remote,/#sSiteName#/dashboard/assets/js,/#sSiteName#/dashboard/util",
	//  napplicationKey = 'com.strakertranslations.translator.dashboard',
		};
}

