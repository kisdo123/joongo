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

	// 검색
	@Override
	public List<Product> searching(String word) {
		if (word.isEmpty() || word.equals(null)) {
			throw new ProductNotFoundException("검색단어가 없습니다.");
		}
		List<Product> products = productDAO.selectSearchList(word);
		if (products.isEmpty() || products.equals(null)) {
			throw new ProductNotFoundException("검색 목록이 존재하지 않습니다.");
		}

		for (Product product : products) {
			int proNo = product.getProNo();
			List<Image> images = productDAO.selectImage(proNo);
			product.setImage(images);
		}

		if (products.isEmpty() || products.equals(null)) {
			throw new ProductNotFoundException("목록이 존재하지 않습니다.");
		}
		return products;
	}

	// 전체 조회
	@Override
	public List<Product> totalSelect() {
		List<Product> products = productDAO.selectList();
		if (products.isEmpty() || products.equals(null)) {
			throw new ProductNotFoundException("목록이 존재하지 않습니다.");
		}

		for (Product product : products) {
			int proNo = product.getProNo();
			List<Image> images = productDAO.selectImage(proNo);
			product.setImage(images);
		}
		return products;
	}

	// 카테고리 별 조회
	@Override
	public List<Product> catNoSelect(int catNo) {
		List<Product> products = productDAO.selectcatNo(catNo);
		if (products.isEmpty() || products.equals(null)) {
			throw new ProductNotFoundException("카테고리 목록이 존재하지 않습니다.");
		}

		for (Product product : products) {
			int proNo = product.getProNo();
			List<Image> images = productDAO.selectImage(proNo);
			product.setImage(images);
		}
		return products;
	}

	// 한개 조회
	@Override
	public Product oneSelect(int proNo) {
		Product product = productDAO.selectOne(proNo);
		if (product.equals(null)) {
			throw new ProductNotFoundException("글이 존재하지 않습니다.");
		}

		List<Image> images = productDAO.selectImage(proNo);
		product.setImage(images);

		return product;
	}

	// 글쓰기
	@Override
	public void insert(Product product) {
		int res = productDAO.insertProduct(product);
		if (res == 0) {
			throw new ProductNotFoundException("글쓰기 실패");
		}
		// 최신글 한개 조회해서 게시글의 번호 가져옴
		Product newProduct = productDAO.selectNewOne();
		int proNo = newProduct.getProNo();

		// Image 저장경로를 얻기위한 String값 처리
		int extension = 0;
		String imagePath = "";
		String contentimg = product.getContent();

		for (int i = 0; i < 10; i++) {
			if (contentimg.contains("<img")) {
				int idx = contentimg.indexOf("src=");

				// 확장자명 분류
				if (contentimg.contains(".jpg") || contentimg.contains(".png") || contentimg.contains(".gif")
						|| contentimg.contains(".bmp")) {
					extension = contentimg.indexOf(".");
					imagePath = contentimg.substring(idx + 5, extension + 4);
					contentimg = contentimg.substring(extension + 4);
					contentimg = contentimg.substring(contentimg.indexOf(">"));

				} else {
					throw new ProductNotFoundException("사용할 수 없는 확장자명 입니다.");
				}

			} else {
				break;
			}
			Image image = new Image(proNo, imagePath);

			// imagePath insert
			productDAO.insertImage(image);
		}
	}

	// 글 수정
	@Override
	public void update(Product product) {
		int res = productDAO.updateProduct(product);
		if (res == 0) {
			throw new ProductNotFoundException("수정 실패");
		}
	}

	// 글 삭제
	@Override
	public void delete(Product product) {
		int res = productDAO.deleteProduct(product);
		if (res == 0) {
			throw new ProductNotFoundException("삭제 실패");
		}
	}

	// 최신글 5개 조회
	@Override
	public List<Product> select5List() {
		List<Product> products = productDAO.selectList();
		
		List<Product> productscat1 = productDAO.select5catNo1();
		if (products.isEmpty() || products.equals(null)) {
			throw new ProductNotFoundException("목록이 존재하지 않습니다.");
		}
		for (Product product : products) {
			int proNo = product.getProNo();
			List<Image> images = productDAO.selectImage(proNo);
			product.setImage(images);
		}
		return products;
	}

	// 카테고리1 최신글 5개조회
	@Override
	public List<Product> select5catNo1() {
		List<Product> productscat1 = productDAO.select5catNo1();
		if (productscat1.isEmpty() || productscat1.equals(null)) {
			throw new ProductNotFoundException("카테고리1 목록이 존재하지 않습니다.");
		}

		for (Product product : productscat1) {
			int proNo = product.getProNo();
			List<Image> images = productDAO.selectImage(proNo);
			product.setImage(images);
		}
		return productscat1;
	}

	// 카테고리2 최신글 5개조회
	@Override
	public List<Product> select5catNo2() {
		List<Product> productscat2 = productDAO.select5catNo2();
		if (productscat2.isEmpty() || productscat2.equals(null)) {
			throw new ProductNotFoundException("카테고리2 목록이 존재하지 않습니다.");
		}

		for (Product product : productscat2) {
			int proNo = product.getProNo();
			List<Image> images = productDAO.selectImage(proNo);
			product.setImage(images);
		}
		return productscat2;
	}

	// 카테고리3 최신글 5개조회
	@Override
	public List<Product> select5catNo3() {
		List<Product> productscat3 = productDAO.select5catNo3();
		if (productscat3.isEmpty() || productscat3.equals(null)) {
			throw new ProductNotFoundException("카테고리3 목록이 존재하지 않습니다.");
		}

		for (Product product : productscat3) {
			int proNo = product.getProNo();
			List<Image> images = productDAO.selectImage(proNo);
			product.setImage(images);
		}
		return productscat3;
	}

	// 카테고리4 최신글 5개조회
	@Override
	public List<Product> select5catNo4() {
		List<Product> productscat4 = productDAO.select5catNo4();
		if (productscat4.isEmpty() || productscat4.equals(null)) {
			throw new ProductNotFoundException("카테고리4 목록이 존재하지 않습니다.");
		}

		for (Product product : productscat4) {
			int proNo = product.getProNo();
			List<Image> images = productDAO.selectImage(proNo);
			product.setImage(images);
		}
		return productscat4;
	}

	// 카테고리5 최신글 5개조회
	@Override
	public List<Product> select5catNo5() {
		List<Product> productscat5 = productDAO.select5catNo5();
		if (productscat5.isEmpty() || productscat5.equals(null)) {
			throw new ProductNotFoundException("카테고리5 목록이 존재하지 않습니다.");
		}

		for (Product product : productscat5) {
			int proNo = product.getProNo();
			List<Image> images = productDAO.selectImage(proNo);
			product.setImage(images);
		}
		return productscat5;
	}

	// 카테고리6 최신글 5개조회
	@Override
	public List<Product> select5catNo6() {
		List<Product> productscat6 = productDAO.select5catNo6();
		if (productscat6.isEmpty() || productscat6.equals(null)) {
			throw new ProductNotFoundException("카테고리6 목록이 존재하지 않습니다.");
		}

		for (Product product : productscat6) {
			int proNo = product.getProNo();
			List<Image> images = productDAO.selectImage(proNo);
			product.setImage(images);
		}
		return productscat6;
	}

	// 카테고리7 최신글 5개조회
	@Override
	public List<Product> select5catNo7() {
		List<Product> productscat7 = productDAO.select5catNo7();
		if (productscat7.isEmpty() || productscat7.equals(null)) {
			throw new ProductNotFoundException("카테고리7 목록이 존재하지 않습니다.");
		}

		for (Product product : productscat7) {
			int proNo = product.getProNo();
			List<Image> images = productDAO.selectImage(proNo);
			product.setImage(images);
		}
		return productscat7;
	}

	// 카테고리8 최신글 5개조회
	@Override
	public List<Product> select5catNo8() {
		List<Product> productscat8 = productDAO.select5catNo8();
		if (productscat8.isEmpty() || productscat8.equals(null)) {
		}

		for (Product product : productscat8) {
			int proNo = product.getProNo();
			List<Image> images = productDAO.selectImage(proNo);
			product.setImage(images);
		}
		return productscat8;
	}

}
