package com.www.aram.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.DynamicInsert;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
//ORM -> 프로그래밍언어 Object -> 테이블로 매핑해주는 기술 
@Entity // User 클래스가 MySQL에 테이블이 생성 됨
@DynamicInsert
public class User {

	@Id // Primary Key
	@GeneratedValue(strategy = GenerationType.IDENTITY) // 프로젝트에서 연결된 DB의 넘버링 전략을 따라감
	private int id; // 시퀀스, auto_increment

	@Column(nullable = false, length = 30, unique = true)
	private String username; // 아이디

	@Column(nullable = false, length = 100) // Hash (비밀번호 암호화)
	private String password;

	@Column(nullable = false, length = 50)
	private String email;

	// DB는 RoleType이라는게 없음
	@Enumerated(EnumType.STRING)
	private RoleType role; // Enum을 쓰는 것을 권장 // ADMIN, USER

	@CreationTimestamp // 시간 자동 입력
	private Timestamp createDate;

}
