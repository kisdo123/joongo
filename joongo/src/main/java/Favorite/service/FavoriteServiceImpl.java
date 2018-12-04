package Favorite.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import Favorite.DAO.FavoriteDAO;
import Favorite.DTO.Favorite;

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
		favoDAO.deleteFavorite(favoNo);
	}

}
