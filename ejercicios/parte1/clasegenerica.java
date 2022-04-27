package paquete.facadeimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import paquete.dao.DTODAO;
import paquete.facade.DTOFacade;
import paquete.libs.dto.DTO;

@Component
public class DTOFacadeImpl implements DTOFacade{

//Prueba a desplazarte por el fichero con hjkl
	@Autowired
	DTODAO dtoDAO;
	
//Puedes saltar al final de la línea con $, al principio con 0
//Desplazate entre paréntesis y brackets con %
//Puedes usar fx y Fx para saltar a letras específicas en ambas direcciones
	@Override
	public DTO getDTO(String name) throws Exception {
		return dtoDAO.getDTO(name);
	}

//Puedes saltar al final del documento con G, al inicio con gg
	@Override
	public void setDTO(DTO dto) throws Exception {
		dtoDAO.setDTO(dto);
	}
//Si accidentalmente entras en modo insert pulsa Esc. Si accidentalmente te sale otra ventana sal con :q


}

