package pe.com.consultisoft.utilitarios;

public class Constantes {
	
	//Mensajes de confirmaci�n de transacciones
	public static class Mensajes{
		public static final String MSG_REGISTRO_NUEVO_OK = "Se grab� con exito el nuevo registro";
		public static final String MSG_REGISTRO_NUEVO_ERROR = "Ocurri� un error al momento de grabar el nuevo registro";
		public static final String MSG_REGISTRO_ACTUALIZADO_OK = "Se actualizaron con exito los datos del registro";
		public static final String MSG_REGISTRO_ACTUALIZADO_ERROR = "Ocurri� un error al momento de actualizar los datos del registro";
		public static final String MSG_REGISTRO_ELIMINADO_OK = "Se elimin� con exito el registro seleccionado";
		public static final String MSG_REGISTRO_ELIMINADO_ERROR = "Ocurri� un error al eliminar el registro seleccionado";
		
	}

	//Estados de actividad
	public static class Estados{
		public static final String EST_ACTIVO = "A";
		public static final String EST_INACTIVO = "I";
		
		public static final int EST_ACTIVO1 = 1;
		public static final int EST_INACTIVO1 = 2;
				
	}


}

