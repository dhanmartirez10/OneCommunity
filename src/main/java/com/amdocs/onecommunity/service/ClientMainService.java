package com.amdocs.onecommunity.service;

import java.util.ArrayList;
import java.util.List;

import com.amdocs.onecommunity.model.ClientMain;

public class ClientMainService {
	public List<ClientMain> getClientList() {
		List<ClientMain> clientList = new ArrayList<>();
		
		clientList.add(new ClientMain("Karen Faner", "639088909204", "80.00", "GINF", "Software Development Specialist", "fanerk@amdocs.com", "4"));
		clientList.add(new ClientMain("Dhan Martirez", "639300427383", "500.00", "GINF", "Software Developer", "dhaneliezer.martirez@amdocs.com", "4"));
		clientList.add(new ClientMain("Juan Dela Cruz", "639473370492", "800.00", "Marketing", "Sales Admin", "salesadmin@amdocs.com", "10"));
		clientList.add(new ClientMain("Marie Luna", "639394264342", "90.00", "Marketing", "Marketing Admin", "marketingadmin@amdocs.com", "5"));
		return clientList;
	}
}
