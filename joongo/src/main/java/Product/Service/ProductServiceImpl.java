package Product.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Product.DAO.ProductDAO;
import Product.DTO.Product;
import exception.UserNotFoundException;

@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Autowired ProductDAO productDAO;
	
	@Override
	public List<Product> searching(String word) {
		if(word.isEmpty() || word.equals(null)) {
			throw new UserNotFoundException("검색단어가 없습니다.");
		}
		List<Product> products = productDAO.selectSearchList(word);
		if(products.isEmpty() || products.equals(null)) {
			throw new UserNotFoundException("검색 목록이 존재하지 않습니다.");
		}
		return products;
	}

	@Override
	public List<Product> totalSelect() {
		List<Product> products = productDAO.selectList();
		if(products.isEmpty() || products.equals(null)) {
			throw new UserNotFoundException("목록이 존재하지 않습니다.");
		}
		return products;
	}

	@Override
	public Product oneSelect(int proNo) {
		Product product = productDAO.selectOne(proNo);
		if(product.equals(null)) {
			throw new UserNotFoundException("글이 존재하지 않습니다.");
		}
		return product;
	}

	@Override
	public void insert(Product product) {
		int res = productDAO.insertProduct(product);
		if(res == 0) {
			throw new UserNotFoundException("글쓰기 실패");	
		}
	}

	@Override
	public List<Product> catNoSelect(int catNo) {
		List<Product> products = productDAO.selectcatNo(catNo);
		if(products.isEmpty() || products.equals(null)) {
			throw new UserNotFoundException("검색 목록이 존재하지 않습니다.");
		}
		return products;
	}

	@Override
	public void update(Product product) {
		int res = productDAO.updateProduct(product);
		if (res == 0) {
			throw new UserNotFoundException("수정 실패");	
		}
	}

	@Override
	public void delete(Product product) {
		int res = productDAO.deleteProduct(product);
		if (res == 0) {
			throw new UserNotFoundException("삭제 실패");	
		}
	}
	
}
