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


			attr_accessor :serie, :folio, :fecha, :sello, :forma_pago, :no_certificado, 
					:certificado, :condiciones_de_pago, :subtotal, :descuento, :moneda, 
					:tipo_cambio, :total, :tipo_de_comprobante, :metodo_pago, :lugar_expedicion, :confirmacion


			# Validadores para los datos recibidos por la clase
			#
			validates :fecha, :sello, :no_certificado, :certificado, :subtotal, 
					:moneda, :total, :tipo_de_comprobante, :lugar_expedicion,  
					presence: { message: @@presence_message }

			
			validates :folio, :forma_pago, :subtotal, :descuento, :tipo_cambio, 
					:total, :lugar_expedicion,
					numericality: { message: @@numericality_message, :allow_blank => true }


			validates :forma_pago,
					inclusion: { in: WAY_TO_PAY, message: @@inclusion_message, :allow_blank => true } 


			validates :moneda,
					inclusion: { in: TYPE_OF_COIN, message: @@inclusion_message, :allow_blank => true } 


			validates :tipo_de_comprobante,
					inclusion: { in: TYPE_OF_RECEIPT, message: @@inclusion_message, :allow_blank => true }


			validates :metodo_pago,
					inclusion: { in: PAYMENT_METHOD, message: @@inclusion_message, :allow_blank => true }


		 	# validates :lugar_expedicion,
			#  		inclusion: { in: PLACE_EXPEDITION  } # <- validacion no aplicada verifica, catalogo muy grande.


			def initialize( attributes = {} )
				super
			end


			def build_component
				if self.valid? 
					scheme = {}
					scheme.merge! CONSTANTS_IN_THE_SCHEME
					SCHEMES[ self.model_name.singular ].each do |key,value|
						scheme[key] = self.instance_variable_get("@#{value}") if self.respond_to?(value) and !self.instance_variable_get("@#{value}").blank?
					end
					return scheme
				else
					return false
				end
			end
		end
	end 
end