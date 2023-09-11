package com.Spring;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import org.springframework.stereotype.Repository;


@Repository   // denotes that it contains all crud methods
@EnableJpaRepositories  // to enable all the configurations and methods under jpa repository
public interface courseRepository extends JpaRepository<courses,Integer> {

    @Query("select c from courses c")
    Page<courses> allcourses(Pageable pg);

}
