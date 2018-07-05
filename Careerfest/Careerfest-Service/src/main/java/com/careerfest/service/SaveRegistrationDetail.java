package com.careerfest.service;

import java.util.List;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.careerfest.model.Registrationmodel;
import com.careerfest.repository.SaveRegistrationDetails;
import com.careerfest.repository.getAllRegisteredUsers;

@Service
public class SaveRegistrationDetail {

	@Autowired
	private SaveRegistrationDetails saveRegistrationDetails;
	@Autowired
	private getAllRegisteredUsers getallRegisteredUsers;
	
	public void saveRegistrationDetail(Registrationmodel Rmodel){
		Registrationmodel registered = saveRegistrationDetails.save(Rmodel);
		System.out.println("After saving data "+registered.getFirst_name()+" "+registered.getLast_name()+" "+registered.getEmail_id());
	}
	public List<Registrationmodel> getAllRegisteredUser(){
		return getallRegisteredUsers.findAll();
	}
}
