package dao;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Info.DBInfo;
import dto.Player;

public class PlayerDAO implements Serializable {
	private static final long serialVersionUID = 1L;

	private Connection conn;

	public PlayerDAO() {

	}
	
	public void addPlayer(Player player) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DBInfo.getUrl(), DBInfo.getUser(), DBInfo.getPassword());

			PreparedStatement pstmt = conn.prepareStatement("insert into player(name, team_no, back_no, "
					+ "img_name, country, pos_no, age, goals, shots, shots_in_target, aprc, assist) "
					+ "values(?, ?, ?, ?, ?, ?, ?, 0, 0, 0, 0, 0)");
			pstmt.setString(1, player.getName());
			pstmt.setInt(2, player.getTeamNo());
			pstmt.setString(3, player.getBackNumber());
			pstmt.setString(4, player.getImgName());
			pstmt.setString(5, player.getCountry());
			pstmt.setInt(6, player.getPosNo());
			pstmt.setInt(7, player.getAge());
			pstmt.execute();

			if (pstmt != null) {
				pstmt.close();
			}

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}	
	}

	public ArrayList<Player> getPlayersByTeamId(String id) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DBInfo.getUrl(), DBInfo.getUser(), DBInfo.getPassword());

			ArrayList<Player> players = new ArrayList<>();

			PreparedStatement pstmt = conn.prepareStatement("select p.id, p.name, t.name team_name, p.back_no, p.img_name, p.country, "
					+ "po.name position, p.age, p.goals, p.shots, p.shots_in_target, p.aprc, p.assist from player p, "
					+ "pos po, team t where p.pos_no=po.id and t.id=p.team_no and p.team_no=?");
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				Player player = new Player();
				player.setId(rs.getInt("id"));
				player.setName(rs.getString("name"));
				player.setTeamName(rs.getString("team_name"));
				player.setBackNumber(rs.getString("back_no"));
				player.setImgName(rs.getString("img_name"));
				player.setCountry(rs.getString("country"));
				player.setPosition(rs.getString("position"));
				player.setAge(rs.getInt("age"));
				player.setGoals(rs.getInt("goals"));
				player.setShots(rs.getInt("shots"));
				player.setShotsInTarget(rs.getInt("shots_in_target"));
				player.setAppearances(rs.getInt("aprc"));
				player.setAssist(rs.getInt("assist"));
				players.add(player);
			}

			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}

			return players;

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}
}