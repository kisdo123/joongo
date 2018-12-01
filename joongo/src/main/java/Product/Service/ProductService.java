package Product.Service;

import java.util.List;

import Product.DTO.Product;

public interface ProductService {
	public List<Product> searching(String word);
	public List<Product> totalSelect();
	public Product oneSelect(int proNo);
	public void insert(Product product);
	public Product catNoSelect(int catNo);
	public void update(Product product);
	public void delete(Product product);
}