component extends="framework.one"{

	APPLICATION_ROOT = hash(getBaseTemplatePath());
	this.name = APPLICATION_ROOT;
	this.datasource ="subash_blog";
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0,0,5,0);

	variables.framework={
		reloadApplicationOnEveryRequest	= true,
		error = "user.error"
	// 	unhandledExtensions = 'cfc',
	//  unhandledPaths	= "/#sSiteName#/dashboard/model/tests,/#sSiteName#/dashboard/remote,/#sSiteName#/dashboard/assets/js,/#sSiteName#/dashboard/util",
	//  napplicationKey = 'com.strakertranslations.translator.dashboard',
		};


	public function setupSession() {
		controller('security.session');
	}

	public function setupRequest() {
		controller('security.authorize');
	}
}