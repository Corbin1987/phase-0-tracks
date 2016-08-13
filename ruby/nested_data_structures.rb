vehicle = {
	engine: [
		{engine_type: [
			"inline-four",
			"V6",
			"V8",
			"V10",
			"V12"]
		},
		"engine block",
		"pistons",
		"valves",
		"spark plugs",
		"timing chain/belt",
		"crankshaft",
		"camshaft"
	],
	interior: [
		"seats", 
		"seatbelts", 
		"floor mats", 
		"cargo mats"
		],
	exterior: [
		"mirrors", 
		"headlights", 
		"brake lights", 
		"windshield wipers"
		],
	suspension: [
		{suspension_type: [
			"struts", 
			"shocks", 
			"leaf springs"]
		},
		"stabilizer bar",
		"stablizer links",
		"strut mounts",
		"control arms",
		"tie rods" 
		],
	heating: [
		"heater core",
		"hoses",
		"blower motor"
	],
	cooling: [
		"compressor",
		"condenser",
		"receiver/drier",
		"hoses",
		"blower motor",
		"evaporator"
	],
	brakes: [
		"rotors",
		"drums",
		"brake pads",
		"brake shoes",
		"parking brake cable",
		"calipers",
		"brake hoses"
	],
	transmission: [
		{transmission_type: [
			"automatic",
			"manual",
			"CVT",
			"semi-automatic"]
		},
		"axles",
		"cv joints",
		"differential",
		"clutch"
		],
	exhaust: [
		"oxygen sensors",
		"catalytic converter",
		"muffler"
	],
	fuel_system: [
		"fuel pump",
		"fuel injector",
		"fuel tank"
	]
}

p vehicle[:transmission]
# => [{:transmission_type=>["automatic", "manual", "CVT", "semi-automatic"]}, "axles", "cv joints", "differential", "clutch"]
p vehicle[:transmission][0]
# => {:transmission_type=>["automatic", "manual", "CVT", "semi-automatic"]}
p vehicle[:engine][1]
# => "engine block"
p vehicle[:fuel_system]
# => ["fuel pump", "fuel injector", "fuel tank"]
p vehicle[:exhaust].last
# => "muffler"