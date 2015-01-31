package pe.com.consultisoft.dao.matricula;

import java.util.List;

import pe.com.consultisoft.model.Alumno;

public interface AlumnoDao {
	public List<Alumno> list();
	public int add(Alumno alumno);
	public int update(Alumno alumno);
	public int delete(int idAlumno);
	public List<Alumno> find(Alumno alumno);
	public Alumno find(int idAlumno);
}
