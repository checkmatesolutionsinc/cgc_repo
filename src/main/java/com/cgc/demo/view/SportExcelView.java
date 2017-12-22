package com.cgc.demo.view;

import java.text.DecimalFormat;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.web.servlet.view.document.AbstractExcelView;

import com.cgc.demo.model.UserAssociation;

@SuppressWarnings("deprecation")
public class SportExcelView extends AbstractExcelView{
	
	protected void buildExcelDocument(Map model, HSSFWorkbook workbook,
			   HttpServletRequest request, HttpServletResponse response) throws Exception {
		DecimalFormat df2 = new DecimalFormat("0.00");
		
		
		@SuppressWarnings("unchecked")
		List<UserAssociation> userAssociation = (List<UserAssociation>) model.get("userAssociation");
		
		HSSFSheet sheet = workbook.createSheet("Association Members");
		
		HSSFRow header = sheet.createRow(0);
		  header.createCell(0).setCellValue("Member Name");
		  header.createCell(1).setCellValue("Team");
		  header.createCell(2).setCellValue("Player");
		  header.createCell(3).setCellValue("Total Funds");
		  header.createCell(4).setCellValue("Funding Percent");
		  
		  int count = 1;
		  for(UserAssociation user: userAssociation){
			  HSSFRow row = sheet.createRow(count++);
			  row.createCell(0).setCellValue(user.getUser_first_name() +" "+user.getUser_last_name());
			   row.createCell(1).setCellValue(user.getTeam_name());
			   row.createCell(2).setCellValue(user.getPlayer_name());
			   row.createCell(3).setCellValue("$"+df2.format(user.getSum_total()));
			   row.createCell(4).setCellValue("%"+user.getDonation_amount()*100);
		  }
	}

}
