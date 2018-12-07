package Favorite.DAO;

import java.util.List;

import Favorite.DTO.Favorite;
import User.DAO.Query;

@Query
public interface FavoriteMapper {
	void insertFavorite(Favorite favorite);
	int deleteFavorite(int favoNo);
	List<Favorite> selectFavoriteList();
}
