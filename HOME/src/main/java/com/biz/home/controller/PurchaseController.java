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

import com.biz.home.dao.PurchaseInfoDao;
import com.biz.home.dao.UserInfoDao;
import com.biz.home.service.PurchaseServiceImp;
import com.biz.home.vo.PurchaseInfoVO;
import com.biz.home.vo.UserInfoVO;

@Controller
public class PurchaseController {
	
	private static final Logger logger = LoggerFactory.getLogger(PurchaseController.class);
	
	@Autowired
	PurchaseServiceImp pservice;
	@Autowired
	SqlSession sqlsession;
	
	@RequestMapping("purchase_list.do")
	public String purchase_list(Model model) {
		logger.info("purchase_list Page");
		model.addAttribute("plist", pservice.PurchaseInfoSelectAll());
		return "purchase_list";
	}
	
	@RequestMapping("purchase_list_by_id.do")
	public String sale_list_by_id(Model model, HttpSession session,@ModelAttribute UserInfoVO vo) {
		logger.info("purchase_list_by_id Page");
		String userid = (String) session.getAttribute("user");
		model.addAttribute("plist", pservice.PurchaseInfoSelectByID(userid));
		return "purchase_list_by_id";
	}
	
		
	@RequestMapping("purchase_insert.do")
	public String purchase_insert() {
		logger.info("purchase_insert Page");
		return "purchase_insert";
	}
	
	@RequestMapping("purchase_insert_ok.do")
	public String purchase_insert_ok(@ModelAttribute PurchaseInfoVO vo) {
		logger.info("purchase_insert_ok Page");
		pservice.PurchaseInfoInsert(vo);
		return "index";
	}
	
	@RequestMapping("purchase_list_update_ok.do")
	public String purchase_list_update_ok(@ModelAttribute PurchaseInfoVO vo) {
		logger.info("purchase_list_update_ok Page");
		pservice.PurchaseInfoUpdate(vo);
		return "index";
	}
	
	@RequestMapping("purchase_list_updel.do")
	public String purchase_list_updel(Model model, String purchaseno) {
		 PurchaseInfoDao dao = sqlsession.getMapper(PurchaseInfoDao.class);
		 model.addAttribute("vo", dao.PurchaseInfoSelectOne(purchaseno));
		return "purchase_list_updel";
	}
	
	@RequestMapping("purchase_list_detail.do")
	public String purchase_list_detail(Model model, String purchaseno) {
		 PurchaseInfoDao dao = sqlsession.getMapper(PurchaseInfoDao.class);
		 model.addAttribute("vo", dao.PurchaseInfoSelectOne(purchaseno));
		
		return "purchase_list_detail";
	}
	
	@RequestMapping("purchase_delete.do")
	public String purchase_delete(String purchaseno) {
		logger.info("purchase_delete Page");
		pservice.PurchaseInfoDelete(purchaseno);
		return "index";
	}
}
