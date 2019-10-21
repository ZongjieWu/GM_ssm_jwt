package com.wzj.dao.mapper;

import com.wzj.dao.MyMapper;
import com.wzj.model.IssueJob;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface IssueJobMapper extends MyMapper<IssueJob> {
    List<Map<String,Object>> paging(Map<String,Object> map);
    Map<String,Object> apiDetail(@Param("id") Long id);
}