package com.ssafy.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.model.dao.PickDao;
import com.ssafy.model.dto.Pick;
import com.ssafy.model.dto.SafeFoodException;

@Service
public class PickServiceImp implements PickService {
	
	@Autowired
	PickDao dao;

	@Override
	public void insertPick(Pick pickfood) {
		try {
			System.out.println(pickfood.getUid());
			System.out.println(pickfood.getFno());
			dao.insertPick(pickfood);
			System.out.println("찜했다잉");
		}catch(Exception e){
			e.printStackTrace();
		}

	}

	@Override
	public void deletePick(Pick pickfood) {
		try {
			dao.deletePick(pickfood);
		}catch(Exception e){
			e.printStackTrace();
			
		}
	}
	
	public Pick searchPick(String id) {
		try {
			Pick pick=dao.searchPick(id);
			if(pick==null) {
				throw new SafeFoodException("찾으려는 정보가 없습니다");
			}else {
				return pick;
			}
		}catch(Exception e) {
			e.printStackTrace();
			throw new SafeFoodException();
		}
	}

}
