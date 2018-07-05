package com.careerfest.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.careerfest.model.Registrationmodel;

public interface SaveRegistrationDetails extends JpaRepository<Registrationmodel, Integer> {

}
