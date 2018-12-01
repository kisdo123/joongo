package Product.DAO;

import java.util.List;

import Product.DTO.Product;

public interface ProductDAO {
	public List<Product> selectSearchList(String word);
	public List<Product> selectList();
	public Product selectOne(int proNo);
	public void insertProduct(Product product);
	public Product selectcatNo(int catNo);
	public void updateProduct(Product product);
	public void deleteProduct(Product product);
}