package com.practice;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	/**
	 * 메인페이지
	 * @return
	 */
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	/**
	 * 카카오 로그인 페이지
	 * @return
	 */
	@RequestMapping("/kakaoLogin")
	public String kakaoLogin() {
		return "kakaoLogin";
	}
	
	/**
	 * 카카오 로그인 완료
	 * @return
	 */
	@RequestMapping("/kakaoLogin/kakaoLoginOk")
	public String kakaoLoginOk() {
		return "/kakaoLogin/kakaoLoginOk";
	}
}
