package com.xiaomaoguai.gecco.crawler.taoguba.util;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.message.BasicNameValuePair;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.xiaomaoguai.gecco.crawler.taoguba.util.log.PlatformLogger;

public class TaogubaLoginUtil {
	private static String location;
    public static StringBuilder cookie = new StringBuilder();
    private static LoginHeader header = new LoginHeader();
    private static String loginAction = null;
    private static String pwdName = null;
    private static List<BasicNameValuePair> nvps  = new ArrayList<BasicNameValuePair>();

    /**
     * 首选获取登录的页面信息
     *
     * http://login.weibo.cn/login/
     *
     */
    private void preLogin(){

        Map<String , String> map = header.getLoginHeader();
        CloseableHttpResponse response = HttpGetRequest.getRequest("http://login.weibo.cn/login/", map);
        String html = PrintOutUtils.getEntityToString(response);
        PlatformLogger.message("THE PRE LOGIN PAGE HTML : " + html);
        Document doc = Jsoup.parse(html);
        Elements inputs = doc.getElementsByTag("input");
        Element form = doc.getElementsByTag("form").get(0);
        loginAction = form.attr("action");
        for(int i = 0; i < inputs.size(); i++){
            Element input = inputs.get(i);
            // 从input组件中筛选出密码框，并获取password name
            if(input.attr("type").equalsIgnoreCase("password")
                    && input.attr("name").startsWith("password_")){
                pwdName = input.attr("name");
            }
            // 将隐藏域放入Form
            else if(input.attr("type").equalsIgnoreCase("hidden")){
                nvps.add(new BasicNameValuePair(input.attr("name"), input.attr("value")));
            }
        }

    }
    
    
    /**
     * 从页面中的登录信息中的ation 然后进行登录操作 使用post方式
     *
     * http://login.weibo.cn/login/    + loginAction
     *
     */
    private void loginActioon(){
        nvps.add(new BasicNameValuePair("mobile" , UserConstant.username));
        nvps.add(new BasicNameValuePair(pwdName , UserConstant.password));
        nvps.add(new BasicNameValuePair("submit", "登录"));
        CloseableHttpResponse response = HttpPostRequest.postRequest("http://login.weibo.cn/login/" + loginAction, nvps);
        location = ClientUtil.getHeaderValue(response , HeaderConstant.Location);
        cookie.append(ClientUtil.getCookieValue(response));
        String html = PrintOutUtils.getEntityToString(response);
        PlatformLogger.message("THE　LOGIN ACTION PAGE : " + html);

    }


    /**
     *
     * 登录以后  刷新页面  获取登录以后的主页面信息
     *
     * http://newlogin.sina.cn/crossDomain/?g=4uvS2a691iFbeMvwxkN8u8br37P&t=1451872100&m=a2c0&r=&u=http%3A%2F%2Fweibo.cn%3Fgsid%3D4uvS2a691iFbeMvwxkN8u8br37P%26PHPSESSID%3D%26vt%3D4&cross=1&st=ST-MTk1MDU4NTQ4NQ==-1451872100-yf-92C3B217696D9293EAECCD9612CF250F,
     * ST-MTk1MDU4NTQ4NQ==-1451872100-yf-DEA57B8ED3F3117247AE1F4F72DA076B&vt=4
     *
     */
    private void loginMain(){

        Map<String , String> map = header.getNewLogin(cookie.toString());
        String strParam = location.split("\\?")[1];
        String[] ss = strParam.split("&");
        for (String s : ss){
            if (s.indexOf("g=") != -1){
                location = "gsid=" + s.split("=")[1];
            }
        }
        CloseableHttpResponse response = HttpGetRequest.getRequest("http://weibo.cn/?" + location, map);
        String html = PrintOutUtils.getEntityToString(response);
        ParseHtml.printMainPageMsg(html);
        PlatformLogger.message("THE　LOGIN MAIN MESSAGE : " + html);

    }
    
    /**
     * 登录淘股吧,检查cookie是否有效,如果有效则登录
     */
    public void loginTaoguba(){

    }
}
