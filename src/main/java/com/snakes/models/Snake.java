package com.snakes.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "snakes")

public class Snake {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotEmpty
	@Size(min = 2, max = 128, message = "Name must be between 2 and 128 characters")
	private String name;
	
	@NotEmpty
	@Size(min = 2, max = 128, message = "Species must be between 2 and 128 characters")
	private String species;

	@NotEmpty
	@Size(min = 2, max = 20, message = "birthdate must be betweeen 1 and 20 characters")
	private String birthdate;

	@NotEmpty
	@Size(min = 1, max = 10, message = "Sex must be between 1 and 10 characters")
	private String sex;

	
	@NotEmpty
	@Size(min = 1, max = 128, message = "Price must be between 1 and 1000 characters")
	private String price;
	
	@NotEmpty
	@Size(min = 1, max = 1000, message = "Description must be between 1 and 1000 characters")
	private String description;

	@Column(nullable = true, length = 64)
	private String photos;

	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updatedAt;

	public Snake() {
	}

	public Snake(String name, String species, String birthdate, String sex, String price, String description, String photos) {
		this.name = name;
		this.species = species;
		this.birthdate = birthdate;
		this.sex = sex;
		this.price = price;
		this.description = description;
		this.photos = photos;

	}


	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}

	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}

	
	//================================================ Set and Get ==============================================
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSpecies() {
		return species;
	}
	public String getPrice() {
		return price;
	}
	
	public void setPrice(String price) {
		this.price = price;
	}

	public void setSpecies(String species) {
		this.species = species;
	}

	public String getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public String getPhotos() {
		return photos;
	}

	public void setPhotos(String photos) {
		this.photos = photos;
	}
	
	 @Transient
	    public String getPhotosImagePath() {
	        if (photos == null || id == null) return null;
	         
	        return "/snake-photos/" + id + "/" + photos;
	    }


	

}
