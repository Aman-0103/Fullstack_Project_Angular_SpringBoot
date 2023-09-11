package com.Spring;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository   // denotes that it contains all crud methods
@EnableJpaRepositories  // to enable all the configurations and methods under jpa repository
public interface collegebycategoryRepo extends JpaRepository<collegebycategory,Integer> {

    @Query(value= "{call collegebycategory(:catid)}",nativeQuery=true)
    public List<collegebycategory> collegebycategory(@Param("catid")int catid);

}
