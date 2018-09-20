package com.biz.home.service;

import java.util.List;

import com.biz.home.vo.PurchaseInfoVO;

public interface PurchaseService {
	public List<PurchaseInfoVO> PurchaseInfoSelectAll();
	
	public void PurchaseInfoInsert(PurchaseInfoVO vo);
	public PurchaseInfoVO PurchaseInfoSelectOne(String purchaseno);
	public List<PurchaseInfoVO> PurchaseInfoSelectByID(String userid);
	public void PurchaseInfoUpdate(PurchaseInfoVO vo);
	public void PurchaseInfoDelete(String purchaseno);
	
}