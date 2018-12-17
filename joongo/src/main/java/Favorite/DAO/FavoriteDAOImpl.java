package Favorite.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Favorite.DTO.Favorite;

@Repository("favoDAO")
public class FavoriteDAOImpl implements FavoriteDAO {

	@Autowired
	FavoriteMapper favoMapper;

	@Override
	public List<Favorite> selectFavoriteListByUser(int userNo) {
		return favoMapper.selectFavoriteListByUser(userNo);
	}

	@Override
	public void insertFavorite(Favorite favorite) {
		favoMapper.insertFavorite(favorite);
	}

	@Override
	public int deleteFavorite(int favoNo) {
		return favoMapper.deleteFavorite(favoNo);
	}

	@Override
	public Favorite selectFavorite(Favorite favorite) {
		return favoMapper.selectFavorite(favorite);
	}


}
