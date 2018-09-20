package com.biz.home.dao;

import java.util.List;

import com.biz.home.vo.PurchaseInfoVO;

public interface PurchaseInfoDao {
	
	public void PurchaseInfoInsert(PurchaseInfoVO vo);

	public PurchaseInfoVO PurchaseInfoSelectOne(String purchaseno);
	
	public void PurchaseInfoDelete(String purchaseno);
	
	public void PurchaseInfoUpdate(PurchaseInfoVO vo);
	
	public List<PurchaseInfoVO> PurchaseInfoSelectByID(String userid);

	public List<PurchaseInfoVO> PurchaseInfoSelectAll();
	
}
