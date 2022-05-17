package com.fc.v2.controller.admin.goview;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.controller.AdminController;
import com.fc.v2.mapper.custom.TsysUserDao;
import com.fc.v2.model.auto.TsysUser;
import com.fc.v2.satoken.SaTokenUtil;
import com.fc.v2.util.ServletUtils;
import com.fc.v2.util.StringUtils;

import cn.dev33.satoken.secure.SaSecureUtil;
import cn.dev33.satoken.stp.StpUtil;
import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("/goview")
public class GoViewController {

	private static Logger logger = LoggerFactory.getLogger(AdminController.class);
	@Autowired
	private TsysUserDao tsysUserDao;
	/**
	 * 手机登录
	 * @param user
	 * @param redirectAttributes
	 * @param rememberMe
	 * @param request
	 * @return
	 * @author fuce
	 * @Date 2020年12月7日 上午12:54:28
	 */
	@ApiOperation(value = "手机登录", notes = "手机登录")
	@PostMapping("/login")
	@ResponseBody
	public AjaxResult APIlogin(TsysUser user,boolean rememberMe,HttpServletRequest request) {

		Boolean yz = true;
//		if (V2Config.getRollVerification()) {// 滚动验证
//			yz = true;
//		} else {// 图片验证
//			String scode = (String) request.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);
//			yz = StringUtils.isNotEmpty(scode) && StringUtils.isNotEmpty(code) && scode.equals(code);
//		}
		// 判断验证码
		if (yz) {
			String userName = user.getUsername();
			// 是否验证通过
			if (!StpUtil.isLogin()) {
				TsysUser queryUser = tsysUserDao.queryUserName(userName);
				// 各种校验 
				if (queryUser == null) {
					logger.info("对用户[" + userName + "]进行登录验证..验证未通过,未知账户");
					return AjaxResult.error(500, "未知账户");
				}
				if (SaSecureUtil.md5(user.getPassword()).equals(queryUser.getPassword())) {
					logger.info("对用户[" + userName + "]进行登录验证..验证未通过,错误的凭证");
					return AjaxResult.error(500, "用户名或密码不正确");
				}
			
				// 校验通过，开始登录
				StpUtil.login(queryUser.getId(), rememberMe);
				SaTokenUtil.setUser(queryUser);
				StpUtil.getTokenSession().set("ip", ServletUtils.getIP(request));
				return AjaxResult.success().put("data", StpUtil.getTokenInfo());
			} else {
				if (StringUtils.isNotNull(SaTokenUtil.getUser())) {
					// 跳转到 get请求的登陆方法
					return AjaxResult.successData(200,  StpUtil.getTokenInfo()).put("msg","登录成功"); 
				} else {
					return AjaxResult.error(500, "未知账户");
				}
			}
		} else {
			return AjaxResult.error(500, "验证码不正确!");
		}

	}
	
	/**
	 * 退出登陆
	 * 
	 * @return
	 */
	@ApiOperation(value = "退出登陆", notes = "退出登陆")
	@GetMapping("/logout")
	@ResponseBody
	public AjaxResult LoginOut(HttpServletRequest request, HttpServletResponse response) {
		// 在这里执行退出系统前需要清空的数据
		
		// 注销
		StpUtil.logout();
		return AjaxResult.success().put("msg", "退出成功");
	}

	

}
