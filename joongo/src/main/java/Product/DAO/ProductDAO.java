package Product.DAO;

import java.util.List;

import Product.DTO.Product;

public interface ProductDAO {
	public List<Product> selectSerchList(String word);
}