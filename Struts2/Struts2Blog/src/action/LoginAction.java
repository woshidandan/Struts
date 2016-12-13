package action;

import java.util.Map;

import biz.Users;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.DbService;

public class LoginAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	
	private String username;
	private String password;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String execute() throws Exception {
		DbService dbService = new DbService();
		Users user = new Users();
		user = dbService.hasUser(username, password);
	
		if(user.getUsername() == null){
			this.addFieldError(username, "用户或密码不正确！");
			return "error";
		}
		
		else if(user.getUsername().equals("xiaohe")) {
			//user.getUsername().equals("xiaohe")与user.getUsername() == "xiaohe"  用法有区别
			ActionContext actionContext = ActionContext.getContext();
			Map session = actionContext.getSession();
			session.put("user", user.getUsername());
			return "manager" ;
		}
		else{
			ActionContext actionContext = ActionContext.getContext();
			Map session = actionContext.getSession();
			session.put("user", user.getUsername());
		return SUCCESS; 
		}
	
	}
}
