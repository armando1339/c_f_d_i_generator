require "spec_helper"
require "c_f_d_i_generator/components/component"
require "c_f_d_i_generator/components/comprobante"

RSpec.describe CFDIGenerator::Components::Comprobante do

	attr_included = [:serie, :folio, :fecha, :sello, 
			:forma_pago, :no_certificado, :certificado, :condiciones_de_pago, 
			:subtotal, :descuento, :moneda, :tipo_cambio,
			:total, :tipo_de_comprobante, :metodo_pago, :lugar_expedicion, :confirmacion]

	attr_presence_validation = [:fecha, :sello, :no_certificado, :certificado, :subtotal, 
			:moneda, :total, :tipo_de_comprobante, :lugar_expedicion]

	attr_numerically_validation = [:folio, :forma_pago, :subtotal, :descuento, :tipo_cambio, 
			:total, :lugar_expedicion]

	attr_inclusion_validation = [:forma_pago, :moneda, :tipo_de_comprobante, :metodo_pago]

	before do
		@comp = CFDIGenerator::Components::Comprobante.new( 
			serie: "A1",
			folio: "1234",
			fecha: (Time.now),
			sello: "ahshduw18282shjh1u8ebjbe",
			forma_pago: "01",
			no_certificado: "gffsfsfsfffwtwtwtw",
			certificado: "hdhhhdhdhdhdhd",
			# condiciones_de_pago: "",
			subtotal: "1000.00",
			# descuento: "",
			moneda: "MXN",
			# tipo_cambio: "I",
			total: "1150.00",
			tipo_de_comprobante: "I",
			metodo_pago: "PUE",
			lugar_expedicion: "62570",
			# confirmacion: ""
			)
	end

	before do
		@comp_empty = CFDIGenerator::Components::Comprobante.new
	end

	context "responde to" do
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

	describe "when is instanced without data" do 
		context "return false when" do 
			it ".build_component is called" do
				expect( @comp_empty.build_component ).to be false
			end
		end

		context "presence validation" do 
			attr_presence_validation.each do |val|
				it "return error message for #{val}" do
					expect( @comp_empty.component_errors[val].include?('no puede ser nulo o estar vacio.') ).to be true
				end
			end
		end

		context "numerically validation" do 
			attr_numerically_validation.each do |val|
				it "return error message for #{val}" do
					expect( @comp_empty.component_errors[val].include?('no es un numero.') ).to be true
				end
			end
		end

		context "inclusion validation" do 
			attr_inclusion_validation.each do |val|
				it "return error message for #{val}" do
					expect( @comp_empty.component_errors[val].include?('no esta incluido en catalogo.') ).to be true
				end
			end
		end
	end

	describe "when is instanced without necesary data" do
		it "instance.valid? renponce true" do
			expect(@comp.valid?).to be true
		end
	end

	describe "@comp" do
		it "is a instancia of #{CFDIGenerator::Components::Comprobante}" do
			expect(@comp).to be_an_instance_of( CFDIGenerator::Components::Comprobante )
		end
	end
end
