package com.biz.home.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.biz.home.vo.PurchaseInfoVO;
import com.biz.home.vo.SaleInfoVO;

public interface SaleService {
	public List<SaleInfoVO> SaleInfoSelectAll();
	public void SaleInfoInsert(MultipartFile file,SaleInfoVO vo);
	public List<SaleInfoVO> SaleInfoSelectByID(String userid);
	public SaleInfoVO SaleInfoSelectOne(String saleno);
	public void SaleInfoUpdate(SaleInfoVO vo);
	public void SaleInfoDelete(String saleno);
}