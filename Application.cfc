component extends="framework.one"{

	APPLICATION_ROOT = hash(getBaseTemplatePath());
	this.name = APPLICATION_ROOT;
	this.datasource ="subash_blog";
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0,0,5,0);

	variables.framework={
		reloadApplicationOnEveryRequest	= true,
		error = "user.error"
		};


	public function setupSession() {
		controller('security.session');
	}

	public function setupRequest() {
		controller('security.authorize');
	}
}