package Product.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Product.DTO.Image;
import Product.DTO.Product;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	private ProductMapper productMapper;

	// 검색
	@Override
	public List<Product> selectSearchList(String word) {
		return productMapper.selectSearchList(word);
	}

	// 목록조회
	@Override
	public List<Product> selectList() {
		return productMapper.selectList();
	}

	// 내용보기
	@Override
	public Product selectOne(int proNo) {
		return productMapper.selectOne(proNo);
	}

	// 글쓰기
	@Override
	public int insertProduct(Product product) {
		return productMapper.insertProduct(product);
	}

	// 카테고리별 조회
	@Override
	public List<Product> selectcatNo(int catNo) {
		return productMapper.selectcatNo(catNo);
	}

	// 글 수정
	@Override
	public int updateProduct(Product product) {
		return productMapper.updateProduct(product);
	}

	// 글 삭제
	@Override
	public int deleteProduct(Product product) {
		return productMapper.deleteProduct(product);
	}

	// 이미지 저장
	@Override
	public int insertImage(Image image) {
		return productMapper.insertImage(image);
	}

	// 최신글 한개 조회
	@Override
	public Product selectNewOne() {
		return productMapper.selectNewOne();
	}

	// 해당글의 이미지 조회
	@Override
	public List<Image> selectImage(int proNo) {
		return productMapper.selectImage(proNo);
	}

	// 전체 5개조회
	@Override
	public List<Product> select5List() {
		return productMapper.select5List();
	}

	// 카테고리 1조회
	@Override
	public List<Product> select5catNo1() {
		return productMapper.select5catNo1();
	}

	// 카테고리 2조회
	@Override
	public List<Product> select5catNo2() {
		return productMapper.select5catNo2();
	}

	// 카테고리 3조회
	@Override
	public List<Product> select5catNo3() {
		return productMapper.select5catNo3();
	}

	// 카테고리 4조회
	@Override
	public List<Product> select5catNo4() {
		return productMapper.select5catNo4();
	}

	// 카테고리 5조회
	@Override
	public List<Product> select5catNo5() {
		return productMapper.select5catNo5();
	}

	// 카테고리 6조회
	@Override
	public List<Product> select5catNo6() {
		return productMapper.select5catNo6();
	}

	// 카테고리 7조회
	@Override
	public List<Product> select5catNo7() {
		return productMapper.select5catNo7();
	}

	// 카테고리 8조회
	@Override
	public List<Product> select5catNo8() {
		return productMapper.select5catNo8();
	}

	// 카테고리 9조회
	@Override
	public List<Product> select5catNo9() {
		return productMapper.select5catNo9();
	}

}