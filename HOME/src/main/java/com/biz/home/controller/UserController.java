package com.biz.home.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.biz.home.dao.SaleInfoDao;
import com.biz.home.dao.UserInfoDao;
import com.biz.home.vo.SaleInfoVO;
import com.biz.home.vo.UserInfoVO;

@Controller
public class UserController {

	@Autowired
	SqlSession sqlsession;

	@RequestMapping("index.do") // index(main///   /home)페이지
	public String index() {
		return "index";
	}
	
	@RequestMapping("checkid.do")
	   public @ResponseBody Map checkid(String userid) {
	      
	      Map voMap = new HashMap<String , Object>();
	      
	      UserInfoDao dao = sqlsession.getMapper(UserInfoDao.class);
	      
	      int num = dao.checkId(userid);
	      
	      voMap.put("num", num);
	      
	      return voMap;
	      
	   }

	@RequestMapping("insert.do") // 타입 별 회원가입을 하기위해 거쳐가는 페이지
	public String insert() {
		return "insert";
	}

	@RequestMapping("client_insert.do") // 일반고객 회원가입 하는 페이지
	public String client_insert() {
		return "client_insert";
	}

	@RequestMapping("client_insert_ok.do") // 일반고객 회원가입을 완료하면 해당 내용을 DB에 insert하고 index페이지로 이동합니다.
	public String client_insert_ok(@ModelAttribute UserInfoVO vo) {

		UserInfoDao dao = sqlsession.getMapper(UserInfoDao.class);
		dao.UserInfoInsert(vo);

		return "index";
	}

	@RequestMapping("agent_insert.do") // 공인중개사 회원가입 하는 페이지
	public String agent_insert() {
		return "agent_insert";
	}

	@RequestMapping("agent_insert_ok.do") // 공인중개사 회원가입을 완료하면 해당 내용을 DB에 insert하고 index페이지로 이동합니다.
	public String agent_insert_ok(@ModelAttribute UserInfoVO vo) {

		UserInfoDao dao = sqlsession.getMapper(UserInfoDao.class);
		dao.UserInfoInsert(vo);
		return "index";
	}

	@RequestMapping("login.do") // 로그인 페이지
	public String login() {
		return "login";
	}

	@RequestMapping("loginok.do") // 로그인을 완료하면 index페이지로 이동합니다.
	public String loginok(@ModelAttribute UserInfoVO vo, HttpSession session) {

		UserInfoDao dao = sqlsession.getMapper(UserInfoDao.class);

		if (dao.loginCheck(vo) == 1) {
			
			session.setAttribute("type", dao.GetType(vo)); // vo에서 type을 얻어와서 type이라는 변수에 담는다
			session.setAttribute("user", vo.getUserid()); // userid를 얻어와서 user라는 변수에 담는다.
			return "redirect:index.do";
		} else {
			session.removeAttribute("user");
			session.removeAttribute("type");
			return "redirect:loginfalse.do";
		}
	}

	@RequestMapping("loginfalse.do") // 로그인 실패하면 loginfalse.jsp로 이동
	public String loginfalse() {

		return "loginfalse";
	}

	@RequestMapping("logout.do") // 로그아웃 버튼을 누르면 index페이지로 이동
	public String logout(HttpSession session) {
		session.removeAttribute("user");
		session.removeAttribute("type");
		return "index";
	}

	@RequestMapping("login_update.do") // 회원정보를 수정하는 페이지
	public String login_update(Model model, HttpSession session) {

		UserInfoDao dao = sqlsession.getMapper(UserInfoDao.class);
		String user = (String) session.getAttribute("user");
		model.addAttribute("vo", dao.selectOne(user));

		return "login_update";
	}

	@RequestMapping("client_updateok.do") // 일반고객 회원정보 수정 완료하면 index페이지로 이동
	public String client_updateok(@ModelAttribute UserInfoVO vo) {

		UserInfoDao dao = sqlsession.getMapper(UserInfoDao.class);
		dao.ClientUpdate(vo);

		return "redirect:index.do";
	}

	@RequestMapping("agent_updateok.do") // 공인중개사 회원정보 수정 완료하면 index페이지로 이동
	public String agent_updateok(@ModelAttribute UserInfoVO vo) {

		UserInfoDao dao = sqlsession.getMapper(UserInfoDao.class);
		dao.AgentUpdate(vo);

		return "redirect:index.do";
	}

	@RequestMapping("mypage.do") // 마이페이지 (회원수정, 회원삭제, 게시물관리을 버튼으로 연결)
	public String mypage() {
		return "mypage";
	}

	@RequestMapping("user_delete.do") // 회원 삭제를 하는 페이지
	public String user_delete(Model model, HttpSession session) {

		UserInfoDao dao = sqlsession.getMapper(UserInfoDao.class);
		String user = (String) session.getAttribute("user");
		model.addAttribute("vo", dao.selectOne(user));

		return "user_delete";
	}

	@RequestMapping("user_delete_ok.do") // 탈퇴할 아이디와 비밀번호 확인에서 비교해서 비밀번호가 맞으면 탈퇴를 다르면 메인페이지로 이동한다.
	public String user_delete_ok(HttpSession session, @ModelAttribute UserInfoVO vo) {

		UserInfoDao dao = sqlsession.getMapper(UserInfoDao.class);
		vo = dao.UserInfoPassword(vo);
		if (vo != null) {// DB와 비교하여 UserInfoPassword 메소드의 결과를 넣은 vo. 비교값이 맞으면 값이 들어가고 안맞으면 null이 들어간다
			dao.deleteUser(vo); // deleteUser를 vo에 담긴값을 토대로 실행
			session.invalidate(); // 세션 삭제
			return "index";
		} else { // DB와 입력한 값이 다르면 deletefalse페이지로 보낸다.
			return "deletefalse";

		}
	}
	
	
}
