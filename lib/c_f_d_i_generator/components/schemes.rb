module CFDIGenerator
	module Components 
		# DESCRIPCIÓN: Modulo que contiene las constantes con el contenido de los catalogos,
		# necesarios, que el SAT publico como complemento para sus CFDI.
		#
		module Schemes

			SCHEMES = {
				# => comprobante
				'cfdi_generator_components_comprobante' => {
					'Serie'								=>		:serie, # string, opcional
					'Folio'								=>		:folio, # string, opcional
					'Fecha'								=>		:fecha, # tdCFDI:t_FechaH, requerido	
					'Sello'								=>		:sello, # string, requerido
					'FormaPago'						=>		:forma_pago, # catCFDI:c_FormaPago, opcional
					'NoCertificado'				=>		:no_certificado, # string, requerido
					'Certificado'					=>		:certificado, # string, requerido
					'CondicionesDePago'		=>		:condiciones_de_pago, # string, opcional
					'SubTotal'						=>		:subtotal, #	tdCFDI:t_Importe, requerido
					'Descuento'						=>		:descuento, # tdCFDI:t_Importe, opcional
					'Moneda'							=>		:moneda, # catCFDI:c_Moneda, requerido
					'TipoCambio'					=>		:tipo_cambio, # xs:decimal, opcional
					'Total'								=>		:total, # tdCFDI:t_Importe, requerido	
					'TipoDeComprobante'		=>		:tipo_de_comprobante, # catCFDI:c_TipoDeComprobante, requerido
					'MetodoPago'					=>		:metodo_pago, # catCFDI:c_MetodoPago, opcional
					'LugarExpedicion'			=>		:lugar_expedicion, # catCFDI:c_CodigoPostal, requerido
					'Confirmacion'				=>		:confirmacion, # string, opcional 
				}
			}

		end
	end
end