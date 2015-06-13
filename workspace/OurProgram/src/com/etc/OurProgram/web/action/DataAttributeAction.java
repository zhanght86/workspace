package com.etc.OurProgram.web.action;

import java.util.List;
import com.opensymphony.xwork2.ActionSupport;
import com.etc.OurProgram.service.DataAttributeService;
import com.etc.OurProgram.service.impl.DataAttributeServiceImpl;




@SuppressWarnings("serial")
public class DataAttributeAction extends ActionSupport{
	private String num;
	private String name;
	private String qq;
	private String id;
	private int id1;
	private int i=0;
	private int pagesize=10;
	private int k;//储存最大页面数
    private int pageNow=1; //页码数,初始为1
    private int intRowCount;//总行数
    private int intPageCount;//总页数
	private List list;
	private DataAttributeService dataAttributeService;
		
//	private HttpServletRequest request = ServletActionContext.getRequest() ;
//	request.setCharacterEncoding("UTF-8");	
	public String accounting() throws Exception {
		dataAttributeService = new DataAttributeServiceImpl();
		
		
        
//		System.out.println("资料属性编号:" + num);
//		System.out.println("资料属性名称:" +name);
//		System.out.println("this is my first action!");
		
		boolean flag = dataAttributeService.accounting(num, name,qq,id);
//		if(flag==false)
//		{
//			addActionError("会计科目编码已存在，请重新输入！");
//		}
		
		intRowCount=dataAttributeService.count();
		k=(intRowCount + pagesize - 1) / pagesize;
        intPageCount = (intRowCount + pagesize - 1) / pagesize;//计算出总页数
        if(pageNow<1){
            pageNow=1;
        }
        
        if(pageNow > intPageCount)
             pageNow=intPageCount;
             i = (pageNow -1)*pagesize;

		this.setList(dataAttributeService.queryUser(i,pagesize));
		return SUCCESS;
	}

	
	
	public String getNum() {
		return num;
	}
	public void setNum(String kjnum) {
		this.num = kjnum;
	}

	public String getName() {
		return name;
	}
	public void setName(String kjname) {
		this.name = kjname;
	}

	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}

	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}

	public int getK() {
		return k;
	}
	public void setK(int k) {
		this.k = k;
	}

	public int getPageNow() {
		return pageNow;
	}
	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}

	public int getIntRowCount() {
		return intRowCount;
	}
	public void setIntRowCount(int intRowCount) {
		this.intRowCount = intRowCount;
	}

	public int getIntPageCount() {
		return intPageCount;
	}
	public void setIntPageCount(int intPageCount) {
		this.intPageCount = intPageCount;
	}	
	
}
