package Product.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Product.DAO.ProductDAO;
import Product.DTO.Product;

@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Autowired ProductDAO productDAO;
	
	@Override
	public List<Product> searching(String word) {
		return productDAO.selectSearchList(word);
	}
	
}
