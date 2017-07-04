require "c_f_d_i_generator/version"
require "c_f_d_i_generator/components/comprobante"

module CFDIGenerator
  class Voucher
  	def initialize( arg = {} )
  		# Comprobante
			@comprobante = attributes[:comprobante] ? attributes[:comprobante] : {}

			# CFDI Relacionados
			@cfdi_relacionados = attributes.dig(:comprobante, :cfdi_relacionados) ? attributes[:comprobante][:cfdi_relacionados] : {}

			# Emisor
			@emisor = attributes.dig(:comprobante, :emisor) ? attributes[:comprobante][:emisor] : {}

			# Receptor
			@receptor = attributes.dig(:comprobante, :receptor) ? attributes[:comprobante][:receptor] : {}

			# Conceptos
			@conceptos = attributes.dig(:comprobante, :conceptos) ? attributes[:comprobante][:conceptos] : []

			# impuestos
			@impuestos = attributes.dig(:comprobante, :impuestos) ? attributes[:comprobante][:impuestos] : {}
  	end
  end
end
