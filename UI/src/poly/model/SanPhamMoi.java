package poly.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="SanPhamMoi")
public class SanPhamMoi {
	@Id
	@Column(name="MaSPM")
	private String maspm;
	@Column(name="TenSPM")
	private String tenspm;
	@Column(name="KichCo")
	private String kichco;
	@Column(name="MauSac")
	private String mausac;
	@Column(name="MaLoai")
	private String maloai;
	@Column(name="SoLuongTon")
	private String soluongton;
	@Column(name="DonGia")
	private String dongia;
	@Column(name="Anh")
	private String anh;
	@Column(name="ChatLieu")
	private String chatlieu;
	public String getMaspm() {
		return maspm;
	}
	public void setMaspm(String maspm) {
		this.maspm = maspm;
	}
	public String getTenspm() {
		return tenspm;
	}
	public void setTenspm(String tenspm) {
		this.tenspm = tenspm;
	}
	public String getKichco() {
		return kichco;
	}
	public void setKichco(String kichco) {
		this.kichco = kichco;
	}
	public String getMausac() {
		return mausac;
	}
	public void setMausac(String mausac) {
		this.mausac = mausac;
	}
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	public String getSoluongton() {
		return soluongton;
	}
	public void setSoluongton(String soluongton) {
		this.soluongton = soluongton;
	}
	public String getDongia() {
		return dongia;
	}
	public void setDongia(String dongia) {
		this.dongia = dongia;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public String getChatlieu() {
		return chatlieu;
	}
	public void setChatlieu(String chatlieu) {
		this.chatlieu = chatlieu;
	}
	
	
}
