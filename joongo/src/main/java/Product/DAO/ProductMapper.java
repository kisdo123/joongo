package Product.DAO;

import java.util.List;

import Product.DTO.Product;
import User.DAO.Query;

@Query
public interface ProductMapper {
	List<Product> selectSearchList(String word);
	List<Product> selectList();
	Product selectOne(int proNo);
	int insertProduct(Product product);
	List<Product> selectcatNo(int catNo);
	int updateProduct(Product product);
	int deleteProduct(Product product);
}