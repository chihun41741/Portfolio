package com.biz.home.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.biz.home.dao.PurchaseInfoDao;
import com.biz.home.dao.SaleInfoDao;
import com.biz.home.service.SaleServiceImp;
import com.biz.home.vo.SaleInfoVO;
import com.biz.home.vo.UserInfoVO;

@Controller
public class SaleController {
	
	private static final Logger logger = LoggerFactory.getLogger(SaleController.class);
	
	@Autowired
	SaleServiceImp sservice;
	@Autowired
	SqlSession sqlsession;
	
	@RequestMapping("sale_list.do")
	public String sale_list(Model model) {
		logger.info("sale_list Page");
		model.addAttribute("plist", sservice.SaleInfoSelectAll());
		return "sale_list";
	}
	
	@RequestMapping("sale_list_by_id.do")
	public String sale_list_by_id(Model model, HttpSession session,@ModelAttribute UserInfoVO vo) {
		logger.info("sale_list_by_id Page");
		String userid = (String) session.getAttribute("user");
		model.addAttribute("plist", sservice.SaleInfoSelectByID(userid));
		return "sale_list_by_id";
	}
	
	@RequestMapping("sale_insert.do")
	public String sale_insert() {
		logger.info("sale_insert Page");
		return "sale_insert";
	}
	
	@RequestMapping("sale_insert_ok.do")
	public String sale_insert_ok(@RequestParam("image") MultipartFile file,@ModelAttribute SaleInfoVO vo) {
		logger.info("sale_insert_ok Page");
		
		sservice.SaleInfoInsert(file,vo);
		return "index";
	}
	
	@RequestMapping("sale_list_updel.do")
	public String sale_list_updel(Model model, String saleno) {
		SaleInfoDao dao = sqlsession.getMapper(SaleInfoDao.class);
		 model.addAttribute("vo", dao.SaleInfoSelectOne(saleno));
		return "sale_list_updel";
	}
	
	@RequestMapping("sale_list_detail.do")
	public String sale_list_detail(Model model, String saleno) {
		 SaleInfoDao dao = sqlsession.getMapper(SaleInfoDao.class);
		 model.addAttribute("vo", dao.SaleInfoSelectOne(saleno));
		
		return "sale_list_detail";
	}
	
	@RequestMapping("sale_list_update_ok.do")
	public String sale_list_update_ok(@ModelAttribute SaleInfoVO vo) {
		logger.info("sale_list_update_ok Page");
		sservice.SaleInfoUpdate(vo);
		return "index";
	}
	
	@RequestMapping("sale_delete.do")
	public String sale_delete(String saleno) {
		logger.info("sale_delete Page");
		sservice.SaleInfoDelete(saleno);
		return "index";
	}
}
