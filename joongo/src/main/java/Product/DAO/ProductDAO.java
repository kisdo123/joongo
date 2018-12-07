package Product.DAO;

import java.util.List;

import Product.DTO.Image;
import Product.DTO.Product;

public interface ProductDAO {
	public List<Product> selectSearchList(String word);
	public List<Product> selectList();
	public Product selectOne(int proNo);
	public int insertProduct(Product product);
	public List<Product> selectcatNo(int catNo);
	public int updateProduct(Product product);
	public int deleteProduct(Product product);
	public int insertImage(Image image);
	public Product selectNewOne();
	public List<Image> selectImage(int proNo);
	public List<Product> select5List ();
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