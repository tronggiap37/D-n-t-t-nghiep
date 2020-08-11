package poly.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="QLLogo")
public class Logo {
	@Id
	@Column(name="MaLogo")
	private String malogo;
	@Column(name="Anh")
	private String anh;
	@Column(name="Gia")
	private String gia;
	@Column(name="KieuIn")
	private String kieuin;
	@Column(name="GiaLogo")
	private String gialogo;
	public String getMalogo() {
		return malogo;
	}
	public void setMalogo(String malogo) {
		this.malogo = malogo;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public String getGia() {
		return gia;
	}
	public void setGia(String gia) {
		this.gia = gia;
	}
	public String getKieuin() {
		return kieuin;
	}
	public void setKieuin(String kieuin) {
		this.kieuin = kieuin;
	}
	public String getGialogo() {
		return gialogo;
	}
	public void setGialogo(String gialogo) {
		this.gialogo = gialogo;
	}
	
}
