package Favorite.DAO;

import java.util.List;

import Favorite.DTO.Favorite;

public interface FavoriteDAO {
	void insertFavorite(Favorite favorite);
	int deleteFavorite(int favoNo);
	List<Favorite> selectFavoriteListByUser(int userNo);
	Favorite selectFavorite(Favorite favorite);
}
