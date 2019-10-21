package com.wzj.web.api;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIConversion;
import com.wzj.enums.Result;
import com.wzj.model.*;
import com.wzj.service.service.EduExperienceService;
import com.wzj.service.service.EnterpriseService;
import com.wzj.service.service.UserResumeService;
import com.wzj.service.service.WorkExperienceService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import io.swagger.models.auth.In;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import tk.mybatis.mapper.entity.Example;

import javax.validation.constraints.NotNull;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 *
 * Created by Zongjie Wu on 2019/03/30.
 */
@Validated
@Api(tags="用户简历")
@RestController
@RequestMapping("/api/userResume/")
public class ApiUserResume {

    @Autowired
    private UserResumeService userResumeService;
    @Autowired
    private WorkExperienceService workExperienceService;
    @Autowired
    private EduExperienceService eduExperienceService;
    @Autowired
    private EnterpriseService enterpriseService;

    @PostMapping("add")
    @ApiOperation("添加简历")
    public Map<String,Object> add(@RequestBody @ApiParam("用户简历") UserResume userResume) {
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        userResume.setAddTime(simpleDateFormat.format(new Date()));
        userResume.setModifyTime(simpleDateFormat.format(new Date()));
        userResumeService.save(userResume);
        return Result.retrunSucess();
    }

    @PostMapping("delete")
    public Map<String,Object> delete(@RequestParam Long id) {
	    userResumeService.deleteById(id);
	    return Result.retrunSucess();
    }


    @PostMapping("update")
    public Map<String,Object> update(UserResume userResume) {
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        userResume.setModifyTime(simpleDateFormat.format(new Date()));
//        UserResume ur=new UserResume();
//        ur.setUserId(userResume.getUserId());
        UserResume ur=userResumeService.findBy("userId",userResume.getUserId());
        if(ur==null){
            userResumeService.save(userResume);
        }else {
            userResume.setId(ur.getId());
            userResumeService.update(userResume);
        }

        UserResume ur111=userResumeService.findBy("userId",userResume.getUserId());
	    return Result.retrunSucessMsgData(ur111.getId());
    }

    @PostMapping("detailByUserId")
    public Map<String,Object> detailByUserId(@RequestParam Long userId) {
        UserResume userResume = userResumeService.findBy("userId",userId);
        return Result.retrunSucessMsgData(userResume);
    }
    @PostMapping("showByUserId")
    public Map<String,Object> showByUserId(@RequestParam Long userId) {
        UserResume userResume = userResumeService.findBy("userId",userId);
        List<UserResume> userResumeList=new ArrayList<>();

        WorkExperience workExperience=new WorkExperience();
        workExperience.setUserResumeId(userResume.getId());
        List<WorkExperience> workExperienceList=workExperienceService.queryListByWhere(workExperience);
        EduExperience eduExperience=new EduExperience();
        eduExperience.setUserResumeId(userResume.getUserId());
        List<EduExperience> eduExperienceList=eduExperienceService.queryListByWhere(eduExperience);
        userResume.setEduExperienceList(eduExperienceList);
        userResume.setWorkExperienceList(workExperienceList);
        userResumeList.add(userResume);
        Map<String,Object> paramMap=new HashMap<>();
        paramMap.put("userResumeList",userResumeList);
        return Result.retrunSucessMsgData(paramMap);
    }

    @PostMapping("detail")
    public Map<String,Object> detail(@RequestParam @NotNull Long id) {
        if(id==null){
            return Result.retrunFail();
        }else{
            UserResume userResume = userResumeService.findById(id);
            List<UserResume> userResumeList=new ArrayList<>();

            WorkExperience workExperience=new WorkExperience();
            workExperience.setUserResumeId(userResume.getId());
            List<WorkExperience> workExperienceList=workExperienceService.queryListByWhere(workExperience);
            EduExperience eduExperience=new EduExperience();
            eduExperience.setUserResumeId(userResume.getId());
            List<EduExperience> eduExperienceList=eduExperienceService.queryListByWhere(eduExperience);
            userResume.setEduExperienceList(eduExperienceList);
            userResume.setWorkExperienceList(workExperienceList);
            userResumeList.add(userResume);
            Map<String,Object> paramMap=new HashMap<>();
            paramMap.put("userResumeList",userResumeList);
            return Result.retrunSucessMsgData(paramMap);
        }
    }


    @PostMapping("detailByEnterpriseId")
    public Map<String,Object> detail(@RequestParam @NotNull Long id,@RequestParam @NotNull Long enterpriseId) {
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
        Boolean flag=false;
        if(id==null||enterpriseId==null){
            return Result.retrunFail();
        }else{

            //判断企业是否到期
            Enterprise enterprise=enterpriseService.findById(enterpriseId);
            if(enterprise.getServiceEndTime()==null){
                flag=true;
            }else{
                String serviceEndTimeStr=enterprise.getServiceEndTime();
                Date serviceEndTime=null;
                try {
                    serviceEndTime=simpleDateFormat.parse(serviceEndTimeStr);
                    if(serviceEndTime.getTime()<new Date().getTime()){
                        flag=false;
                    }else{
                        flag=true;
                    }
                } catch (ParseException e) {
                    e.printStackTrace();
                }
            }
            UserResume userResume = userResumeService.findById(id);
            if(!flag){
                if(userResume.getPhone()==null||userResume.getPhone().length()<11){
                    userResume.setPhone("********");
                }else{
                    userResume.setPhone(userResume.getPhone().substring(0,7)+"****");
                }
                if(userResume.getWeChat()==null||userResume.getWeChat().length()<4){
                    userResume.setWeChat("********");
                }else{
                    userResume.setWeChat(userResume.getWeChat().substring(0,userResume.getWeChat().length()-4)+"****");
                }
                if(userResume.getQq()==null||userResume.getQq().length()<4){
                    userResume.setQq("********");
                }else{
                    userResume.setQq(userResume.getQq().substring(0,userResume.getQq().length()-4)+"****");
                }
                if(userResume.getEmail()==null){
                    userResume.setEmail("************");
                }else{
                    userResume.setEmail("************");
//                    userResume.setEmail(userResume.getEmail().split("@")[0].substring(0,userResume.getEmail().split("@")[0].length()-4)+"****@"+userResume.getEmail().split("@")[1]);
                }
            }
            List<UserResume> userResumeList=new ArrayList<>();
            WorkExperience workExperience=new WorkExperience();
            workExperience.setUserResumeId(userResume.getId());
            List<WorkExperience> workExperienceList=workExperienceService.queryListByWhere(workExperience);
            EduExperience eduExperience=new EduExperience();
            eduExperience.setUserResumeId(userResume.getId());
            List<EduExperience> eduExperienceList=eduExperienceService.queryListByWhere(eduExperience);
            userResume.setEduExperienceList(eduExperienceList);
            userResume.setWorkExperienceList(workExperienceList);
            userResumeList.add(userResume);
            Map<String,Object> paramMap=new HashMap<>();
            paramMap.put("userResumeList",userResumeList);
            paramMap.put("flag",flag);
            return Result.retrunSucessMsgData(paramMap);
        }
    }

//    @PostMapping("paging")
//    public Map<String,Object> paging(@RequestParam(defaultValue = "0") Integer page, @RequestParam(defaultValue = "0") Integer limit,String keywords,Long enterpriseId,String workPlace,String age,String sex,String workAge,String education) {
//        Example example=new Example(UserResume.class);
//        Example.Criteria criteria=example.createCriteria();
////        if(enterpriseId==null){
////        }else{
////            SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
////            Enterprise enterprise=enterpriseService.findById(enterpriseId);
////            try {
////                if(sdf.parse(enterprise.getServiceEndTime()).getTime()<sdf.parse(sdf.format(new Date())).getTime()){
////                    return Result.retrunFailMsgData("重新登入",-1);
////                }
////            } catch (ParseException e) {
////                e.printStackTrace();
////            }
////        }
//        if(keywords==null||keywords.equals("")){
//        }else{
//            criteria.andCondition(" (name like '%"+keywords+"%' or phone like '%"+keywords+"%' or job_type like '%"+keywords+"%')");
//        }
//        if(workPlace==null||workPlace.equals("")){
//        }else{
//            criteria.andCondition(" (province like '%"+workPlace+"%' or city like '%"+workPlace+"%' or area like '%"+workPlace+"%' or detail_place like '%"+workPlace+"%')");
//        }
//        if(age==null||age.equals("")){
//        }else{
//            String[] ageArr=age.split("-");
//            criteria.andCondition(" age between "+ageArr[0]+" and "+ageArr[1]);
//        }
//        if(sex==null||sex.equals("")){
//        }else{
//            criteria.andCondition(" sex like '"+sex+"'");
//        }
//        if(workAge==null||workAge.equals("")){
//        }else{
//            String[] workAgeArr=workAge.split("-");
//            criteria.andCondition(" work_age between "+workAgeArr[0]+" and "+workAgeArr[1]);
//        }
//        if(education==null||education.equals("")){
//        }else{
//            criteria.andCondition(" education like '%"+education+"%'");
//        }
//        PageHelper.startPage(page, limit);
//        PageInfo<UserResume> userResumePageInfo = userResumeService.queryPageListByWhereExample(" id desc",page,limit,example);
//        Map<String,Object> map=Result.retrunSucessMsgData(userResumePageInfo.getList());
//        map.put("count",userResumePageInfo.getTotal());
//        return map;
//    }
    @PostMapping("paging")
    public Map<String,Object> userResumePaging(@RequestParam(defaultValue = "0") Integer page, @RequestParam(defaultValue = "0") Integer limit,String keywords,Long enterpriseId,String workPlace,String age,String sexStr,String workAge,String education) {
            Map<String,Object> paramMap=new HashMap<String,Object>();
//        if(enterpriseId==null){
//        }else{
//            SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
//            Enterprise enterprise=enterpriseService.findById(enterpriseId);
//            try {
//                if(sdf.parse(enterprise.getServiceEndTime()).getTime()<sdf.parse(sdf.format(new Date())).getTime()){
//                    return Result.retrunFailMsgData("重新登入",-1);
//                }
//            } catch (ParseException e) {
//                e.printStackTrace();
//            }
//        }
        if(keywords==null||keywords.equals("")){
        }else{
            paramMap.put("keywords",keywords);
        }
        if(workPlace==null||workPlace.equals("")){
        }else{
            paramMap.put("workPlace",workPlace);
        }

        if(age==null||age.equals("")){
        }else{
            String[] ageArr=age.split("-");
            paramMap.put("startAge",Integer.valueOf(ageArr[0]));
            paramMap.put("endAge",Integer.valueOf(ageArr[1]));
        }
        if(sexStr==null||sexStr.equals("")){
        }else{
            paramMap.put("sex",Integer.valueOf(sexStr));
        }
        if(workAge==null||workAge.equals("")){
        }else{
            String[] workAgeArr=workAge.split("-");
            paramMap.put("startWorkAge",Integer.valueOf(workAgeArr[0]));
            paramMap.put("endWorkAge", Integer.valueOf(workAgeArr[1]));
        }
        if(education==null||education.equals("")){
        }else{
            paramMap.put("education",Integer.valueOf(education));
        }
        PageHelper.startPage(page, limit);
        PageHelper.orderBy(" ur.id desc");
        PageInfo<Map<String,Object>> userResumePageInfo = userResumeService.paging(paramMap);
        Map<String,Object> map=Result.retrunSucessMsgData(userResumePageInfo.getList());
        map.put("count",userResumePageInfo.getTotal());
        return map;
    }
}
