package jacaranda;

public class AlumnoBean {
//cambio de ejemplo
	private String nombre;
	private String apellido;
	private Integer edad;
	private String curso;
	private String dni;
	
	public AlumnoBean() {}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public Integer getEdad() {
		return edad;
	}

	public void setEdad(Integer edad) {
		this.edad = edad;
	}

	public String getCurso() {
		return curso;
	}

	public void setCurso(String curso) {
		this.curso = curso;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	@Override
	public String toString() {
		return "\n"+"nombre=" + nombre + ", apellido=" + apellido + ", edad=" + edad + ", curso=" + curso
				+ ", dni=" + dni;
	}

	




}
