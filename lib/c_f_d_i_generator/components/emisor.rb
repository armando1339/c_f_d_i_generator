require 'c_f_d_i_generator/components/component'

module CFDIGenerator
	module Components 
		class Emisor < Component

			def initialize( attributes = {} )
				super
			end

			attr_accessor :rfc, :nombre, :regimen_fiscal

			validates :rfc, :nombre, :regimen_fiscal,
					presence: { message: @@presence_message }

			validates :regimen_fiscal,
					inclusion: { in: FISCAL_REGIMEN, message: @@inclusion_message }
		end
	end
end