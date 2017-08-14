require 'active_model'
require 'c_f_d_i_generator/components/catalogs'
require 'c_f_d_i_generator/components/schemes'

module CFDIGenerator
	module Components 
		class Component

			# Incluyendo la gema de rails ActiveModel y su modulo Validations.
			#
			include ActiveModel::Validations


			# Incluyendo el modulo de catalogos 
			#
			include CFDIGenerator::Components::Catalogs


			# Incluyendo el modulo de schemes 
			#
			include CFDIGenerator::Components::Schemes


			# DESCRIPCIÓN: Valores para los mensajes de error.
			# 
			@@presence_message = 'no puede ser nulo o estar vacio.'
			@@numericality_message = 'no es un numero.'
			@@inclusion_message = "no esta incluido en catalogo."


			def initialize( attributes = {} )
				attributes.each_pair { |k,v| instance_variable_set( '@' + k.to_s, v ) }
			end


			# Regresa mensajes de error si hay alguno
			# en la validacion de los datos
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