component accessors="true"{

	/* :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */

	public any function init( fw ) {
		variables.fw = fw;
		return this;
	}

	/* :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */

	function session( rc ) {
		// set up the user's session

		session.auth = {};
		session.auth.isLoggedIn = false;
		session.auth.userId = '0';
		session.auth.userName = 'Guest';
		session.auth.role = 'none';
	}

	/* :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */

	function authorize( rc ) {
		// check to make sure the user is logged on
		var uLogin = session.auth.isLoggedIn

		if ((!uLogin) and (!listfindnocase('user', variables.fw.getSection()))) {
			session();
			variables.fw.redirect('user.userlogin');
		}
		if(uLogin){
			if((session.auth.role EQ 'staff' ) and (listfindnocase('admin', variables.fw.getSection()))){
				session();
				variables.fw.redirect('user.userlogin');
			}
	}

	}
	/* :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */

}
// &&
// 					not listfindnocase( 'blog.list', variables.fw.getFullyQualifiedAction() ) &&
// 					not listfindnocase( 'blog.getpost', variables.fw.getFullyQualifiedAction() ) &&
// 					not listfindnocase( 'user.authorize', variables.fw.getFullyQualifiedAction() ) &&
// 					not listfindnocase( 'user.error', variables.fw.getFullyQualifiedAction() )
