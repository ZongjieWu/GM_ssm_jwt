package com.wzj.dao.mapper;

import com.wzj.dao.MyMapper;
import com.wzj.model.UserResume;

import java.util.List;
import java.util.Map;

public interface UserResumeMapper extends MyMapper<UserResume> {
    List<Map<String,Object>> paging(Map<String,Object> map);
}