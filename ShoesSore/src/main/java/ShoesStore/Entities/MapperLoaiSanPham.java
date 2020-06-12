package ShoesStore.Entities;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperLoaiSanPham implements RowMapper<LoaiSanPham> {

	@Override
	public LoaiSanPham mapRow(ResultSet rs, int rowNum) throws SQLException {
		LoaiSanPham loaisanpham = new LoaiSanPham();

		loaisanpham.setIdloaisanpham(rs.getInt("idloaigiay"));
		loaisanpham.setTenloaisanpham(rs.getString("tenloaigiay"));

		return loaisanpham;
	}

}
