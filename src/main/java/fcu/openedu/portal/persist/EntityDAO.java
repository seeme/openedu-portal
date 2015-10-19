package fcu.openedu.portal.persist;

import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.google.common.collect.Lists;

public class EntityDAO<T> {

	private SessionFactory mSFactory = HibernateUtil.getSessionFactory();

	public void create(T object) {
		Session session = mSFactory.openSession();
		session.save(object);
		session.close();
	}

	public T findById(Class<T> clazz, Integer id) {
		Session session = mSFactory.openSession();
		T object = session.get(clazz, id);
		session.close();
		return object;
	}

	public void update(T object) {
		Session session = mSFactory.openSession();
		session.update(object);
		session.close();
	}

	public void delete(T object) {
		Session session = mSFactory.openSession();
		session.delete(object);
		session.close();
	}

	public List<T> findAll(Class<T> clazz) {
		List<T> lsEntities = Lists.newArrayList();
		Session session = mSFactory.openSession();
		Criteria criteria = session.createCriteria(clazz);
		@SuppressWarnings("unchecked")
		List<T> ls = criteria.list();
		if (CollectionUtils.isNotEmpty(ls))
			lsEntities = ls;
		session.close();
		return lsEntities;
	}

}
