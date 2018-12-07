package Product.DTO;

import org.apache.ibatis.type.Alias;

@Alias("Image")
public class Image {
	private int imgNo;
	private int proNo;
	private String imagePath;

	public Image(int imgNo, int proNo, String imagePath) {
		this.imgNo = imgNo;
		this.proNo = proNo;
		this.imagePath = imagePath;
	}
	
	public Image(int proNo, String imagePath) {
		this.proNo = proNo;
		this.imagePath = imagePath;
	}
	
	public Image() {
	}

	public int getImgNo() {
		return imgNo;
	}

	public void setImgNo(int imgNo) {
		this.imgNo = imgNo;
	}

	public int getProNo() {
		return proNo;
	}

	public void setProNo(int proNo) {
		this.proNo = proNo;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

}
