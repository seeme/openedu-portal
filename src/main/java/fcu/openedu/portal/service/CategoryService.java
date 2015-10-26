package fcu.openedu.portal.service;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.GenericEntity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.apache.commons.collections.CollectionUtils;

import fcu.openedu.domain.Category;
import fcu.openedu.portal.domain.CategoryDto;
import fcu.openedu.portal.persist.EntityDAO;
import jersey.repackaged.com.google.common.collect.Lists;

@Path("/categories")
public class CategoryService {

	private static final String sEcho = "This is category service";

	private EntityDAO<Category> mCategory = new EntityDAO<Category>();

	@GET
	@Produces(MediaType.TEXT_PLAIN)
	public String echo() {
		return sEcho;
	}

	@Path("/list")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response getCategories() {

		List<Category> lsMCats = mCategory.findAll(Category.class);
		List<CategoryDto> lsCats = getCategoryDtos(lsMCats);

		Response rs = Response.ok().entity(new GenericEntity<List<CategoryDto>>(lsCats) {
		}).build();
		return rs;
	}

	private List<CategoryDto> getCategoryDtos(List<Category> lsMCats) {
		List<CategoryDto> lsCats = Lists.newArrayList();

		if (CollectionUtils.isNotEmpty(lsMCats))
			for (Category mCat : lsMCats)
				lsCats.add(tramsformModelToDto(mCat));
		return lsCats;
	}

	private CategoryDto tramsformModelToDto(Category mCat) {
		CategoryDto dCat = new CategoryDto();
		dCat.setId(mCat.getId());
		dCat.setName(mCat.getName());
		return dCat;
	}

}
