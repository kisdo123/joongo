package Favorite.service;

import java.util.List;

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
	public List<Favorite> favoriteListByUser(int userId) {		
		
		List<Favorite> favoList = favoDAO.selectFavoriteListByUser(userId);
		return favoList;
		
	}

	@Override
	public void addFavorite(Favorite favorite) {
		favoDAO.insertFavorite(favorite);
	}

	@Override
	public void deleteFavorite(int userNo, int favoNo) {
		if(userNo == 0) {
			throw new BadLoginIdException("loginId 값이 올바르지 않음");
		}

		
		int res = favoDAO.deleteFavorite(favoNo);
		if(res == 0) {
			throw new FavoriteNotFoundException("삭제 실패");
		}
	}

	@Override
	public Favorite selectFavorite(int userNo, int proNo) {
		Favorite favo = new Favorite();
		favo.setProNo(proNo);
		favo.setUserNo(userNo);
		return favoDAO.selectFavorite(favo);
	}


}
