package com.xiaomaoguai.gecco.task;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by kmn on 2016/9/19.
 */
public class TaskUserManager {
    public static Map<String,List<String>> users=new HashMap<String, List<String>>();
    static {
        List<String> weiboList=new ArrayList<String>();
        weiboList.add("hecmcn");
        weiboList.add("kylinclub");
        users.put("weibo",weiboList);
        List<String> taogubaList=new ArrayList<String>();
        taogubaList.add("11840");
        users.put("taoguba",taogubaList);
    }
}
