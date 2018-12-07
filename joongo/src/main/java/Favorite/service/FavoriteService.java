package Favorite.service;

import java.util.List;

import Favorite.DTO.Favorite;

public interface FavoriteService {
	void addFavorite(Favorite favorite);
	void deleteFavorite(int favoNo);
	List<Favorite> favoriteList();
	Favorite getFavorite(int favoNo);
	
}
