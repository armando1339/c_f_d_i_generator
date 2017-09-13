require 'c_f_d_i_generator/components/component'

module CFDIGenerator
  module Components
    # Class that generate Comprobante component
    #
    class Comprobante < Component
      CONSTANTS_IN_THE_SCHEME = {
        'xmlns:cfdi' => 'http://www.sat.gob.mx/cfd/3', # constant, required
        'xmlns:xsi' => 'http://www.w3.org/2001/XMLSchema-instance', # constant, required
        'xsi:schemaLocation' => 'http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet# constant, required/cfd/3/cfdv33.xsd', # constant, required
        'Version' => '3.3' # string, requerido
      }.freeze

      attr_accessor :serie,
                    :folio,
                    :fecha,
                    :sello,
                    :forma_pago,
                    :no_certificado,
                    :certificado,
                    :condiciones_de_pago,
                    :subtotal,
                    :descuento,
                    :moneda,
                    :tipo_cambio,
                    :total,
                    :tipo_de_comprobante,
                    :metodo_pago,
                    :lugar_expedicion,
                    :confirmacion

      # => Validations
      #
      validates :fecha,
                :sello,
                :no_certificado,
                :certificado,
                :subtotal,
                :moneda,
                :total,
                :tipo_de_comprobante,
                :lugar_expedicion,
                presence: { message: @@presence_message }

      validates :folio,
                :forma_pago,
                :subtotal,
                :descuento,
                :tipo_cambio,
                :total,
                :lugar_expedicion,
                numericality: {
                  message: @@numericality_message
                }

      validates :forma_pago,
                inclusion: {
                  in: WAY_TO_PAY,
                  message: @@inclusion_message
                }

      validates :moneda,
                inclusion: {
                  in: TYPE_OF_COIN,
                  message: @@inclusion_message
                }

      validates :tipo_de_comprobante,
                inclusion: {
                  in: TYPE_OF_RECEIPT,
                  message: @@inclusion_message
                }

      validates :metodo_pago,
                inclusion: {
                  in: PAYMENT_METHOD,
                  message: @@inclusion_message
                }

      # validates :lugar_expedicion,
      #  		       inclusion: {
      #               in: PLACE_EXPEDITION
      #            } # <- validacion no aplicada verifica, catalogo muy grande

      def component_to_hash
        if component_is_valid?
          build_hash_component.merge!(CONSTANTS_IN_THE_SCHEME)
        else
          false
        end
      end
    end
  end
end
