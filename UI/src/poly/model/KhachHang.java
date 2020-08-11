package poly.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="KhachHang")
public class KhachHang {
	@Id
	@Column(name="TenDNKH")
	private String tendnkh;
	@Column(name="TenKH")
	private String tenkh;
	@Column(name="Sdt")
	private String sdt;
	@Column(name="DiaChi")
	private String diachi;
	@Column(name="MatKhau")
	private String matkhau;
	@Column(name="Email")
	private String email;
	public String getTendnkh() {
		return tendnkh;
	}
	public void setTendnkh(String tendnkh) {
		this.tendnkh = tendnkh;
	}
	public String getTenkh() {
		return tenkh;
	}
	public void setTenkh(String tenkh) {
		this.tenkh = tenkh;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public String getMatkhau() {
		return matkhau;
	}
	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}
