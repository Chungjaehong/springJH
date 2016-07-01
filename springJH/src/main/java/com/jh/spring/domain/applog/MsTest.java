package com.jh.spring.domain.applog;

import java.io.Serializable;

import javax.persistence.*;

/**
 * User table Entity
 * @ author jaehong.chung
 * @ version 1.0

*/

@Entity
@Table(name = "TBL_ACMS_DVC")
public class MsTest implements Serializable{

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "DVC_ID", nullable = false)
	private Long DVC_ID;
	
    @Column(name = "VISIT_REQ_ID", nullable = false)
    private Long VISIT_REQ_ID;

    @Column(name = "DVC_CD", nullable = false)
    private String DVC_CD;
    
    @Column(name = "SAVE_DATE", nullable = false)
    private String SAVE_DATE;


	public Long getDVC_ID() {
		return DVC_ID;
	}

	public void setDVC_ID(Long dVC_ID) {
		DVC_ID = dVC_ID;
	}

	public Long getVISIT_REQ_ID() {
		return VISIT_REQ_ID;
	}

	public void setVISIT_REQ_ID(Long vISIT_REQ_ID) {
		VISIT_REQ_ID = vISIT_REQ_ID;
	}


	public String getDVC_CD() {
		return DVC_CD;
	}

	public void setDVC_CD(String dVC_CD) {
		DVC_CD = dVC_CD;
	}

	public String getSAVE_DATE() {
		return SAVE_DATE;
	}

	public void setSAVE_DATE(String sAVE_DATE) {
		SAVE_DATE = sAVE_DATE;
	}
    

    
}
