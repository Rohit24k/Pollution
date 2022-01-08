package com.Entity;

import java.util.Date;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="pollutionData")
public class PollutionData {
	
		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
	    private int id;
		private String co2;
		private String humidity;
		private String temperature,pm2;
		private String addedDate;
		
		public PollutionData() {
			super();
		}

		public PollutionData(String co2, String humidity, String temperature, String pm2, String addedDate) {
			super();
			this.co2 = co2;
			this.humidity = humidity;
			this.temperature = temperature;
			this.pm2 = pm2;
			this.addedDate = addedDate;
		}

		
		public int getId() {
			return id;
		}

		
		public void setId(int id) {
			this.id = id;
		}

		
		public String getCo2() {
			return co2;
		}

		
		public void setCo2(String co2) {
			this.co2 = co2;
		}

		
		public String getHumidity() {
			return humidity;
		}

		
		public void setHumidity(String humidity) {
			this.humidity = humidity;
		}

		
		public String getTemperature() {
			return temperature;
		}

		
		public void setTemperature(String temperature) {
			this.temperature = temperature;
		}

		
		public String getPm2() {
			return pm2;
		}

	
		public void setPm2(String pm2) {
			this.pm2 = pm2;
		}

		
		public String getAddedDate() {
			return addedDate;
		}

		
		public void setAddedDate(String addedDate) {
			this.addedDate = addedDate;
		}

		@Override
		public String toString() {
			return "PollutionData [id=" + id + ", co2=" + co2 + ", humidity=" + humidity + ", temperature="
					+ temperature + ", pm2=" + pm2 + ", addedDate=" + addedDate + "]";
		}
		
		
		
}
