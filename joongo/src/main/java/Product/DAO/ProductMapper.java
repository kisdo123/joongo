package Product.DAO;

import java.util.List;

import Product.DTO.Product;
import User.DAO.Query;

@Query
public interface ProductMapper {
	List<Product> selectSerchList();
}