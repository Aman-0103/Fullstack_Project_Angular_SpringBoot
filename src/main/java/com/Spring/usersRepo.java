package com.Spring;



import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


@Repository
@EnableJpaRepositories
public interface usersRepo extends JpaRepository<users,Integer>
{

	@Query(value= "SELECT * FROM users u WHERE u.username = :username",nativeQuery=true)
	public Optional<users> findByUserName(@Param("username")String username);


}