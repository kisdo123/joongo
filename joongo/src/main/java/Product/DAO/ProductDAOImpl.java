package Product.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Product.DTO.Product;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO{
	@Autowired
	private ProductMapper productMapper;
	
	@Override
	public List<Product> selectSearchList(String word) {
		return productMapper.selectSearchList(word);
	}
}