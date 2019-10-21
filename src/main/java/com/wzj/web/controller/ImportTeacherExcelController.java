package com.wzj.web.controller;
import com.wzj.enums.Result;
import com.wzj.model.EduExperience;
import com.wzj.model.User;
import com.wzj.model.UserResume;
import com.wzj.model.WorkExperience;
import com.wzj.service.service.EduExperienceService;
import com.wzj.service.service.UserResumeService;
import com.wzj.service.service.UserService;
import com.wzj.service.service.WorkExperienceService;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import springfox.documentation.annotations.ApiIgnore;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

@ApiIgnore
@RestController
@RequestMapping("/importTeacherExcel/")
public class ImportTeacherExcelController {
    @Autowired
    private UserResumeService userResumeService;
    @Autowired
    private UserService userService;
    @Autowired
    private WorkExperienceService workExperienceService;
    @Autowired
    private EduExperienceService eduExperienceService;


    @RequestMapping("readXls")
    public Map<String,Object> readXls(@RequestParam("file") MultipartFile file) throws Exception {
        XSSFWorkbook excel = new XSSFWorkbook(file.getInputStream());
        UserResume userResume = null;
        List<UserResume> list = new ArrayList<UserResume>();
        WorkExperience workExperience=null;
        EduExperience eduExperience=null;

        // 循环工作表Sheet,获取excel中的数据
        for (int numSheet = 0; numSheet < excel.getNumberOfSheets(); numSheet++) {
            XSSFSheet sheet = excel.getSheetAt(numSheet);
            if (sheet == null)
                continue;
            // 循环行Row
            for (int rowNum = 1; rowNum <= sheet.getLastRowNum(); rowNum++) {
                XSSFRow row = sheet.getRow(rowNum);
                if (row == null)
                    continue;
                userResume = new UserResume();

                XSSFCell cell0 = row.getCell(0);
                if (cell0 == null){
                }else{
                    userResume.setHeadImg(cell0.getStringCellValue());
                }


                XSSFCell cell1 = row.getCell(1);
                if (cell1 == null){
                }else{
                    userResume.setName(cell1.getStringCellValue());
                }


                XSSFCell cell2 = row.getCell(2);

                if (cell2 == null){
                }else{
                    if(cell2.getCellType() == XSSFCell.CELL_TYPE_NUMERIC){
                        cell2.setCellType(XSSFCell.CELL_TYPE_STRING);
                    }
                    userResume.setPhone(cell2.getStringCellValue());
                }

                XSSFCell cell3 = row.getCell(3);
                if (cell3 == null){
                }else{
                    userResume.setEmail(cell3.getStringCellValue());
                }

                XSSFCell cell4 = row.getCell(4);
                if (cell4 == null){
                }else{
                    if(cell4.getCellType() == XSSFCell.CELL_TYPE_NUMERIC){
                        cell4.setCellType(XSSFCell.CELL_TYPE_STRING);
                    }
                    userResume.setWeChat(cell4.getStringCellValue());
                }

                XSSFCell cell5 = row.getCell(5);
                if(cell5==null){
                }else if(cell5.getStringCellValue().equals("男")){
                    userResume.setSex(0);
                }else{
                    userResume.setSex(1);
                }

                XSSFCell cell6 = row.getCell(6);
                if (cell6 == null){
                }else{
//                    userResume.setAge(Integer.valueOf(cell6.getStringCellValue().split("[.]")[0]));
                    userResume.setAge(Integer.valueOf(String.valueOf(cell6.getNumericCellValue()).split("[.]")[0]));
                }

                XSSFCell cell7 = row.getCell(7);
                if (cell7 == null){
                }else{
                    userResume.setWorkAge(String.valueOf(cell7.getNumericCellValue()).split("[.]")[0]);
                }

                XSSFCell cell8 = row.getCell(8);
                if (cell8 == null){
                }else{
                    userResume.setExpectMoney(String.valueOf(cell8.getNumericCellValue()).split("[.]")[0]);
                }


                XSSFCell cell9 = row.getCell(9);
                if(cell9==null){
                }else if(cell9.getStringCellValue().equals("离职-随时到岗")){
                    userResume.setFindJobStatus(0);
                }else if(cell9.getStringCellValue().equals("在职-月内到岗")){
                    userResume.setFindJobStatus(1);
                }else if(cell9.getStringCellValue().equals("在职-考虑机会")){
                    userResume.setFindJobStatus(2);
                }else if(cell9.getStringCellValue().equals("在职-暂不考虑")) {
                    userResume.setFindJobStatus(3);
                }

                XSSFCell cell10 = row.getCell(10);
                if(cell0==null){
                }else if(cell10.getStringCellValue().equals("未婚")){
                    userResume.setMarriageStatus(0);
                }else if(cell10.getStringCellValue().equals("已婚")){
                    userResume.setMarriageStatus(1);
                }

                XSSFCell cell11 = row.getCell(11);
                if (cell11 == null){
                }else{
                    userResume.setNativePlace(cell11.getStringCellValue());
                }

                XSSFCell cell12 = row.getCell(12);
                if (cell12 == null){
                }else{
                    userResume.setNation(cell12.getStringCellValue());
                }

                XSSFCell cell13 = row.getCell(13);
                if (cell13 == null){
                }else{
                    userResume.setJobType(cell13.getStringCellValue());
                }


                XSSFCell cell14 = row.getCell(14);
                if (cell14 == null){
                }else{
                    userResume.setProvince(cell14.getStringCellValue());
                }


                XSSFCell cell15 = row.getCell(15);
                if (cell15 == null){
                }else{
                    userResume.setCity(cell15.getStringCellValue());
                }


                XSSFCell cell16 = row.getCell(16);
                if (cell16 == null){
                }else{
                    userResume.setArea(cell16.getStringCellValue());
                }


                XSSFCell cell17 = row.getCell(17);
                if (cell17 == null){
                }else{
                    userResume.setDetailPlace(cell17.getStringCellValue());
                }


                XSSFCell cell18 = row.getCell(18);
                if (cell18 == null){
                }else{
                    userResume.setNowProvince(cell18.getStringCellValue());
                }

                XSSFCell cell19 = row.getCell(19);
                if (cell19 == null){
                }else{
                    userResume.setNowCity(cell19.getStringCellValue());
                }


                XSSFCell cell20 = row.getCell(20);
                if (cell20 == null){
                }else{
                    userResume.setNowArea(cell20.getStringCellValue());
                }



                XSSFCell cell21 = row.getCell(21);
                if(cell21==null){
                }else if(cell21.getStringCellValue().equals("高中")){
                    userResume.setEducation(0);
                }else if(cell21.getStringCellValue().equals("专科")){
                    userResume.setEducation(1);
                }else if(cell21.getStringCellValue().equals("本科")){
                    userResume.setEducation(2);
                }else if(cell21.getStringCellValue().equals("研究生")) {
                    userResume.setEducation(3);
                }else if(cell21.getStringCellValue().equals("博士")) {
                    userResume.setEducation(4);
                }


                XSSFCell cell22 = row.getCell(22);
                if (cell22 == null){
                }else{
                    userResume.setGraduateSchool(cell22.getStringCellValue());
                }

                XSSFCell cell23 = row.getCell(23);
                if (cell23 == null){
                }else{
                    userResume.setMajor(cell23.getStringCellValue());
                }


                XSSFCell cell24 = row.getCell(24);
                if (cell24 == null){
                }else{
                    userResume.setJobSkill(cell24.getStringCellValue());
                }


                XSSFCell cell25 = row.getCell(25);
                if (cell25 == null){
                }else{
                    userResume.setSelfAppraise(cell25.getStringCellValue());
                }

                workExperience=new WorkExperience();
                XSSFCell cell26 = row.getCell(26);
                if (cell26 == null){
                }else{
                    workExperience.setEnterpriseName(cell26.getStringCellValue());
                }


                XSSFCell cell27 = row.getCell(27);
                if (cell27 == null){
                }else{
                    workExperience.setJobName(cell27.getStringCellValue());
                }

                XSSFCell cell28 = row.getCell(28);
                if (cell28 == null){
                }else{
                    if(cell28.getCellType() == XSSFCell.CELL_TYPE_NUMERIC){
                        if(HSSFDateUtil.isCellDateFormatted(cell28)){
                            //用于转化为日期格式
                            Date d = cell28.getDateCellValue();
                            DateFormat formater = new SimpleDateFormat("yyyy-MM-dd");
                            workExperience.setStartTime(formater.format(d));
                        }
                    }
                }

                XSSFCell cell29 = row.getCell(29);
                if (cell29 == null){
                }else{
                    if(cell29.getCellType() == XSSFCell.CELL_TYPE_NUMERIC){
                        if(HSSFDateUtil.isCellDateFormatted(cell29)){
                            //用于转化为日期格式
                            Date d = cell29.getDateCellValue();
                            DateFormat formater = new SimpleDateFormat("yyyy-MM-dd");
                            workExperience.setEndTime(formater.format(d));
                        }
                    }
                }

                XSSFCell cell30 = row.getCell(30);
                if (cell30 == null){
                }else{
                    workExperience.setWorkContent(cell30.getStringCellValue());
                }


                eduExperience=new EduExperience();
                XSSFCell cell31 = row.getCell(31);
                if (cell31 == null){
                }else{
                    eduExperience.setName(cell31.getStringCellValue());
                }

                XSSFCell cell32 = row.getCell(32);
                if (cell32 == null){
                }else{
                    eduExperience.setMajor(cell32.getStringCellValue());
                }

                XSSFCell cell33 = row.getCell(33);
                if (cell33 == null){
                }else{
                    if(cell33.getCellType() == XSSFCell.CELL_TYPE_NUMERIC){
                        if(HSSFDateUtil.isCellDateFormatted(cell33)){
                            //用于转化为日期格式
                            Date d = cell33.getDateCellValue();
                            DateFormat formater = new SimpleDateFormat("yyyy-MM-dd");
                            eduExperience.setStartTime(formater.format(d));
                        }
                    }
                }

                XSSFCell cell34 = row.getCell(34);
                if (cell34 == null){
                }else{
                    if(cell34.getCellType() == XSSFCell.CELL_TYPE_NUMERIC){
                        if(HSSFDateUtil.isCellDateFormatted(cell34)){
                            //用于转化为日期格式
                            Date d = cell34.getDateCellValue();
                            DateFormat formater = new SimpleDateFormat("yyyy-MM-dd");
                            eduExperience.setEndTime(formater.format(d));
                        }
                    }
                }

                List<WorkExperience> workExperienceList=new ArrayList<>();
                List<EduExperience> eduExperienceList=new ArrayList<>();
                workExperienceList.add(workExperience);
                eduExperienceList.add(eduExperience);
                userResume.setWorkExperienceList(workExperienceList);
                userResume.setEduExperienceList(eduExperienceList);
                list.add(userResume);
            }
        }



        User user=null;
        User u=null;
        String errPhone="";
        for(int i=0;i<list.size();i++){
            user=new User();
            if(list.get(i).getPhone()==null||list.get(i).getPhone().equals("")){
            }else{
                user=userService.findBy("phone",list.get(i).getPhone());
                if(user==null&&list.get(i).getPhone()!=null&&!list.get(i).getPhone().equals("")){
                    u=new User();
                    u.setName(list.get(i).getName());
                    u.setPhone(list.get(i).getPhone());
                    u.setHeadImg(list.get(i).getHeadImg());
                    u.setEmail(list.get(i).getEmail());
                    u.setWeChat(list.get(i).getWeChat());
                    u.setPwd("123456");
                    userService.save(u);
                    User u1=userService.findBy("phone",list.get(i).getPhone());
                    list.get(i).setUserId(u1.getId());
                    userResumeService.save(list.get(i));

                    UserResume ur1=userResumeService.findBy("userId",u1.getId());
                    WorkExperience workExperience1=new WorkExperience();
                    workExperience1=list.get(i).getWorkExperienceList().get(0);
                    EduExperience eduExperience1=new EduExperience();
                    eduExperience1=list.get(i).getEduExperienceList().get(0);
                    workExperience1.setUserResumeId(ur1.getId());
                    eduExperience1.setUserResumeId(ur1.getId());
                    workExperienceService.save(workExperience1);
                    eduExperienceService.save(eduExperience1);
                }else{
                    errPhone+=list.get(i).getPhone()+",";
                }
            }
        }
        String errMsg="";
        if(errPhone.equals("")){
        }else{
            errMsg="已阻止以下重复手机号码的记录导入:"+errPhone.substring(0,errPhone.length()-1);
        }
        return Result.retrunSucessMsg("导入成功！"+errMsg);
    }



}
