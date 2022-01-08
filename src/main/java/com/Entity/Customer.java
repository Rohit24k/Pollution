package com.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="customer")
public class Customer {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int cust_id;
	private String cust_name;
	private String branch_id;
	
	public Customer() {
		super();
	}

	public Customer(String cust_name, String branch_id) {
		super();
		this.cust_name = cust_name;
		this.branch_id = branch_id;
	}

	
	public int getCust_id() {
		return cust_id;
	}

	
	public void setCust_id(int cust_id) {
		this.cust_id = cust_id;
	}

	
	public String getCust_name() {
		return cust_name;
	}

	
	public void setCust_name(String cust_name) {
		this.cust_name = cust_name;
	}

	
	public String getBranch_id() {
		return branch_id;
	}

	
	public void setBranch_id(String branch_id) {
		this.branch_id = branch_id;
	}

	@Override
	public String toString() {
		return "Customer [cust_id=" + cust_id + ", cust_name=" + cust_name + ", branch_id=" + branch_id + "]";
	}
	
	
}
