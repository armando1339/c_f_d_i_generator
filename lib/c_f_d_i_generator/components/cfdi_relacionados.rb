require 'c_f_d_i_generator/components/component'

module CFDIGenerator
	module Components 
		# DESCRIPCIÓN: Clase que valida y genera hash "CfdiRelacionados" componente para el XML request 
		# que sera envisdo al pac para su timbrado.
		#
		class CfdiRelacionados < Component
			# DESCRIPCIÓN: Permite acceso a los atributos, tanto de escritura como lectura.
			#
			attr_accessor :tipo_relacion


			# DESCRIPCIÓN: Inicializa el objeto con las variables de instancia necesarios.
			#
			# INVOCA: Component "c_f_d_i_emitter/_m_l_components/components" constructor
			#
			def initilize( attributes = {} )
				super
			end


			# DESCRIPCIÓN: Helper de la gema (libreria) ActiveModel::Validations que valida 
			# la presencia de los datos pasados al metodo y si es un numero.
			#
			validates :tipo_relacion, 
					presence: { message: @@presence_message } 
			#		numericality: { message: @@numericality_message },
			#		inclusion: { in: RELATIONSHIP_TYPE, message: @@inclusion_message }
		end 
	end
end