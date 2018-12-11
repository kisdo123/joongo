package Product.Service;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

		for (Product product : products) {
			int proNo = product.getProNo();
			List<Image> images = productDAO.selectImage(proNo);
			product.setImage(images);
			checkPathImage(product.getImage());
		}

		return products;
	}

	// 전체 조회
	@Override
	public List<Product> totalSelect() {
		List<Product> products = productDAO.selectList();

		for (Product product : products) {
			int proNo = product.getProNo();
			List<Image> images = productDAO.selectImage(proNo);
			product.setImage(images);
			checkPathImage(product.getImage());
		}
		return products;
	}

	// 카테고리 별 조회
	@Override
	public List<Product> catNoSelect(int catNo) {
		List<Product> products = productDAO.selectcatNo(catNo);

		for (Product product : products) {
			int proNo = product.getProNo();
			List<Image> images = productDAO.selectImage(proNo);
			product.setImage(images);
			checkPathImage(product.getImage());
		}
		return products;
	}

	// 한개 조회
	@Override
	public Product oneSelect(int proNo) {
		Product product = productDAO.selectOne(proNo);

		List<Image> images = productDAO.selectImage(proNo);
		product.setImage(images);
		checkPathImage(product.getImage());
		return product;
	}

	// 글쓰기
	@Override
	public int insert(Product product) {
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
		
		Product newOne = productDAO.selectNewOne();
		return newOne.getProNo();
	}

	// 최신글 5개 조회
	@Override
	public List<Product> select5List() {
		List<Product> select5List = productDAO.select5List();

		for (Product product : select5List) {
			int proNo = product.getProNo();
			List<Image> images = productDAO.selectImage(proNo);
			product.setImage(images);
			checkPathImage(product.getImage());
		}
		return select5List;
	}
	
	//본인글 제외 최신글 5개조회
	@Override
	public List<Product> selectExceptSelf(int proNo) {
		List<Product> selectExceptSelf = productDAO.selectExceptSelf(proNo);
		for (Product product : selectExceptSelf) {
			proNo = product.getProNo();
			List<Image> images = productDAO.selectImage(proNo);
			product.setImage(images);
			checkPathImage(product.getImage());
		}
		return selectExceptSelf;
	}

	// 카테고리 최신글 5개조회
	@Override
	public Map<String, List<Product>> select5catNo() {
		Map<String, List<Product>> map = new HashMap<String, List<Product>>();
		for (int i = 1; i < 10; i++) {
			List<Product> productscat = productDAO.select5catNo(i);

			for (Product product : productscat) {
				int proNo = product.getProNo();
				List<Image> images = productDAO.selectImage(proNo);
				product.setImage(images);
				checkPathImage(product.getImage());
			}
			map.put("category" + i, productscat);

		}
		return map;

	}

	// 상점보기
	@Override
	public List<Product> selectShop(int userNo) {
		List<Product> products = productDAO.selectProductbyUser(userNo);
		
		for (Product product : products) {
			int proNo = product.getProNo();
			List<Image> images = productDAO.selectImage(proNo);
			product.setImage(images);
			checkPathImage(product.getImage());
		}

		return products;
	}

	// 글 수정
	@Override
	public void update(Product product) {
		if (product.getUserNo() == 0) {
			System.out.println("로그인되지 않았습니다.");
		}
		// 글수정 쿼리 실행
		int res = productDAO.updateProduct(product);
		if (res == 0) {
			throw new ProductNotFoundException("수정 실패");
		}
		// 해당글의 imagePath조회
		int proNo = product.getProNo();
		List<Image> images = productDAO.selectImage(proNo);
		for (Image image : images) {
			// Path에 있는 이미지 파일 삭제
			int imgNo = image.getImgNo();
			String path = image.getImagePath();
			File file = new File(path);
			if (file.exists()) {
				if (file.delete()) {
					System.out.println("파일삭제 성공");
					productDAO.deleteImage(imgNo);
				} else {
					throw new ProductNotFoundException("이미지 삭제 실패");
				}
			} else {
				System.out.println("이미지가 없습니다.");
				break;
			}
		}

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

	// 수정을위한 select
	@Override
	public Product updateSelect(int userNo, int proNo) {
		if (userNo == 0) {
			System.out.println("로그인되지 않았습니다.");
		}
		Product product = productDAO.updateProductSelect(userNo, proNo);
		if (product.equals("") || product.equals(null)) {
			throw new ProductNotFoundException("조회실패");
		}
		List<Image> images = productDAO.selectImage(proNo);
		product.setImage(images);
		checkPathImage(product.getImage());

		return product;
	}

	// 글 삭제
	@Override
	public void delete(Product product) {
		int res = productDAO.deleteProduct(product);
		if (res == 0) {
			throw new ProductNotFoundException("삭제 실패");
		}
	}

	// 이미지 패스에 파일이 존재하지않으면 변경
	public void checkPathImage(List<Image> images) {
		for (Image image : images) {
			String imagePath = image.getImagePath();
			File dir = new File("C:/Users/KOITT-02-A/eclipse-workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps"+ imagePath);
			if (!dir.exists()) {
				image.setImagePath("/joongo/image/no-image.jpg");
			}

		}
	}

}
