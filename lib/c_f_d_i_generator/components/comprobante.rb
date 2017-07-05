require 'c_f_d_i_generator/components/component'

module CFDIGenerator
	module Components 
		class Comprobante < Component

			CONSTANTS_IN_THE_SCHEME = {
				'xmlns:cfdi' 					=> 		'http://www.sat.gob.mx/cfd/3',
				'xmlns:xsi' 					=> 		'http://www.w3.org/2001/XMLSchema-instance',
				'xsi:schemaLocation' 	=> 		'http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd',
				'Version'							=>		'3.3' # string, requerido
			}

			# DESCRIPCIÓN: Permite acceso a los atributos, tanto de escritura como lectura.
			#
			attr_accessor :serie, :folio, :fecha, :sello, :forma_pago, :no_certificado, 
					:certificado, :condiciones_de_pago, :subtotal, :descuento, :moneda, 
					:tipo_cambio, :total, :tipo_de_comprobante, :metodo_pago, :lugar_expedicion, :confirmacion


			# DESCRIPCIÓN: Inicializa el objeto con las variables de instancia necesarios.
			#
			# INVOCA: 'super' desde la clase que hereda
			#
			def initialize( attributes = {} )
				super
			end

			
			# DESCRIPCIÓN: Helper de la gema (libreria) ActiveModel::Validations que valida 
			# la presencia de los datos pasados al metodo.
			#
			validates :fecha, :sello, :no_certificado, :certificado, :subtotal, 
					:moneda, :total, :tipo_de_comprobante, :lugar_expedicion,  
					presence: { message: @@presence_message }
			
			
			# DESCRIPCIÓN: Helper de la gema (libreria) ActiveModel::Validations que valida 
			# si es un numero.
			#
			# validates :folio, :subtotal, :descuento, :tipo_cambio, 
			# 		:total, :metodo_pago, :lugar_expedicion,
			# 		numericality: { message: @@numericality_message }

			# validates :forma_pago,
			# 		inclusion: { in: WAY_TO_PAY, message: @@inclusion_message } 

			# validates :moneda,
			# 		inclusion: { in: TYPE_OF_COIN, message: @@inclusion_message } 

			# validates :tipo_de_comprobante,
			# 		inclusion: { in: TYPE_OF_RECEIPT, message: @@inclusion_message }

			# validates :metodo_pago,
			# 		inclusion: { in: PAYMENT_METHOD, message: @@inclusion_message }

		 	# validates :lugar_expedicion,
			#  		inclusion: { in: PLACE_EXPEDITION  } <- validacion no aplicada verifica 'c_f_d_i_emitter/x_m_l_c_f_d_i_generetor/x_m_l_components/catalogs/constants'.


			# DESCRIPCIÓN: Construye un hash con la informacion nesesaria para construir 
			# el XML request para FEL.
			#
			def build_component
				if self.valid? 
					scheme = {}
					scheme.merge! CONSTANTS_IN_THE_SCHEME
					SCHEMES[ self.model_name.singular ].each do |k,v|
						scheme[k] = self.instance_variable_get("@#{v}") if self.respond_to?(v) and !self.instance_variable_get("@#{v}").blank?
					end
					return scheme
				else
					return false
				end
			end
		end
	end 
end