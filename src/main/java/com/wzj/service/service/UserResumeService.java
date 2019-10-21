package com.wzj.service.service;
import com.github.pagehelper.PageInfo;
import com.wzj.model.UserResume;
import com.wzj.service.Service;

import java.util.Map;

/**
 *
 * Created by Zongjie Wu on 2019/03/30.
 */
public interface UserResumeService extends Service<UserResume> {
    PageInfo<Map<String,Object>> paging(Map<String,Object> map);
}
