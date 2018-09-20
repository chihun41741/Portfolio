package com.biz.home.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.home.dao.PurchaseInfoDao;
import com.biz.home.dao.SaleInfoDao;
import com.biz.home.vo.PurchaseInfoVO;
import com.biz.home.vo.SaleInfoVO;


@Service("pservice")
public class PurchaseServiceImp implements PurchaseService {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<PurchaseInfoVO> PurchaseInfoSelectAll() {
		PurchaseInfoDao dao = sqlSession.getMapper(PurchaseInfoDao.class);
		return dao.PurchaseInfoSelectAll();
	}
	
	@Override
	public List<PurchaseInfoVO> PurchaseInfoSelectByID(String userid) {
		PurchaseInfoDao dao = sqlSession.getMapper(PurchaseInfoDao.class);
		return dao.PurchaseInfoSelectByID(userid);
	}

	@Override
	public void PurchaseInfoInsert(PurchaseInfoVO vo) {
		PurchaseInfoDao dao = sqlSession.getMapper(PurchaseInfoDao.class);
		dao.PurchaseInfoInsert(vo);
	}
	
	@Override
	public PurchaseInfoVO PurchaseInfoSelectOne(String purchaseno) {
		PurchaseInfoDao dao = sqlSession.getMapper(PurchaseInfoDao.class);
		return dao.PurchaseInfoSelectOne(purchaseno);
	}
	
	@Override
	public void PurchaseInfoUpdate(PurchaseInfoVO vo) {
		PurchaseInfoDao dao = sqlSession.getMapper(PurchaseInfoDao.class);
		dao.PurchaseInfoUpdate(vo);
	}
	
	@Override
	public void PurchaseInfoDelete(String purchaseno) {
		PurchaseInfoDao dao = sqlSession.getMapper(PurchaseInfoDao.class);
		dao.PurchaseInfoDelete(purchaseno);
	}

}