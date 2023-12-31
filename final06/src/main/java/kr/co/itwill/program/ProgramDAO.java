package kr.co.itwill.program;


import java.io.StringBufferInputStream;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import kr.co.itwill.like.LikeDTO;
import kr.co.itwill.protime.ProtimeDTO;
import kr.co.itwill.review.ReviewDTO;
import kr.co.itwill.teacher.TeacherDTO;

@Repository
public class ProgramDAO {
	
	@Autowired
	private JdbcTemplate jt;
	
	// 추가 (home.jsp에서 좋아요순으로 프로그램 보여주기 위함)
	@Autowired
	SqlSession sqlSession;
	
	StringBuilder sql = null;
	
	public ProgramDAO() {
		System.out.println("-----ProgramDAO() 객체 생성됨");
	}
	
	//등록
	public int create(ProgramDTO dto, String pro_obj) {
		
		int cnt = 0;
		
		try {
			sql = new StringBuilder();
			sql.append(" INSERT INTO program_info(obj_code, pro_obj, pro_name, prochar_no, pro_limit, pro_fee, ");
			sql.append(" prorec_start, prorec_end, proper_start, proper_end, pro_day, pro_age, pro_exp, pro_poster, pro_img, pro_regdate) ");
			sql.append(" VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, now()) ");
			
			cnt = jt.update(sql.toString(), dto.getObj_code(), pro_obj, dto.getPro_name(), dto.getProchar_no(), dto.getPro_limit(), dto.getPro_fee(), dto.getProrec_start(), dto.getProrec_end(), dto.getProper_start(), dto.getProper_end(), dto.getPro_day(), dto.getPro_age(), dto.getPro_exp(), dto.getPro_poster(), dto.getPro_img(), dto.getPro_regdate());			
		}catch(Exception e) {
			System.out.println("프로그램 등록 실패 : " + e);
		}
		
		return cnt;
	}//create() end
	
	//목록
	public List<ProgramDTO> list(){
		List<ProgramDTO> list = null;
		
		try {
			sql = new StringBuilder();
			sql.append(" SELECT pro_obj, pro_name, prochar_no, pro_limit, pro_fee, prorec_start, prorec_end, ");
			sql.append(" proper_start, proper_end, pro_day, pro_age, pro_exp, ");
			sql.append(" pro_poster, pro_img, pro_regdate, pro_readcnt ");
			sql.append(" FROM program_info ");
			sql.append(" ORDER BY pro_regdate DESC ");
			
			RowMapper<ProgramDTO> rowMapper = new RowMapper<ProgramDTO>() {
				@Override
				public ProgramDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
					
					ProgramDTO dto = new ProgramDTO();
					
					dto.setPro_obj(rs.getString("pro_obj"));
					dto.setPro_name(rs.getString("pro_name"));
					dto.setProchar_no(rs.getString("prochar_no"));
					dto.setPro_limit(rs.getInt("pro_limit"));
					dto.setPro_fee(rs.getInt("pro_fee"));
					dto.setProrec_start(rs.getString("prorec_start"));
					dto.setProrec_end(rs.getString("prorec_end"));
					dto.setProper_start(rs.getString("proper_start"));
					dto.setProper_end(rs.getString("proper_end"));
					dto.setPro_day(rs.getString("pro_day"));
					dto.setPro_age(rs.getString("pro_age"));
					dto.setPro_exp(rs.getString("pro_exp"));
					dto.setPro_poster(rs.getString("pro_poster"));
					dto.setPro_img(rs.getString("pro_img"));
					dto.setPro_regdate(rs.getString("pro_regdate"));
					dto.setPro_readcnt(rs.getInt("pro_readcnt"));
					
					return dto;
				}//mapRow() end
			};//rowMapper end
			
			list = jt.query(sql.toString(), rowMapper);
		}catch(Exception e) {
			System.out.println("프로그램 목록 조회 실패 : " + e);
		}
		
		return list;
	}//list() end

	//상세보기
	public ProgramDTO read(String pro_obj) {
		ProgramDTO dto = null;
		
		try {
			sql = new StringBuilder();
			sql.append(" SELECT obj_code, pro_obj, pro_name, prochar_no, pro_limit, pro_fee, prorec_start, prorec_end, ");
			sql.append(" proper_start, proper_end, pro_day, pro_age, pro_exp, ");
			sql.append(" pro_poster, pro_img, pro_regdate, pro_readcnt ");
			sql.append(" FROM program_info ");
			sql.append(" WHERE pro_obj = '" + pro_obj + "' ");
			
			RowMapper<ProgramDTO> rowMapper = new RowMapper<ProgramDTO>() {
				@Override
				public ProgramDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
					
					ProgramDTO dto = new ProgramDTO();
					
					dto.setObj_code(rs.getString("obj_code"));
					dto.setPro_obj(rs.getString("pro_obj"));
					dto.setPro_name(rs.getString("pro_name"));
					dto.setProchar_no(rs.getString("prochar_no"));
					dto.setPro_limit(rs.getInt("pro_limit"));
					dto.setPro_fee(rs.getInt("pro_fee"));
					dto.setProrec_start(rs.getString("prorec_start"));
					dto.setProrec_end(rs.getString("prorec_end"));
					dto.setProper_start(rs.getString("proper_start"));
					dto.setProper_end(rs.getString("proper_end"));
					dto.setPro_day(rs.getString("pro_day"));
					dto.setPro_age(rs.getString("pro_age"));
					dto.setPro_exp(rs.getString("pro_exp"));
					dto.setPro_poster(rs.getString("pro_poster"));
					dto.setPro_img(rs.getString("pro_img"));
					dto.setPro_regdate(rs.getString("pro_regdate"));
					dto.setPro_readcnt(rs.getInt("pro_readcnt"));
					
					return dto;
				}//mapRow() end
			};//rowMapper end
			
			dto = jt.queryForObject(sql.toString(), rowMapper);
		}catch(Exception e) {
			System.out.println("프로그램 상세보기 실패 : " + e);
		}
		
		return dto;
	}//read() end
	
	//수정
	public int update(ProgramDTO dto) {
		int cnt = 0;
		
		try {
			sql = new StringBuilder();
			sql.append(" UPDATE program_info ");
			sql.append(" SET pro_name = ?, prochar_no =?, pro_limit =?, pro_fee =?, ");
			sql.append(" prorec_start = ?, prorec_end = ?, proper_start = ?, proper_end = ?, pro_day = ?, ");
			sql.append(" pro_age = ?, pro_exp = ?, pro_poster = ?, pro_img = ?, pro_regdate = now() ");
			sql.append(" WHERE pro_obj = ? ");
			
			cnt = jt.update(sql.toString(), dto.getPro_name(), dto.getProchar_no(), dto.getPro_limit(), dto.getPro_fee(), dto.getProrec_start(), dto.getProrec_end(), dto.getProper_start(), dto.getProper_end(), dto.getPro_day(), dto.getPro_age(), dto.getPro_exp(), dto.getPro_poster(), dto.getPro_img(), dto.getPro_obj());
			
		}catch(Exception e) {
			System.out.println("프로그램 수정 실패 : " + e);
		}
		
		return cnt;
	}//update() end
	
	//program_time 상세조회 하는 함수
	@SuppressWarnings("deprecation")
	public List<ProtimeDTO> ptlist(String pro_obj) {
		List<ProtimeDTO> list = null;
		
		try {
			sql = new StringBuilder();
			sql.append(" SELECT pro_time, t_code, pro_code ");
			sql.append(" FROM program_time ");
			sql.append(" WHERE pro_obj = ? ");
			
			RowMapper<ProtimeDTO> rowMapper = new RowMapper<ProtimeDTO>() {
				@Override
				public ProtimeDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
					
					ProtimeDTO dto = new ProtimeDTO();
					
					dto.setPro_time(rs.getString("pro_time"));
					dto.setT_code(rs.getString("t_code"));
					dto.setPro_code(rs.getString("pro_code"));
					
					return dto;
				}//mapRow() end
			};//rowMapper end
			
			list = jt.query(sql.toString(), new Object[]{pro_obj}, rowMapper);
		}catch(Exception e) {
			System.out.println("program에서의 시간표 상세리스트 조회 실패 : " + e);
		}
		
		return list;
	}//ptlist() end
	
	//조회수 증가
	public void incrementCnt(String pro_obj) {
		
		try {
			sql = new StringBuilder();
			sql.append(" UPDATE program_info ");
			sql.append(" SET pro_readcnt = pro_readcnt+1 ");
			sql.append(" WHERE pro_obj = ? ");

			jt.update(sql.toString(), pro_obj);
		}catch(Exception e) {
			System.out.println("조회수 증가 실패 : " + e);
		}
	}//incrementCnt() end
	
	//like_program 상세조회하여 pro_obj=? and p_id=?이면 1, 없으면 0을 반환
	public int likeread(String pro_obj, String p_id) {
		int cnt = 0;
		
		try {
			sql = new StringBuilder();
			sql.append(" SELECT COUNT(*) ");
			sql.append(" FROM like_program ");
			sql.append(" WHERE pro_obj = ? AND p_id = ? ");
			
			cnt = jt.queryForObject(sql.toString(), Integer.class, pro_obj, p_id);
			
		}catch(EmptyResultDataAccessException e) {
			cnt = 0;
		}catch(Exception e) {
			System.out.println("program에서의 찜 상세보기 조회 실패 : " + e);
		}
				
		return cnt;
	}//likeread() end
	
	//like_program에서 pro_obj=?인 개수 반환
	public int likecnt(String pro_obj) {
		int cnt = 0;
		
		try {
			sql = new StringBuilder();
			sql.append(" SELECT COUNT(*) ");
			sql.append(" FROM like_program ");
			sql.append(" WHERE pro_obj = ? ");
			
			cnt = jt.queryForObject(sql.toString(), Integer.class, pro_obj);
			
		}catch(EmptyResultDataAccessException e) {
			cnt = 0;
		}catch(Exception e) {
			System.out.println("program에서의 찜 개수 조회 실패 : " + e);
		}
		
		return cnt;
	}//likecnt() end
	
	// 관심순 프로그램 보여주기 추가
	public List<Map<String, Object>> list2(){
		return sqlSession.selectList("kr.co.itwill.mapper.ProgramMapper.likeSelect");
	}//list() end	
	
	//강사코드와 이름 조회
	public TeacherDTO tread(String pro_obj) {
		TeacherDTO dto = null;
		
		try {
			sql = new StringBuilder();
			sql.append(" SELECT t_code, t_name ");
			sql.append(" FROM (SELECT teacher.t_code, teacher.t_name, program_time.pro_obj ");
			sql.append(" 	   FROM teacher ");
			sql.append(" 	   INNER JOIN program_time ON teacher.t_code = program_time.t_code ");
			sql.append(" 	   WHERE program_time.pro_obj='" + pro_obj + "')AS subquery ");
			
			RowMapper<TeacherDTO> rowMapper = new RowMapper<TeacherDTO>() {
				@Override
				public TeacherDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
					
					TeacherDTO dto = new TeacherDTO();
					
					dto.setT_code(rs.getString("t_code"));
					dto.setT_name(rs.getString("t_name"));
					
					return dto;
				}//mapRow() end
			};//rowMapper end
			
			dto = jt.queryForObject(sql.toString(), rowMapper);
		}catch(Exception e) {
			System.out.println("ProgramDAO에서 강사 정보 조회 실패 : " + e);
		}
		
		return dto;
	}//tread() end
	
	//prefix의 다음 값 계산
	public int getNextnum(String prefix) {
		int nextnum = 0;
		
		try {
			sql = new StringBuilder();
			sql.append(" SELECT MAX(CAST(SUBSTRING(pro_obj, 2) AS UNSIGNED)) AS maxNumber ");
			sql.append(" FROM program_info ");
			sql.append(" WHERE pro_obj LIKE '" + prefix + "%'");
			
			Integer maxNumber = jt.queryForObject(sql.toString(), Integer.class, prefix);
			
			if(maxNumber != null) {
				nextnum = maxNumber + 1;
			} else {
				//maxNumber에 null값이 들어오면 오류가 안뜨게 랜덤한 값을 넣어준다.
				nextnum = getRandnum();
			}
		}catch(Exception e) {
			System.out.println("programDTO에서 prefix의 다음 값 찾기 실패 : " + e);
		}
		return nextnum;
	}//getNextnum() end
	
	
	private int getRandnum() {
		int min = 1;
		int max = 99;
		Random rand = new Random();
		
		return rand.nextInt(max - min + 1) + min;
	}//getRandnum() end
	
	//삭제
	public int delete(String pro_obj) {
		int cnt = 0;
		
		try {
			sql = new StringBuilder();
			sql.append(" DELETE FROM program_info");
			sql.append(" WHERE pro_obj = ? " );
			
			cnt = jt.update(sql.toString(), pro_obj);
		}catch(Exception e) {
			System.out.println("programDTO에서 삭제 실패 : " + e);
		}
		return cnt;
	}//delete() end
	
	//강사목록 조회
	public List<TeacherDTO> tlist(){
		List<TeacherDTO> list = null;
		
		try {
			sql = new StringBuilder();
			sql.append(" SELECT t_code, t_name ");
			sql.append(" FROM teacher ");
			
			RowMapper<TeacherDTO> rowMapper = new RowMapper<TeacherDTO>() {
				@Override
				public TeacherDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
					
					TeacherDTO dto = new TeacherDTO();
					
					dto.setT_code(rs.getString("t_code"));
					dto.setT_name(rs.getString("t_name"));
					
					return dto;
				}//mapRow() end
			};//rowMapper end
			
			list = jt.query(sql.toString(), rowMapper);
		}catch(Exception e) {
			System.out.println("ProgramDAO에서 강사 목록 조회 실패 : ");
		}
		
		return list;
	}//tlist() end
	
	//pro_obj=?의 댓글목록
	public List<ReviewDTO> rvlist(String pro_obj){
		List<ReviewDTO> list = null;
		
		try {
			sql = new StringBuilder();
			sql.append(" SELECT rev_no, rev_con, rev_regdt, p_id, pro_obj, p_passwd ");
			sql.append(" FROM pro_review ");
			sql.append(" WHERE pro_obj = '" + pro_obj + "' ");
			sql.append(" ORDER BY rev_regdt DESC ");
			
			RowMapper<ReviewDTO> rowMapper = new RowMapper<ReviewDTO>() {
				@Override
				public ReviewDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
					
					ReviewDTO dto = new ReviewDTO();
					
					dto.setRev_no(rs.getInt("rev_no"));
					dto.setRev_con(rs.getString("rev_con"));
					dto.setRev_regdt(rs.getString("rev_regdt"));
					dto.setP_id(rs.getString("p_id"));
					dto.setPro_obj(rs.getString("pro_obj"));
					dto.setP_passwd(rs.getString("p_passwd"));
					
					return dto;
				}//mapRow() end
			};//rowMapper end
			
			list = jt.query(sql.toString(), rowMapper);
			
		}catch(Exception e) {
			System.out.println("ProgramDAO에서 댓글 목록 조회 실패 : " + e);
		}
		
		return list;
	}//rvlist() end
}//class end
