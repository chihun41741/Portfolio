package com.biz.home.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.biz.home.dao.PurchaseInfoDao;
import com.biz.home.dao.SaleInfoDao;
import com.biz.home.vo.PurchaseInfoVO;
import com.biz.home.vo.SaleInfoVO;


@Service("sservice")
public class SaleServiceImp implements SaleService {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<SaleInfoVO> SaleInfoSelectAll() {
		SaleInfoDao dao = sqlSession.getMapper(SaleInfoDao.class);
		return dao.SaleInfoSelectAll();
	}

	
	@Override
	public void SaleInfoInsert(MultipartFile file, SaleInfoVO vo) {
		
		String serverPath = "E:/sts-bundle/images";
		
		if( !file.isEmpty() ) {
			//업로드할 파일이름 추출
			String fileName = file.getOriginalFilename();
			
			//universal Unique Identifier : 범용 고유 식별자
			//UUID uuid = UUID.randomUUID();
			//fileName = uuid.toString()+"_"+fileName;
			
			// binary 파일 형식으로 받는 것이 모든 파일을 받을 수 있기 때문에 binary형식으로 받는데 binary 형식은 byte[]로 받음
			try {
				byte[] filePayload = file.getBytes();
				File dir = new File(serverPath);
				
				if( !dir.exists()) {	//서버에 파일을 저장할 폴더가 없으면
					dir.mkdirs();	//폴더를 만들어라
				}
				
				//서버에 저장할 파일을 생성
				File serverFile = new File(dir.getAbsolutePath() + File.separator + fileName );
				// 파일경로 + "/" +"파일이름"
				
				BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(serverFile));
				bos.write(filePayload);
				bos.close();
				
				vo.setFilename(fileName);
				sqlSession.getMapper(SaleInfoDao.class).SaleInfoInsert(vo);
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	@Override
	public SaleInfoVO SaleInfoSelectOne(String saleno) {
		SaleInfoDao dao = sqlSession.getMapper(SaleInfoDao.class);
		return dao.SaleInfoSelectOne(saleno);
	}
	
	@Override
	public List<SaleInfoVO> SaleInfoSelectByID(String userid) {
		SaleInfoDao dao = sqlSession.getMapper(SaleInfoDao.class);
		return dao.SaleInfoSelectByID(userid);
	}
	
	@Override
	public void SaleInfoUpdate(SaleInfoVO vo) {
		SaleInfoDao dao = sqlSession.getMapper(SaleInfoDao.class);
		dao.SaleInfoUpdate(vo);
	}
	
	@Override
	public void SaleInfoDelete(String saleno) {
		SaleInfoDao dao = sqlSession.getMapper(SaleInfoDao.class);
		dao.SaleInfoDelete(saleno);
	}
}