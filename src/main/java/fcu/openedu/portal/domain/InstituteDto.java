package fcu.openedu.portal.domain;

import java.io.Serializable;
import java.text.Collator;
import java.util.Locale;

@SuppressWarnings("serial")
public class InstituteDto implements Serializable, Comparable<InstituteDto> {
  

  private final static Collator collator =  Collator.getInstance(Locale.TRADITIONAL_CHINESE); 

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

  
  @Override
  public int compareTo(InstituteDto o) {
    return collator.compare(this.getName(), o.getName());
  }

}
