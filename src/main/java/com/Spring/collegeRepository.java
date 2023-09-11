package com.Spring;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import org.springframework.stereotype.Repository;


@Repository   // denotes that it contains all crud methods
@EnableJpaRepositories  // to enable all the configurations and methods under jpa repository
public interface collegeRepository extends JpaRepository<college,Integer> {

    @Query("select c from college c")
    Page<college> allcolleges(Pageable pg);

}
