require 'c_f_d_i_generator/components/component'

module CFDIGenerator
	module Components 
		class CfdiRelacionado < Component
			# DESCRIPCIÓN: Inicializa el objeto con las variables de instancia necesarios.
			#
			# INVOCA: Component "c_f_d_i_emitter/_m_l_components/components" constructor
			#
			def initilize( attributes = {} )
				super
			end

			# DESCRIPCIÓN: Permite acceso a los atributos, tanto de escritura como lectura.
			#
			attr_accessor :uuid 

			# DESCRIPCIÓN: Helper de la gema (libreria) ActiveModel::Validations que valida 
			# la presencia de los datos pasados al metodo.
			#
			validates :uuid, presence: { message: @@presence_message }
		end
	end
end