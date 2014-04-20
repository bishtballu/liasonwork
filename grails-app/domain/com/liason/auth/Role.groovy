package com.liason.auth

class Role
{
	public static final String ROLE_USER="ROLE_USER"
	public static final String ROLE_ADMIN="ROLE_ADMIN"
	
	String authority

	static mapping = {
		cache true
	}

	static constraints = {
		authority blank: false, unique: true
	}
}