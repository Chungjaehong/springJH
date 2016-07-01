package com.jh.spring.domain.comdb;

import java.io.Serializable;

import javax.persistence.*;

/**
 * User table Entity
 * @ author jaehong.chung
 * @ version 1.0

*/

@Entity
@Table(name = "tblInsaHrDuty", schema="dbo")
public class DataTwoTest implements Serializable{

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "HrDuty_ID", nullable = false)
	private Long HrDuty_ID;
	
    @Column(name = "HrDuty", nullable = false)
    private String HrDuty;

    @Column(name = "Priority", nullable = false)
    private Long Priority;
    
    @Column(name = "FromDate", nullable = false)
    private String FromDate;
    
    @Column(name = "ToDate", nullable = false)
    private String ToDate;

	public Long getHrDuty_ID() {
		return HrDuty_ID;
	}

	public void setHrDuty_ID(Long hrDuty_ID) {
		HrDuty_ID = hrDuty_ID;
	}

	public String getHrDuty() {
		return HrDuty;
	}

	public void setHrDuty(String hrDuty) {
		HrDuty = hrDuty;
	}

	public Long getPriority() {
		return Priority;
	}

	public void setPriority(Long priority) {
		Priority = priority;
	}

	public String getFromDate() {
		return FromDate;
	}

	public void setFromDate(String fromDate) {
		FromDate = fromDate;
	}

	public String getToDate() {
		return ToDate;
	}

	public void setToDate(String toDate) {
		ToDate = toDate;
	}



    
}
