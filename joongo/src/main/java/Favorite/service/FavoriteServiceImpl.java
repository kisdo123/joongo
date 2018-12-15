package Favorite.service;

import java.util.List;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Favorite.DAO.FavoriteDAO;
import Favorite.DTO.Favorite;
import exception.BadLoginIdException;
import exception.FavoriteNotFoundException;

@Service("favoService")
public class FavoriteServiceImpl implements FavoriteService {

	@Autowired
	FavoriteDAO favoDAO;
	
	
	@Override
	public List<Favorite> favoriteList() {		
		
		List<Favorite> favoList = favoDAO.selectFavoriteList();
		return favoList;
		
	}

	@Override
	public void addFavorite(Favorite favorite) {
		favoDAO.insertFavorite(favorite);
	}

	@Override
	public void deleteFavorite(int userNo, int proNo) {
		if(userNo == 0) {
			throw new BadLoginIdException("loginId 값이 올바르지 않음");
		}
		Favorite favo = new Favorite();
		favo.setProNo(proNo);
		favo.setUserNo(userNo);
		
		Favorite favorite = favoDAO.selectFavorite(favo);
		
		if(favorite.getFavoNo() == 0) {
			throw new FavoriteNotFoundException("해당 장바구니 항목을 찾을 수 없음");
		}
		
		int res = favoDAO.deleteFavorite(favorite.getFavoNo());
		if(res == 0) {
			throw new FavoriteNotFoundException("삭제 실패");
		}
	}


}
