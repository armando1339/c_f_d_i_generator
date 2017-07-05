module CFDIGenerator
	module Components 
		# DESCRIPCIÓN: Modulo que contiene las constantes con el contenido de los catalogos,
		# necesarios, que el SAT publico como complemento para sus CFDI.
		#
		module Catalogs
			# SECCIÓN: Catalogos para el componente 'comprobante'.
			#
			#
			# CATALOGO: Forma de pago
			# SAT NOMENCLATURA: catCFDI:c_FormaPago
			#
			WAY_TO_PAY = ["01", "02", "03", "04", "05", "06", "08", "12", "13", "14", "15", "17", "23", "24", "25", "26", "27", "28", "29", "99"]


			# CATALOGO: Moneda
			# SAT NOMENCLATURA: catCFDI:c_Moneda
			#
			TYPE_OF_COIN = [
				"AED", "AFN", "ALL", "AMD", "ANG", "AOA", "ARS", "AUD", "AWG", "AZN", "BAM", "BBD", "BDT", "BGN", "BHD", "BIF", "BMD", 
				"BND", "BOB", "BOV", "BRL", "BSD", "BTN", "BWP", "BYR", "BZD", "CAD", "CDF", "CHE", "CHF", "CHW", "CLF", "CLP", "CNY", 
				"COP", "COU", "CRC", "CUC", "CUP", "CVE", "CZK", "DJF", "DKK", "DOP", "DZD", "EGP", "ERN", "ETB", "EUR", "FJD", "FKP", 
				"GBP", "GEL", "GHS", "GIP", "GMD", "GNF", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "INR", "IQD", 
				"IRR", "ISK", "JMD", "JOD", "JPY", "KES", "KGS", "KHR", "KMF", "KPW", "KRW", "KWD", "KYD", "KZT", "LAK", "LBP", "LKR", 
				"LRD", "LSL", "LYD", "MAD", "MDL", "MGA", "MKD", "MMK", "MNT", "MOP", "MRO", "MUR", "MVR", "MWK", "MXN", "MXV", "MYR", 
				"MZN", "NAD", "NGN", "NIO", "NOK", "NPR", "NZD", "OMR", "PAB", "PEN", "PGK", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", 
				"RSD", "RUB", "RWF", "SAR", "SBD", "SCR", "SDG", "SEK", "SGD", "SHP", "SLL", "SOS", "SRD", "SSP", "STD", "SVC", "SYP", 
				"SZL", "THB", "TJS", "TMT", "TND", "TOP", "TRY", "TTD", "TWD", "TZS", "UAH", "UGX", "USD", "USN", "UYI", "UYU", "UZS", 
				"VEF", "VND", "VUV", "WST", "XAF", "XAG", "XAU", "XBA", "XBB", "XBC", "XBD", "XCD", "XDR", "XOF", "XPD", "XPF", "XPT", 
				"XSU", "XTS", "XUA", "XXX", "YER", "ZAR", "ZMW", "ZWL"
			]


			# CATALOGO: Tipo de comprobante
			# SAT NOMENCLATURA: catCFDI:c_TipoDeComprobante
			#
			TYPE_OF_RECEIPT = ["I", "E", "T", "N", "P"]


			# CATALOGO: Metodo de pago
			# SAT NOMENCLATURA: catCFDI:c_MetodoPago
			#
			PAYMENT_METHOD = ["PUE", "PIP", "PPD"]


			# CATALOGO: Lugar expedicion
			# SAT NOMENCLATURA: catCFDI:c_CodigoPostal
			# => NOTICIA: El catalogo es demaciado grande para incluirlo
			#
			# PLACE_EXPEDITION = [ valor = 32850 datos ]


			# SECCIÓN: Catalogos para el componente 'tipo realcion'.
			#
			# CATALOGO: Tipo relacion
			# SAT NOMENCLATURA: catCFDI:c_TipoRelacion
			#
			RELATIONSHIP_TYPE = ["01", "02", "03", "04", "05", "06"]


			# SECCIÓN: Catalogos para el componente 'emisor'.
			#
			# CATALOGO: Regimen fiscal
			# SAT NOMENCLATURA: catCFDI:c_RegimenFiscal
			#
			FISCAL_REGIMEN = ["601", "603", "605", "606", "608", "609", "610", "611", "612", "614", "616", "620", "621", "622", "623", "624", "628", "607", "629", "630", "615"]


			# SECCIÓN: Catalogos para el componente 'receptor'.
			#
			# CATALOGO: Pais
			# SAT NOMENCLATURA: catCFDI:c_Pais
			#
			COUNTRY_ABBREVIATIONS = [
				"AFG", "ALA", "ALB", "DEU", "AND", "AGO", "AIA", "ATA", "ATG", "SAU", "DZA", "ARG", "ARM", "ABW", "AUS", "AUT", "AZE", "BHS", "BGD", "BRB", 
				"BHR", "BEL", "BLZ", "BEN", "BMU", "BLR", "MMR", "BOL", "BIH", "BWA", "BRA", "BRN", "BGR", "BFA", "BDI", "BTN", "CPV", "KHM", "CMR", "CAN", 
				"QAT", "BES", "TCD", "CHL", "CHN", "CYP", "COL", "COM", "PRK", "KOR", "CIV", "CRI", "HRV", "CUB", "CUW", "DNK", "DMA", "ECU", "EGY", "SLV", 
				"ARE", "ERI", "SVK", "SVN", "ESP", "USA", "EST", "ETH", "PHL", "FIN", "FJI", "FRA", "GAB", "GMB", "GEO", "GHA", "GIB", "GRD", "GRC", "GRL", 
				"GLP", "GUM", "GTM", "GUF", "GGY", "GIN", "GNB", "GNQ", "GUY", "HTI", "HND", "HKG", "HUN", "IND", "IDN", "IRQ", "IRN", "IRL", "BVT", "IMN", 
			 	"CXR", "NFK", "ISL", "CYM", "CCK", "COK", "FRO", "SGS", "HMD", "FLK", "MNP", "MHL", "PCN", "SLB", "TCA", "UMI", "VGB", "VIR", "ISR", "ITA", 
			 	"JAM", "JPN", "JEY", "JOR", "KAZ", "KEN", "KGZ", "KIR", "KWT", "LAO", "LSO", "LVA", "LBN", "LBR", "LBY", "LIE", "LTU", "LUX", "MAC", "MDG", 
			 	"MYS", "MWI", "MDV", "MLI", "MLT", "MAR", "MTQ", "MUS", "MRT", "MYT", "MEX", "FSM", "MDA", "MCO", "MNG", "MNE", "MSR", "MOZ", "NAM", "NRU", 
			 	"NPL", "NIC", "NER", "NGA", "NIU", "NOR", "NCL", "NZL", "OMN", "NLD", "PAK", "PLW", "PSE", "PAN", "PNG", "PRY", "PER", "PYF", "POL", "PRT", 
			 	"PRI", "GBR", "CAF", "CZE", "MKD", "COG", "COD", "DOM", "REU", "RWA", "ROU", "RUS", "ESH", "WSM", "ASM", "BLM", "KNA", "SMR", "MAF", "SPM", 
			 	"VCT", "SHN", "LCA", "STP", "SEN", "SRB", "SYC", "SLE", "SGP", "SXM", "SYR", "SOM", "LKA", "SWZ", "ZAF", "SDN", "SSD", "SWE", "CHE", "SUR", 
			 	"SJM", "THA", "TWN", "TZA", "TJK", "IOT", "ATF", "TLS", "TGO", "TKL", "TON", "TTO", "TUN", "TKM", "TUR", "TUV", "UKR", "UGA", "URY", "UZB", 
			 	"VUT", "VAT", "VEN", "VNM", "WLF", "YEM", "DJI", "ZMB", "ZWE", "ZZZ"
		 	] 


		 	# CATALOGO: Uso CFDI
			# SAT NOMENCLATURA: catCFDI:c_UsoCFDI
			#
		 	USE_OF_CFDI = [
		 		"G01", "G02", "G03", "I01", "I02", "I03", "I04", "I05", "I06", "I07", "I08", 
		 		"D01", "D02", "D03", "D04", "D05", "D06", "D07", "D08", "D09", "D10", "P01"
		 	]


		 	# SECCIÓN: Catalogos para el componente 'concepto'.
			#
			# CATALOGO: Clave producto servicio
			# SAT NOMENCLATURA: catCFDI:c_ClaveProdServ
			# => NOTICIA: El catalogo es demaciado grande para incluirlo
			#
			# PRODUCT_SERVICE_KEY = [ valor = 32850 datos ]


			# SECCIÓN: Catalogos para el componente 'concepto'.
			#
			# CATALOGO: Impuesto
			# SAT NOMENCLATURA: catCFDI:c_Impuesto
			#
			TAX = ["001", "002", "003"]


			# CATALOGO: Tipo factor
			# SAT NOMENCLATURA: catCFDI:c_TipoFactor
			#
			TYPE_OF_FACTOR = ["Tasa", "Cuota", "Exento"]


			# CATALOGO: Tasa o cuota
			# SAT NOMENCLATURA: catCFDI:c_TasaOCuota
			#
			RATE_OR_QUOTA = ["0.000000", "0.160000", "0.265000", "0.300000", "0.530000", "0.500000", "1.600000", "0.304000", "0.350000", "0.059100", "3.000000", "0.298800"]
		end
	end
end
	