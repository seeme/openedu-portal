package fcu.openedu.portal.persist;

import java.util.List;

import fcu.openedu.domain.Course;

public class DBMain {

  public static void main(String[] args) {

    EntityDAO<Course> courseDao = new EntityDAO<Course>();
    @SuppressWarnings("unchecked")
	List<Course> ls = (List<Course>) courseDao.query(
        "from Course as course inner join fetch course.category cat where cat.name = '蝷暹��飛'");

    for (Course course : ls) {
      System.out.println(course);
    }

    System.out.println("test");

    /*
     * Session session = HibernateUtil.getSessionFactory().openSession();
     * 
     * 
     * 
     * Criteria criteria = session.createCriteria(School.class);
     * 
     * @SuppressWarnings("unchecked") List<School> schools = criteria.list(); for(School s: schools)
     * { System.out.println(s.getName()); }
     * 
     * criteria = session.createCriteria(Description.class); List<Description> lsDesc =
     * criteria.list();
     * 
     * criteria = session.createCriteria(Instructor.class); List<Instructor> lsInstructors =
     * criteria.list();
     * 
     * criteria = session.createCriteria(Level.class); List<Level> lsLevels = criteria.list();
     * 
     * criteria = session.createCriteria(Availability.class); List<Availability> lsAvail =
     * criteria.list();
     * 
     * System.out.println(lsAvail.get(0));
     * 
     * criteria = session.createCriteria(Category.class); List<Category> lsCat = criteria.list();
     * 
     * System.out.println(lsCat.get(2));
     * 
     * Course course = new Course(); course.setAvailability(lsAvail.get(0)); ArrayList<Category> al
     * = new ArrayList<Category>(); al.add(lsCat.get(2)); course.setCategory(al);
     * course.setCid("fcux-2015004-201509"); course.setDescription(lsDesc.get(0));
     * course.setInstructor(lsInstructors); course.setIsMobile(false); course.setName(
     * "憭批飛����祕撽� �� �����"); course.setOffer(schools); course.setLevel(lsLevels.get(0));
     * course.setYear(2015);
     * 
     * Transaction t = session.getTransaction(); t.begin(); session.save(course); t.commit();
     * session.close();
     */
    /*
     * Instructor in = new Instructor(); in.setName("�憭拍��"); in.setPosition("������");
     * in.setSchool(schools);
     * 
     * Transaction t = session.getTransaction(); t.begin(); session.save(in); t.commit();
     */

    // session.close();

    // Session session = new Configuration().configure().buildSessionFactory().openSession();

    // Transaction t = session.beginTransaction();

    /*
     * School s = new School(); s.setName("�Ｙ憭批飛"); session.persist(s);
     */
    /*
     * Availability avail = new Availability(); avail.setName("Self"); session.persist(avail);
     */
    /*
     * Category cat = new Category(); cat.setName("�����蝘飛"); session.persist(cat);
     */

    /*
     * Description desc = new Description();
     * desc.setIntro("瘛勗瘛箏��餈啁征��������平銝剜��瞍����嚗��雯頝舐撅�皞��憓皜研�漱�恣�������������");
     * desc.setObjective(
     * "<ul><li>�擗飛����征���雁������</li><li>�擗飛��圾瘙箇征��降憿�����</li><li>撱箇�飛�����暑���艙��</li></ul>");
     * desc.setTarget("<ul><li>靽桃���������玨蝔��葉���</li><li>撠征������閎銋之撠飛���</li><li>銝��瘞</li></ul>");
     * desc.setCharacteristic(
     * "������征���艙雿�蝷���征�����蝷霅���頂蝯梯����嚗�澈�����征�����銵����������玨蝔摰對���飛����征�����靘������撅�������暑���末�����"
     * ); desc.setSchedule(
     * "<ul><li>蝚砌��� 隤脩��晶�����雿�</li><li>蝚砌��� ����蔣(�����蔣蝟餌絞)</li><li>蝚砌��� �������雯�撘���</li><li>蝚砍��� ���皜砍���</li><li>蝚砌��� �����頂蝯�</li><li>蝚砍�� �鈭粹���(UAV)</li><li>蝚砌��� 蝛粹�������</li><li>蝚砍�� 蝛粹���鈭日��</li><li>蝚砌��� 蝛粹���������</li><li>蝚砍��� 蝛粹�������暑</li></ul>"
     * ); session.persist(desc); t.commit(); session.disconnect(); session.close();
     */

    // Instructor in = new Instructor();
    // session.


    /*
     * Transaction t = session.beginTransaction();
     * 
     * Employee e1 = new Employee(); e1.setId(1001); e1.setFirstName("sonoo");
     * e1.setLastName("jaiswal");
     * 
     * Employee e2 = new Employee(); e2.setId(1002); e2.setFirstName("vimal");
     * e2.setLastName("jaiswal");
     * 
     * session.persist(e1); session.persist(e2);
     * 
     * t.commit();
     */
    // session.close();
    // System.out.println("successfully saved");
  }

}
