package Product.Service;

import java.util.List;

import Product.DTO.Product;

public interface ProductService {
	public List<Product> searching(String word);
}