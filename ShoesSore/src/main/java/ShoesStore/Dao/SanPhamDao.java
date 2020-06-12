package ShoesStore.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import ShoesStore.Entities.MapperSanPham;
import ShoesStore.Entities.SanPham;

@Repository
public class SanPhamDao extends BaseDao {

	public List<SanPham> getOneProduct(int id) {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "select * from sanpham where idsanpham = " + Integer.toString(id) + " limit 1";
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}

	public SanPham findOneProduct(int id) {
		SanPham sanpham = new SanPham();
		String sql = "select * from sanpham where idsanpham = " + Integer.toString(id) + " limit 1";
		sanpham = _jdbcTemplate.queryForObject(sql, new MapperSanPham());
		return sanpham;
	}

	public List<SanPham> getProduct() {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "select * from sanpham;";
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}

	public List<SanPham> getProductByIdLoai(int id) {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "select * from sanpham where idloaigiay = " + Integer.toString(id);
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}

	public List<SanPham> getProductByIdLoaiPaging(int id, int start, int end) {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "select * from sanpham where idloaigiay = " + Integer.toString(id) + " limit "
				+ Integer.toString(start) + "," + Integer.toString(end);
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}

}
