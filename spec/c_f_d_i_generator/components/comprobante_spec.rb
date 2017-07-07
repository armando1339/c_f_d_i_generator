require "spec_helper"
require "c_f_d_i_generator/components/comprobante"

RSpec.describe CFDIGenerator::Components::Comprobante do

	before do
		@comp = CFDIGenerator::Components::Comprobante.new( 
			serie: "A1",
			folio: "1234",
			fecha: (Time.now),
			sello: "ahshduw18282shjh1u8ebjbe",
			forma_pago: "",
			no_certificado: "",
			certificado: "",
			condiciones_de_pago: "",
			subtotal: "1000.00",
			descuento: "",
			moneda: "",
			tipo_cambio: "",
			total: "1150.00",
			tipo_de_comprobante: "",
			metodo_pago: "",
			lugar_expedicion: "",
			confirmacion: ""
			)
	end

	context "responde to" do
		attr_included = [:serie, :folio, :fecha, :sello, :forma_pago, :no_certificado, 
			:certificado, :condiciones_de_pago, :subtotal, :descuento, :moneda, :tipo_cambio,
			:total, :tipo_de_comprobante, :metodo_pago, :lugar_expedicion, :confirmacion]

		attr_included.each do |val|
			it "attribute '#{val}' included in attr_accessor" do
				expect( @comp.respond_to?(val) ).to be true
			end
		end
	end

	context "doesn't responde to" do
		[:oscar, :armando, :osbaldo, :alberto, :putoooos!].each do |val|
			it "attribute '#{val}' that isn't included in attr_accessor" do
				expect( @comp.respond_to?(val) ).to be false
			end
		end
	end

	describe "@comp" do
		it "is a instancia of #{CFDIGenerator::Components::Comprobante}" do
			expect(@comp).to be_an_instance_of( CFDIGenerator::Components::Comprobante )
		end
	end
end
