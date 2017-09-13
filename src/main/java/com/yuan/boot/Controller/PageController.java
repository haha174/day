package com.yuan.boot.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/page")
public class PageController {

	//oos   上传
	@RequestMapping("/oosPage.do")
	public String toUploadOOSPage() {
		return "oos/index";
	}
}
