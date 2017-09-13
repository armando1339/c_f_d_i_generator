module CFDIGenerator
  module Components
    module Schemes
      SCHEMES = {
        # => comprobante
        'cfdi_generator_components_comprobante' => {
          'Serie' => :serie, # string, opcional
          'Folio'	=> :folio, # string, opcional
          'Fecha' => :fecha, # tdCFDI:t_FechaH, requerido
          'Sello'	=> :sello, # string, requerido
          'FormaPago' => :forma_pago, # catCFDI:c_FormaPago, opcional
          'NoCertificado' => :no_certificado, # string, requerido
          'Certificado' => :certificado, # string, requerido
          'CondicionesDePago' => :condiciones_de_pago, # string, opcional
          'SubTotal' => :subtotal, #	tdCFDI:t_Importe, requerido
          'Descuento' => :descuento, # tdCFDI:t_Importe, opcional
          'Moneda' => :moneda, # catCFDI:c_Moneda, requerido
          'TipoCambio' =>	:tipo_cambio, # xs:decimal, opcional
          'Total' => :total, # tdCFDI:t_Importe, requerido
          'TipoDeComprobante' => :tipo_de_comprobante, # catCFDI:c_TipoDeComprobante, requerido
          'MetodoPago' => :metodo_pago, # catCFDI:c_MetodoPago, opcional
          'LugarExpedicion' => :lugar_expedicion, # catCFDI:c_CodigoPostal, requerido
          'Confirmacion' => :confirmacion # string, opcional
        },

        # => cfdi relacionados
        'cfdi_generator_components_cfdi_relacionados' => {
          'TipoRelacion' => :tipo_relacion # catCFDI:c_TipoRelacion, requerido
        },

        'cfdi_generator_components_cfdi_relacionado' => {
          'UUID' => :uuid # catCFDI:c_TipoRelacion, requerido
        },

        # => emisor
        'cfdi_generator_components_emisor' => {
          'Rfc' => :rfc, # tdCFDI:t_RFC, requerido
          'Nombre' => :nombre, # xs:string, opcional
          'RegimenFiscal' => :regimen_fiscal # catCFDI:c_RegimenFiscal, requerido
        },

        # => receptor
        'cfdi_generator_components_receptor' => {
          'Rfc' => :rfc,
          'Nombre' => :nombre,
          'ResidenciaFiscal' => :residencia_fiscal,
          'NumRegIdTrib' => :num_reg_id_trib,
          'UsoCFDI' => :uso_c_f_d_i
        }
      }.freeze
    end
  end
end
