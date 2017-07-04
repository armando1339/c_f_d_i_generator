module CFDIGenerator
	module Components 
		class Comprobante < Component
			# DESCRIPCIÓN: Permite acceso a los atributos, tanto de escritura como lectura.
			#
			attr_accessor :folio, :fecha, :sello, :forma_pago, 
					:no_certificado, :certificado, :condiciones_de_pago, :subtotal, 
					:descuento, :moneda, :tipo_cambio, :total, 
					:tipo_de_comprobante, :metodo_pago, :lugar_expedicion, :confirmacion
			

			# DESCRIPCIÓN: Inicializa el objeto con las variables de instancia necesarios.
			#
			# INVOCA: Component "c_f_d_i_emitter/_m_l_components/components" constructor
			#
			def initialize( attributes = {} )
					super
			end

			
			# DESCRIPCIÓN: Helper de la gema (libreria) ActiveModel::Validations que valida 
			# la presencia de los datos pasados al metodo.
			#
			#validates :folio, :fecha, :sello, :forma_pago, 
			#		:no_certificado, :certificado, :condiciones_de_pago, :subtotal, 
			#		:descuento, :moneda, :tipo_cambio, :total, 
			#		:tipo_de_comprobante, :metodo_pago, :lugar_expedicion, :confirmacion, 
			#		presence: { message: @@presence_message }
			
			
			# DESCRIPCIÓN: Helper de la gema (libreria) ActiveModel::Validations que valida 
			# si es un numero.
			#
			#validates :folio, :subtotal, :descuento, :tipo_cambio, 
			#		:total, :metodo_pago, :lugar_expedicion,
			#		numericality: { message: @@numericality_message }

			#validates :forma_pago,
			#		inclusion: { in: WAY_TO_PAY, message: @@inclusion_message } 

			#validates :moneda,
			#		inclusion: { in: TYPE_OF_COIN, message: @@inclusion_message } 

			#validates :tipo_de_comprobante,
			#		inclusion: { in: TYPE_OF_RECEIPT, message: @@inclusion_message }

			#validates :metodo_pago,
			#		inclusion: { in: PAYMENT_METHOD, message: @@inclusion_message }

			# validates :lugar_expedicion,
			# 		inclusion: { in: PLACE_EXPEDITION  } <- validacion no aplicada verifica 'c_f_d_i_emitter/x_m_l_c_f_d_i_generetor/x_m_l_components/catalogs/constants'.


			# DESCRIPCIÓN: Construye un hash con la informacion nesesaria para construir 
			# el XML request para FEL.
			#
			def build_component
				return {
					'xmlns:cfdi' 					=> 		'http://www.sat.gob.mx/cfd/3',
					'xmlns:xsi' 					=> 		'http://www.w3.org/2001/XMLSchema-instance',
					'xsi:schemaLocation' 	=> 		'http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd',
					'Version'							=>		'3.3', # string, requerido
					'Serie'								=>		'WUNDEMITVER33', # string, opcional
					'Folio'								=>		self.folio, # string, opcional
					'Fecha'								=>		self.fecha, # tdCFDI:t_FechaH, requerido	
					'Sello'								=>		self.sello, # string, requerido
					'FormaPago'						=>		self.forma_pago, # catCFDI:c_FormaPago, opcional
					'NoCertificado'				=>		self.no_certificado, # string, requerido
					'Certificado'					=>		self.certificado, # string, requerido
					'CondicionesDePago'		=>		self.condiciones_de_pago, # string, opcional
					'SubTotal'						=>		self.subtotal, #	tdCFDI:t_Importe, requerido
					'Descuento'						=>		self.descuento, # tdCFDI:t_Importe, opcional
					'Moneda'							=>		self.moneda, # catCFDI:c_Moneda, requerido
					'TipoCambio'					=>		self.tipo_cambio, # xs:decimal, opcional
					'Total'								=>		self.total, # tdCFDI:t_Importe, requerido	
					'TipoDeComprobante'		=>		self.tipo_de_comprobante, # catCFDI:c_TipoDeComprobante, requerido
					'MetodoPago'					=>		self.metodo_pago, # catCFDI:c_MetodoPago, opcional
					'LugarExpedicion'			=>		self.lugar_expedicion, # catCFDI:c_CodigoPostal, requerido
					'Confirmacion'				=>		self.confirmacion, # string, opcional 
				}
			end
		end
	end 
end