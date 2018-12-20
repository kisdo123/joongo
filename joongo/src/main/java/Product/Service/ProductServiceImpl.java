package Product.Service;

import java.io.File;
import java.util.ArrayList;
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
			product.setTitle(blockHTMLTag(product.getTitle()));
			product.setTags(blockHTMLTag(product.getTags()));
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
			product.setTitle(blockHTMLTag(product.getTitle()));
			product.setTags(blockHTMLTag(product.getTags()));
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
		product.setTitle(blockHTMLTag(product.getTitle()));
		product.setTags(blockHTMLTag(product.getTags()));
		
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
						|| contentimg.contains(".bmp") || contentimg.contains(".PNG")) {
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
			product.setTitle(blockHTMLTag(product.getTitle()));
			product.setTags(blockHTMLTag(product.getTags()));
		}
		return select5List;
	}

	// 연관상품
	@Override
	public List<Product> selectExceptSelf(Product product) {
		List<Product> selectExceptSelf = productDAO.selectExceptSelf(product);

		for (Product pro : selectExceptSelf) {
			int getproNo = pro.getProNo();
			List<Image> images = productDAO.selectImage(getproNo);
			pro.setImage(images);
			checkPathImage(pro.getImage());
			product.setTitle(blockHTMLTag(product.getTitle()));
			product.setTags(blockHTMLTag(product.getTags()));
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
				product.setTitle(blockHTMLTag(product.getTitle()));
				product.setTags(blockHTMLTag(product.getTags()));
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
			product.setTitle(blockHTMLTag(product.getTitle()));
			product.setTags(blockHTMLTag(product.getTags()));
		}

		return products;
	}

	// 글 수정
	@Override
	public void update(Product product) {
		if (product.getUserNo() == 0) {
			System.out.println("로그인되지 않았습니다.");
		}
		// 해당글의 imagePath조회
		int proNo = product.getProNo();
		// 글수정 쿼리 실행
		int res = productDAO.updateProduct(product);
		if (res == 0) {
			throw new ProductNotFoundException("수정 실패");
		}

		// Image 저장경로를 얻기위한 String값 처리
		int extension = 0;
		String imagePath = "";
		String contentimg = product.getContent();

		List<Image> images = productDAO.selectImage(proNo);
		for (Image image : images) {
			productDAO.deleteImage(image.getImgNo());
		}

		List<Image> imageList = new ArrayList<>();
		for (int i = 0; i < 10; i++) {
			if (contentimg.contains("<img")) {
				int idx = contentimg.indexOf("src=");

				// 확장자명 분류
				if (contentimg.contains(".jpg") || contentimg.contains(".png") || contentimg.contains(".gif")
						|| contentimg.contains(".bmp") || contentimg.contains(".PNG")) {
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
			imageList.add(image);
			productDAO.insertImage(image);
		}

		Map<String, Image> originImage = new HashMap<String, Image>();
		for (int i = 0; i < images.size(); i++) {
			originImage.put("image" + i, images.get(i));
		}

		int size = originImage.size();
		for (int i = 0; i < size; i++) {
			System.out.println("i :" + i);
			for (Image updateImage : imageList) {
				System.out.println("remove : " + originImage.get("image" + i).getImagePath());
				System.out.println("update : " + updateImage.getImagePath());
				if (updateImage.getImagePath().equals(originImage.get("image" + i).getImagePath())) {
					originImage.remove("image" + i);
					System.out.println("맵에서 지움, size:" + originImage.size());
					break;
				}
			}
		}
		System.out.println(originImage.size());

		for (String key : originImage.keySet()) {
			// Path에 있는 이미지 파일 삭제
			Image deleteImage = originImage.get(key);
			String path = deleteImage.getImagePath();
			File file = new File(
					"C:/Users/KOITT_P/Desktop/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps"
							+ path);
			System.out.println(file.getPath());
			if (file.exists()) {
				if (file.delete()) {
					System.out.println("파일삭제 성공");
				} else {
					throw new ProductNotFoundException("이미지 삭제 실패");
				}
			} else {
				System.out.println("이미지가 없습니다.");
				break;
			}
		}

	}

	// 수정을위한 select
	@Override
	public Product updateSelect(Product productsel) {
		Product product = productDAO.updateProductSelect(productsel);
		if (product.equals("") || product.equals(null)) {
			throw new ProductNotFoundException("조회실패");
		}
		int proNo = product.getProNo();
		List<Image> images = productDAO.selectImage(proNo);
		product.setImage(images);
		checkPathImage(product.getImage());
		product.setTitle(blockHTMLTag(product.getTitle()));
		product.setTags(blockHTMLTag(product.getTags()));
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
			File dir = new File(
					"C:/Users/KOITT_P/Desktop/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps"
							+ imagePath);

			if (!dir.exists()) {
				image.setImagePath("/joongo/image/no-image.jpg");
			}

		}
	}

	// &lt; 등의 HTML 특수문자를 치환해줌
	public String blockHTMLTag(String target) {
		target = target.replaceAll("&", "&amp;");
		target = target.replaceAll("<", "&lt;");
		target = target.replaceAll(">", "&gt;");
		target = target.replaceAll(" ", "&nbsp;");
		return target;

	}

}
