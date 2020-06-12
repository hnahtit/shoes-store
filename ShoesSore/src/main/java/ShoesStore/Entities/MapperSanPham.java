package ShoesStore.Entities;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperSanPham implements RowMapper<SanPham> {

	@Override
	public SanPham mapRow(ResultSet rs, int rowNum) throws SQLException {
		SanPham sanpham = new SanPham();

		sanpham.setIdsanpham(rs.getInt("idsanpham"));
		sanpham.setTensanpham(rs.getString("tensanpham"));
		sanpham.setIdnhasanxu(rs.getInt("idnhasanxuat"));
		sanpham.setGia(rs.getInt("gia"));
		sanpham.setRating(rs.getInt("rating"));
		sanpham.setLink1(rs.getString("link1"));
		sanpham.setLink2(rs.getString("link2"));
		sanpham.setLink3(rs.getString("link3"));
		sanpham.setIdloaigiay(rs.getInt("idloaigiay"));
		return sanpham;
	}

}
