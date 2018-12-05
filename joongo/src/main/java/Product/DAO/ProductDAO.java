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
}