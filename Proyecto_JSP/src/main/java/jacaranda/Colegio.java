package jacaranda;
import java.util.ArrayList;

public class Colegio {

	public String nombre;
	public ArrayList<AlumnoBean> listaAlumnos;
	
	public Colegio(){
		this.listaAlumnos=new ArrayList<AlumnoBean>();
		}
	
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public ArrayList<AlumnoBean> getListaAlumnos() {
		return listaAlumnos;
	}
	public void setListaAlumnos(ArrayList<AlumnoBean> listaAlumnos) {
		this.listaAlumnos = listaAlumnos;
	}
	public int numeroAlumnos() {
		return listaAlumnos.size();
	}
	public void anadirAlumno(AlumnoBean al) {
		listaAlumnos.add(al);
	}
}
