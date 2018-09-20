package com.biz.home.dao;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.biz.home.vo.PurchaseInfoVO;
import com.biz.home.vo.SaleInfoVO;

public interface SaleInfoDao {

	public void SaleInfoInsert(SaleInfoVO vo);

	public SaleInfoVO SaleInfoSelectOne(String saleno);
	
	public void SaleInfoDelete(String saleno);
	
	public void SaleInfoUpdate(SaleInfoVO vo);
	
	public List<SaleInfoVO> SaleInfoSelectAll();

	public List<SaleInfoVO> SaleInfoSelectByID(String userid);


}
