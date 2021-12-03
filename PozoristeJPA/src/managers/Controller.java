package managers;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import model.Predstava;
import model.Uloga;
import model.Zanr;

public class Controller {
	private static EntityManager em=null;
	private static EntityTransaction et=null;
	
	static {
		em=JPAUtil.getEntityManager();
	}
	public static List<Zanr> getZanrovi(){
		return em.createQuery("select z from Zanr z").getResultList();
	}
	public static List<Predstava> getPredstaveZaZanr(int idZ){
		String upit="select p from Predstava p where p.zanr.idZanr like :idZanr";
		return em.createQuery(upit, Predstava.class)
				.setParameter("idZanr", idZ)
				.getResultList();
	}
	public static List<Uloga> getUloge(Integer idPredstave){
		String upit="select u from Uloga u where u.predstava.idPredstava like :idP";
		return em.createQuery(upit, Uloga.class)
				.setParameter("idP",idPredstave)
				.getResultList();
	}
}
