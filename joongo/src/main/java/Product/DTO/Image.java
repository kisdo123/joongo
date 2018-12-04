package Product.DTO;

import org.apache.ibatis.type.Alias;

@Alias("Image")
public class Image {
	private int imgeNo;
	private int proNo;
	private String imagePath;

	public Image(int imgeNo, int proNo, String imagePath) {
		this.imgeNo = imgeNo;
		this.proNo = proNo;
		this.imagePath = imagePath;
	}
	
	public Image(int proNo, String imagePath) {
		this.proNo = proNo;
		this.imagePath = imagePath;
	}
	
	public Image() {
	}

	public int getImgeNo() {
		return imgeNo;
	}

	public void setImgeNo(int imgeNo) {
		this.imgeNo = imgeNo;
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
