package Favorite.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Favorite.DAO.FavoriteDAO;
import Favorite.DTO.Favorite;
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
	public void deleteFavorite(int favoNo) {
		int res = favoDAO.deleteFavorite(favoNo);
		if(res == 0) {
			throw new FavoriteNotFoundException("장바구니를 찾을 수 없음");
		}
	}

}
