require 'c_f_d_i_generator/components/component'

module CFDIGenerator
	module Components 
		class Receptor < Component

			def initialize( attributes = {})
				super
			end

			attr_accessor :rfc, :nombre, :residencia_fiscal, :num_reg_id_trib, :uso_c_f_d_i

			validates :rfc, :nombre, :residencia_fiscal, :num_reg_id_trib, :uso_c_f_d_i,
					presence: { message: @@presence_message }

			validates :num_reg_id_trib,
					numericality: { message: @@numericality_message }

			validates :residencia_fiscal,
					inclusion: { in: COUNTRY_ABBREVIATIONS, message: @@inclusion_message }

			validates :uso_c_f_d_i,
					inclusion: { in: USE_OF_CFDI, message: @@inclusion_message }


			def build_component
				return {
					'Rfc' => self.rfc,
					'Nombre' => self.nombre,
					'ResidenciaFiscal' => self.residencia_fiscal,
					'NumRegIdTrib' => self.num_reg_id_trib,
					'UsoCFDI' => self.uso_c_f_d_i
				}
			end
		end
	end
end