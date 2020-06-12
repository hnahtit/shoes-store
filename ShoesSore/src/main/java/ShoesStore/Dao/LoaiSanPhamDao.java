package ShoesStore.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import ShoesStore.Entities.LoaiSanPham;
import ShoesStore.Entities.MapperLoaiSanPham;

@Repository
public class LoaiSanPhamDao extends BaseDao {
	

	public List<LoaiSanPham> getLoaiSanPham() {
		List<LoaiSanPham> list = new ArrayList<LoaiSanPham>();
		String sql = "select * from loaigiay;";
		list = _jdbcTemplate.query(sql, new MapperLoaiSanPham());
		return list;
	}
}
