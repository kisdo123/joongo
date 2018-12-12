package Product.Service;

import java.util.List;
import java.util.Map;

import Product.DTO.Product;

public interface ProductService {
	public List<Product> searching(String word);
	public List<Product> totalSelect();
	public Product oneSelect(int proNo);
	public int insert(Product product);
	public List<Product> catNoSelect(int catNo);
	public void update(Product product);
	public void delete(Product product);
	public List<Product> select5List();
	public Map<String, List<Product>> select5catNo();
	public List<Product> selectShop(int userNo);
	public Product updateSelect(Product product);
	public List<Product> selectExceptSelf(int proNo);
}