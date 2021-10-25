package jacaranda;
import java.util.ArrayList;

public class Colegio {

	public String nombre;
	public ArrayList<AlumnoBean> listaAlumnos;
	
	public Colegio(){
		this.listaAlumnos=new ArrayList<>();
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
	/**
	 * Este metodo devuelve el numero de alumnos que hay en el colegio
	 * @return numero de alumnos (int)
	 */
	public int numeroAlumnos() {
		return listaAlumnos.size();
	}
	/**
	 * Este metodo recibe un alumno y lo anade a la lista de alumnos del colegio
	 * @param al de tipo AlumnoBean
	 */
	public void anadirAlumno(AlumnoBean al) {
		listaAlumnos.add(al);
	}
}
