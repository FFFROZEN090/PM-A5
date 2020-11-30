package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.AdminsDao;
import com.entity.Admins;
import com.util.SafeUtil;

/**
 * 管理员服务 Administrator service
 */
@Service	// 注解为service层spring管理bean
@Transactional	// 注解此类所有方法加入spring事务, 具体设置默认
public class AdminService {

	@Autowired
	private AdminsDao adminDao;
	
	
	/**
	 * 验证用户密码 Verify user password
	 * @param username
	 * @param password
	 * @return
	 */
	public boolean checkUser(String username, String password){
		return adminDao.getByUsernameAndPassword(username, SafeUtil.encode(password)) != null;
	}
	
	/**
	 * 用户名是否存在 whether the username exists
	 * @param username
	 * @return
	 */
	public boolean isExist(String username) {
		return adminDao.getByUsername(username) != null;
	}

	/**
	 * 通过用户名获取 get by username
	 * @param username
	 * @return
	 */
	public Admins getByUsername(String username) {
		return adminDao.getByUsername(username);
	}
	
	/**
	 * 列表 list
	 * @param page
	 * @param rows
	 * @return
	 */
	public List<Admins> getList(int page, int rows) {
		return adminDao.getList(rows * (page-1), rows);
	}

	/**
	 * 总数 total
	 * @return
	 */
	public long getTotal() {
		return adminDao.getTotal();
	}

	/**
	 * 通过id查询 search by id
	 * @param id
	 * @return
	 */
	public Admins get(int id) {
		return adminDao.selectById(id);
	}
	
	/**
	 * 添加 add
	 * @param admin
	 */
	public Integer add(Admins admin) {
		admin.setPassword(SafeUtil.encode(admin.getPassword()));
		return adminDao.insert(admin);
	}
	
	/**
	 * 更新 update
	 * @param user
	 */
	public boolean update(Admins admin) {
		return adminDao.updateById(admin) > 0;
	}

	/**
	 * 删除 delete
	 * @param user
	 */
	public boolean delete(Admins admin) {
		return adminDao.deleteById(admin.getId()) > 0;
	}

	
}
