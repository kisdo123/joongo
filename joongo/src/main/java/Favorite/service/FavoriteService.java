package Favorite.service;

import java.util.List;

import Favorite.DTO.Favorite;

public interface FavoriteService {
	void addFavorite(Favorite favorite);
	void deleteFavorite(int userNo, int proNo);
	List<Favorite> favoriteList();
	Favorite selectFavorite(int userNo, int proNo);
}
