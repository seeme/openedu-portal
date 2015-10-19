package fcu.openedu.portal.persist;

import java.util.List;

import fcu.openedu.domain.Course;

public class DBMain {

	public static void main(String[] args) {
		
		EntityDAO<Course> courseDao = new  EntityDAO<Course>();
		List<Course> lsCourses = courseDao.findAll(Course.class);
		for(Course course: lsCourses)
		{
			System.out.println(course);
		}
		
		System.out.println("test");
		
		/*Session session = HibernateUtil.getSessionFactory().openSession();
		
		
		
		Criteria criteria = session.createCriteria(School.class);
		@SuppressWarnings("unchecked")
		List<School> schools = criteria.list();
		for(School s: schools)
		{
			System.out.println(s.getName());
		}
		
		criteria = session.createCriteria(Description.class);
		List<Description> lsDesc = criteria.list();
		
		criteria = session.createCriteria(Instructor.class);
		List<Instructor> lsInstructors = criteria.list();
		
		criteria = session.createCriteria(Level.class);
		List<Level> lsLevels = criteria.list();
		
		criteria = session.createCriteria(Availability.class);
		List<Availability>  lsAvail = criteria.list();
		
		System.out.println(lsAvail.get(0));
		
		criteria = session.createCriteria(Category.class);
		List<Category>  lsCat = criteria.list();
		
		System.out.println(lsCat.get(2));
		
		Course course = new Course();
		course.setAvailability(lsAvail.get(0));
		ArrayList<Category> al = new ArrayList<Category>();
		al.add(lsCat.get(2));
		course.setCategory(al);
		course.setCid("fcux-2015004-201509");
		course.setDescription(lsDesc.get(0));
		course.setInstructor(lsInstructors);
		course.setIsMobile(false);
		course.setName("大學普通物理實驗 – 手作坊");
		course.setOffer(schools);
		course.setLevel(lsLevels.get(0));
		course.setYear(2015);
		
		Transaction t = session.getTransaction();
		t.begin();
		session.save(course);
		t.commit();
		session.close();
		*/
		/*
		Instructor in = new Instructor();
		in.setName("周天穎");
		in.setPosition("特聘教授");
		in.setSchool(schools);
		
		Transaction t = session.getTransaction();
		t.begin();
		session.save(in);
		t.commit();*/
		
		//session.close();
		
		//Session session = new Configuration().configure().buildSessionFactory().openSession();

		//Transaction t = session.beginTransaction();
		
		/*School s = new School();
		s.setName("逢甲大學");
		session.persist(s);*/
		/*Availability avail = new Availability();	
		avail.setName("Self");
		session.persist(avail);*/
		/*Category cat = new Category();
		cat.setName("自然與應用科學");
		session.persist(cat);*/
		
		/*Description desc = new Description();
		desc.setIntro("深入淺出地闡述空間資訊在各行各業中所扮演的重要角色，例如網路發展、能源監控、環境監測、交通管理、智慧城市等案例分析");
		desc.setObjective("<ul><li>培養學生具備空間思維的能力。</li><li>培養學生解決空間議題的能力。</li><li>建立學生智慧生活的概念。</li></ul>");
		desc.setTarget("<ul><li>修習過高一地理資訊課程之高中生</li><li>對空間資訊有興趣之大專學生</li><li>一般民眾</li></ul>");
		desc.setCharacteristic("運用基本的空間概念作為基礎，結合空間資訊的基礎知識、整合系統與創新應用，分享最新的空間資訊技術，透過環環相扣的單元課程內容，引導學生思考空間資訊在未來的城市規劃與發展，擘劃出智慧生活的美好藍圖。");
		desc.setSchedule("<ul><li>第一週 課程介紹、認識地圖方位</li><li>第二週 地圖投影(坐標、投影系統)</li><li>第三週 向量式資料與網格式資料</li><li>第四週 遙感探測原理</li><li>第五週 全球定位系統</li><li>第六週 無人飛行載具(UAV)</li><li>第七週 空間資訊於防災應用</li><li>第八週 空間資訊於交通應用</li><li>第九週 空間資訊與智慧城市</li><li>第十週 空間資訊與智慧生活</li></ul>");
		session.persist(desc);
		t.commit();
		session.disconnect();
		session.close();*/
		
		//Instructor in = new Instructor();
		//session.
		
		
		/*Transaction t = session.beginTransaction();

		Employee e1 = new Employee();
		e1.setId(1001);
		e1.setFirstName("sonoo");
		e1.setLastName("jaiswal");

		Employee e2 = new Employee();
		e2.setId(1002);
		e2.setFirstName("vimal");
		e2.setLastName("jaiswal");

		session.persist(e1);
		session.persist(e2);

		t.commit();*/
		//session.close();
		//System.out.println("successfully saved");
	}

}
