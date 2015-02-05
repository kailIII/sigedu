package pe.com.consultisoft.model.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import pe.com.consultisoft.model.Colegio;

@Component
public class ColegioValidator implements Validator{

	@Override
	public boolean supports(Class miClass) {
		// TODO Auto-generated method stub
		return Colegio.class.isAssignableFrom(miClass);
	}

	@Override
	public void validate(Object target, Errors errors) {
		  ValidationUtils.rejectIfEmptyOrWhitespace(errors, "str_colegio",
	                "required.str_colegio", "El campo Nombre del Colegio es obligatorio.");
		  ValidationUtils.rejectIfEmptyOrWhitespace(errors, "str_telefono1",
	                "required.str_telefono1", "El campo tel�fono 1 es obligatorio.");	         
		 // ValidationUtils.rejectIfEmptyOrWhitespace(errors, "str_telefono2",
	     //           "required.str_telefono2", "El campo tel�fono 2 es obligatorio.");
		  //ValidationUtils.rejectIfEmptyOrWhitespace(errors, "str_celular",
	      //          "required.str_celular", "El campo celular es obligatorio.");
		  ValidationUtils.rejectIfEmptyOrWhitespace(errors, "str_direccion",
	                "required.str_direccion", "El campo direcci�n es obligatorio.");
		  //ValidationUtils.rejectIfEmptyOrWhitespace(errors, "int_iddistrito",
	      //          "required.int_iddistrito", "El campo distrito es obligatorio.");
		  ValidationUtils.rejectIfEmptyOrWhitespace(errors, "int_cantidad_salones",
	                "required.int_cantidad_salones", "El campo cantidad de salones es obligatorio.");
		  ValidationUtils.rejectIfEmptyOrWhitespace(errors, "dte_fecha_creacion",
	                "required.dte_fecha_creacion", "El campo fecha de creaci�n es obligatorio.");
		  ValidationUtils.rejectIfEmptyOrWhitespace(errors, "dte_fecha_modificacion",
	                "required.dte_fecha_modificacion", "El campo fecha de modificaci�n es obligatorio.");
	}
}
