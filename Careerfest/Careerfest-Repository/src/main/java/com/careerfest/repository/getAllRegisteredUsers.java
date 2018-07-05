package com.careerfest.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.careerfest.model.Registrationmodel;

public interface getAllRegisteredUsers extends JpaRepository<Registrationmodel, Integer>{

}
