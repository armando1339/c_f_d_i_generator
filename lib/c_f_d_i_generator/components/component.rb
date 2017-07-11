require 'active_model'
require 'c_f_d_i_generator/components/catalogs'
require 'c_f_d_i_generator/components/schemes'

module CFDIGenerator
	module Components 
		class Component
			# DESCRIPCIÓN: Incluyecdo la gema de rails ActiveModel y su modulo Validations 
			# para validar varios aspectos importantes y necesario de los datos recibidos por la clase.
			#
			include ActiveModel::Validations


			# DESCRIPCIÓN: Incluyecdo el modulo de catalogos 
			# donde estan una serie de datos para validar.
			#
			include CFDIGenerator::Components::Catalogs


			# DESCRIPCIÓN: Incluyecdo el modulo de catalogos 
			# donde estan una serie de datos para validar.
			#
			include CFDIGenerator::Components::Schemes


			# DESCRIPCIÓN: Valores para los mensajes de error.
			# 
			@@presence_message = 'no puede ser nulo o estar vacio.'
			@@numericality_message = 'no es un numero.'
			@@inclusion_message = "no esta incluido en catalogo."


			# DESCRIPCIÓN: Inicializa el objeto con las variables de instancia necesarios.
			#
			# FUNCIONAMIENTO: recibe un hash con cualquier cantidad de valores,
			# transforma todos los valores a variables de instancia.
			#
			def initialize( attributes = {} )
				attributes.each_pair { |k,v| instance_variable_set( '@' + k.to_s, v ) }
			end


			# DESCRIPCIÓN: Regresa un hash, ya sea con un componente validos
			# o con los datos faltantes (necesarion) y su erro para su corrección.
			#
			def component_errors
				self.valid? ? false : self.errors.messages
			end


			def build_component
				if self.valid? 
					scheme = {}
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