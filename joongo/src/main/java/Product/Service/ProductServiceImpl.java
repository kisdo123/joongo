package Product.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Product.DAO.ProductDAO;
import Product.DTO.Image;
import Product.DTO.Product;
import exception.ProductNotFoundException;

@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductDAO productDAO;

	//검색
	@Override
	public List<Product> searching(String word) {
		if (word.isEmpty() || word.equals(null)) {
			throw new ProductNotFoundException("검색단어가 없습니다.");
		}
		List<Product> products = productDAO.selectSearchList(word);
		if (products.isEmpty() || products.equals(null)) {
			throw new ProductNotFoundException("검색 목록이 존재하지 않습니다.");
		}
		return products;
	}

	//전체 조회
	@Override
	public List<Product> totalSelect() {
		List<Product> products = productDAO.selectList();
		
		for(Product product : products) {
			int proNo = product.getProNo();
			List<Image> images = productDAO.selectImage(proNo);
			product.setImage(images);
		}
		
		if (products.isEmpty() || products.equals(null)) {
			throw new ProductNotFoundException("목록이 존재하지 않습니다.");
		}
		return products;
	}

	//한개 조회
	@Override
	public Product oneSelect(int proNo) {
		Product product = productDAO.selectOne(proNo);
		if (product.equals(null)) {
			throw new ProductNotFoundException("글이 존재하지 않습니다.");
		}
		return product;
	}
	
	//글쓰기 
	@Override
	public void insert(Product product) {
		int res = productDAO.insertProduct(product);
		if (res == 0) {
			throw new ProductNotFoundException("글쓰기 실패");
		}
		//최신글 한개 조회해서 게시글의 번호 가져옴
		Product newProduct = productDAO.selectNewOne();
		int proNo =newProduct.getProNo();
		
		//Image 저장경로를 얻기위한 String값 처리
		int extension = 0;
		String imagePath="";
		String contentimg =  product.getContent();		
		
		for (int i = 0; i < 10; i++) {
			if (contentimg.contains("<img")) {	
				int idx = contentimg.indexOf("src=");
				
				//확장자명 분류
				if(contentimg.contains(".jpg") || contentimg.contains(".png") || contentimg.contains(".gif") || contentimg.contains(".bmp")) {
					extension = contentimg.indexOf(".");
					imagePath = contentimg.substring(idx + 5, extension + 4);
					contentimg=contentimg.substring(extension+4);
					contentimg=contentimg.substring(contentimg.indexOf(">"));
					
				}else {
					throw new ProductNotFoundException("사용할 수 없는 확장자명 입니다.");
				}
				
			} else {
				throw new ProductNotFoundException("이미지 태그가 존재하지 않습니다.");
			}
			Image image = new Image(proNo, imagePath);
			
			//imagePath insert
			productDAO.insertImage(image);
		}
	}

	//카테고리 별 조회
	@Override
	public List<Product> catNoSelect(int catNo) {
		List<Product> products = productDAO.selectcatNo(catNo);
		if (products.isEmpty() || products.equals(null)) {
			throw new ProductNotFoundException("검색 목록이 존재하지 않습니다.");
		}
		return products;
	}

	//글 수정
	@Override
	public void update(Product product) {
		int res = productDAO.updateProduct(product);
		if (res == 0) {
			throw new ProductNotFoundException("수정 실패");
		}
	}

	//글 삭제
	@Override
	public void delete(Product product) {
		int res = productDAO.deleteProduct(product);
		if (res == 0) {
			throw new ProductNotFoundException("삭제 실패");
		}
	}
	
}
