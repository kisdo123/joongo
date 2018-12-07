package Product.Service;

import java.util.List;

import Product.DTO.Product;

public interface ProductService {
	public List<Product> searching(String word);
	public List<Product> totalSelect();
	public Product oneSelect(int proNo);
	public void insert(Product product);
	public List<Product> catNoSelect(int catNo);
	public void update(Product product);
	public void delete(Product product);
	public List<Product> select5List();
	public List<Product> select5catNo1();
	public List<Product> select5catNo2();
	public List<Product> select5catNo3();
	public List<Product> select5catNo4();
	public List<Product> select5catNo5();
	public List<Product> select5catNo6();
	public List<Product> select5catNo7();
	public List<Product> select5catNo8();
	public List<Product> select5catNo9();
}