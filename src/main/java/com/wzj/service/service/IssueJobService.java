package com.wzj.service.service;
import com.github.pagehelper.PageInfo;
import com.wzj.model.IssueJob;
import com.wzj.service.Service;

import java.util.List;
import java.util.Map;

/**
 *
 * Created by Zongjie Wu on 2019/04/01.
 */
public interface IssueJobService extends Service<IssueJob> {
    PageInfo<Map<String,Object>> paging(Map<String,Object> map);
    Map<String,Object> apiDetail(Long id);
}
