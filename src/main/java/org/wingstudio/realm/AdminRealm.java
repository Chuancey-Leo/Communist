package org.wingstudio.realm;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.wingstudio.entity.Admin;
import org.wingstudio.service.AdminService;

import javax.annotation.Resource;


/**
 *自定义realm
 * @author liao
 *
 */
public class AdminRealm extends AuthorizingRealm{

	@Resource
	private AdminService adminService;

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token)
			throws AuthenticationException {
		String userName=(String)token.getPrincipal();
		Admin admin=adminService.getByUserName(userName);
		if (admin!=null){
			AuthenticationInfo authcInfo=new SimpleAuthenticationInfo(admin.getUserName(),
					admin.getPassword(),"jin");
			return authcInfo;
		}else {
			return null;
		}
	}
}
