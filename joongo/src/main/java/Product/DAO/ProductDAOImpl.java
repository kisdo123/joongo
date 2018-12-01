package Product.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Product.DTO.Product;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO{
	@Autowired
	private ProductMapper productMapper;
	
	//검색
	@Override
	public List<Product> selectSearchList(String word) {
		return productMapper.selectSearchList(word);
	}
	
	//목록조회
	@Override
	public List<Product> selectList() {
		// TODO Auto-generated method stub
		return null;
	}
	
	//내용보기
	@Override
	public Product selectOne(int proNo) {
		// TODO Auto-generated method stub
		return null;
	}

	//글쓰기
	@Override
	public void insertProduct(Product product) {
		// TODO Auto-generated method stub
		
	}

	//카테고리별 조회
	@Override
	public Product selectcatNo(int catNo) {
		// TODO Auto-generated method stub
		return null;
	}

	//글 수정
	@Override
	public void updateProduct(Product product) {
		// TODO Auto-generated method stub
		
	}

	//글 삭제
	@Override
	public void deleteProduct(Product product) {
		// TODO Auto-generated method stub
		
	}
	
} 	