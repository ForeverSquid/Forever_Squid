package com.Forever.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.Forever.po.AllUser;
import com.Forever.po.Com;
import com.Forever.po.Mark;
import com.Forever.po.Mul;
import com.Forever.po.User;

public class UserDao {

	private static SessionFactory sf;
	static{
		//获取加载配置文件的管理类对象
		Configuration config=new Configuration();
		config.configure();			//默认加载src下的hibernate.cfg.xml

		//创建session工厂
		sf=config.buildSessionFactory();

	}

	public void add(int id,String address,String FName) throws Exception{

		Date   now   =   new   Date();       
		SimpleDateFormat   dateFormat   =   new   SimpleDateFormat("yyyy-MM-dd kk:mm:ss");//可以方便地修改日期格式       
		String  time  = dateFormat.format(now);

		//创建session  （代表一个与数据库连接的会话）
		Session session=sf.openSession();
		//开启事务
		Transaction tx = session.beginTransaction();
		//保存数据库

		Mul user=new Mul();
		user.setId(id);
		user.setAddress(address);
		user.setDate(time);
		user.setFName(FName);

		session.save(user);
		//提交事务
		tx.commit();
		//关闭
		try {
			session.close();
			sf.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}

	public String query_tiaojian(int id){

		Session session=sf.openSession();
		Query query = session.createQuery("select u.address from Mul u where id="+id);
		List list = query.list();
		Iterator it=list.iterator();

		try {
			session.close();
			sf.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return (String) it.next();
	}

	/*public static void main(String[] args) {
		new UserDao().queryMes(9);
	}*/
	public List<Com> queryMes(int id){

		List<Com> list2 = new ArrayList<Com>();
		Session session=sf.openSession();
		Query query = session.createQuery("from Com where mul_id="+id);
		List<Com> list = query.list();
		Iterator<Com> it=list.iterator();

		while(it.hasNext()){
			Com	q = it.next();
			Com c=new Com();
			c.setUsername(this.ChangeName(q.getUser_id()));
			c.setMes(q.getMes());
			c.setDates(q.getDates());
			list2.add(c);
		}
		try {
			session.close();
			sf.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list2;
	}

	public User login(String username,String password){
		int id=0;
		User user=new User();
		try {
			Session session=sf.openSession();
			Query query=session.createQuery("from User");//HQL:Hibernate Query Language
			List<User> list=query.list();	//SQL:Structed Query Language

			Iterator<User> it=list.iterator();
			while(it.hasNext()){
				User user1=it.next();
				if(user1.getUsername().equals(username)&&user1.getPassword().equals(password)){
					user.setId(user1.getId());
					user.setUsername(user1.getUsername());
					user.setPassword(user1.getPassword());
					break;
				}
			}

		} catch (Exception e) {

			e.printStackTrace();
		}
		return user;
	}

	public void register(String username,String password){

		//创建session  （代表一个与数据库连接的会话）
		Session session=sf.openSession();
		//开启事务
		Transaction tx = session.beginTransaction();
		//保存数据库

		User user=new User();
		user.setUsername(username);
		user.setPassword(password);

		session.save(user);
		//提交事务
		tx.commit();
		//关闭
		try {
			session.close();
			sf.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public void addmes(String user_id,String mul_id,String mes){

		Date   now   =   new   Date();       
		SimpleDateFormat   dateFormat   =   new   SimpleDateFormat("yyyy-MM-dd kk:mm:ss");//可以方便地修改日期格式       
		String  time  = dateFormat.format(now);
		//创建session  （代表一个与数据库连接的会话）
		Session session=sf.openSession();
		//开启事务
		Transaction tx = session.beginTransaction();
		//保存数据库

		Com user=new Com();
		user.setUser_id(Integer.parseInt(user_id.toString()));
		user.setMul_id(Integer.parseInt(mul_id.toString()));
		user.setMes(mes);
		user.setDates(time);

		session.save(user);
		//提交事务
		tx.commit();
		//关闭
		try {
			session.close();
			sf.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public List<AllUser> querymark(int id){   //返回的是名，路径，文件名的list

		List<AllUser> list2 = new ArrayList<AllUser>();
		Session session=sf.openSession();
		Query query = session.createQuery("from Mark where user_id="+id);
		List<Mark> list = query.list();
		Iterator<Mark> it=list.iterator();

		while(it.hasNext()){
			Mark q = it.next();
			AllUser user = new AllUser();
			user = this.queryByMul_id(q.getMul_id());
			
			list2.add(user);
		}
		try {
			session.close();
			sf.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list2;
	}

	
	public void addmark(int user_id,int mul_id){

		//创建session  （代表一个与数据库连接的会话）
		Session session=sf.openSession();
		//开启事务
		Transaction tx = session.beginTransaction();
		//保存数据库

		Mark user=new Mark();
		user.setUser_id(user_id);
		user.setMul_id(mul_id);

		session.save(user);
		//提交事务
		tx.commit();
		//关闭
		try {
			session.close();
			sf.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public List<AllUser> welcome_show(){
		List<AllUser> list2 = new ArrayList<AllUser>();
		try {
			Session session=sf.openSession();
			Query query=session.createQuery("from Mul");//HQL:Hibernate Query Language
			List<Mul> list=query.list();
			//SQL:Structed Query Language
			Iterator<Mul> it=list.iterator();

			Mul mul;
			while(it.hasNext()){
				mul= it.next();
				AllUser user=new AllUser();
				user.setUsername(this.ChangeName(mul.getId()));
				user.setAddress(mul.getAddress());
				user.setDate(mul.getDate());
				user.setFName(mul.getFName());
				user.setId(mul.getId());
				user.setId_zhujian(mul.getId_zhujian());
				user.setZan(mul.getZan());
				list2.add(user);
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list2;
	}

	public int getZanMethod(String id){

		Session session=sf.openSession();
		Query query = session.createQuery("from Mul");
		List<Mul> list = query.list();
		Iterator<Mul> it=list.iterator();

		Mul mul_c = it.next();
		//修改数据库赞的数量
		try {
			this.updateZan(Integer.parseInt(id), mul_c.getZan());
		} catch (NumberFormatException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		try {
			session.close();
			sf.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return mul_c.getZan()+1;  //返回赞+1的数量
	}

	public void updateZan(int id,int count) throws Exception {
		Transaction trans=null;
		try {

			Session session=sf.openSession();
			trans=session.beginTransaction();

			Mul user=(Mul)session.load(Mul.class, id);
			user.setZan(count+1);
			session.update(user);

			trans.commit();
		} catch (Exception e) {
			// TODO: handle exception
			trans.rollback();
			e.printStackTrace();
		}
	}



	//无主题代码__________________________________________________________________________________	
	public SessionFactory getSf() {
		return sf;
	}
	public void setSf(SessionFactory sf) {
		this.sf = sf;
	}

	public String ChangeName(int id){

		Session session=sf.openSession();
		Query query = session.createQuery("select u.username from User u where id="+id);
		List list = query.list();
		Iterator it=list.iterator();

		try {
			session.close();
			sf.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return (String) it.next();
	}
	
	public AllUser queryByMul_id(int id){

		Session session=sf.openSession();
		Query query = session.createQuery("from Mul u where id_zhujian="+id);
		List<Mul> list = query.list();
		Iterator<Mul> it=list.iterator();
		AllUser user = new AllUser();
		
		while(it.hasNext()){
			Mul mul = it.next();
			user.setUsername(this.ChangeName(mul.getId()));
			user.setAddress(mul.getAddress());
			user.setFName(mul.getFName());
		}
		
		try {
			session.close();
			sf.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return user;
	}
	
	

}
