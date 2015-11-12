package fcu.openedu.portal.domain;

import java.io.Serializable;
import java.text.Collator;
import java.util.Comparator;

@SuppressWarnings("serial")
public class InstituteDto implements Serializable, Comparable<InstituteDto> {
  
  @SuppressWarnings("rawtypes")
  private final static Comparator TW_COMPARE = Collator.getInstance(java.util.Locale.CHINESE);

  private int id;

  private String name;

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  @SuppressWarnings("unchecked")
  @Override
  public int compareTo(InstituteDto o) {
    return getName().compareTo(o.getName());
  }


}
