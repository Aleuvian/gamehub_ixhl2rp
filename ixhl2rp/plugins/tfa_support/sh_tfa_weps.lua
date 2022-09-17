
--
-- Copyright (C) 2020 Taxin2012
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--



--	Writed by Taxin2012
--	https://steamcommunity.com/id/Taxin2012/



											-- Assault Rifles --

PLUGIN.GunData[ "tfa_inss_fn_fal_new" ] = {
	--Weapon can be Blacklisted and item will be not auto-generated
	BlackList = false,
	
	Slot = "primary",
	Model = "models/weapons/fnfal/w_fal.mdl",
	iconCam = {
		tpos = Vector( 0, 0, 0 ),
		tang = Angle( 0, 0, 0 ),
		tfov = 0
	},
	Width = 5,
	Height = 2,
	Weight = 3,
	Price = 500,
	
	--Weapon Parameters
	--Prim == Primary
	Prim = {
		Ammo = "assault",
		Damage = 20,
		KickUp = 0.4,
		KickDown = 0.4,
		KickHorizontal = 0.35,
		Spread = .021,
		IronAccuracy = .01
	},
	
	--Sec == Secondary
	Sec = {}
}

PLUGIN.GunData[ "tfa_inss_g36k_new" ] = {
	--Weapon can be Blacklisted and item will be not auto-generated
	BlackList = false,
	
	Slot = "primary",
	Model = "models/weapons/w_g36k.mdl",
	iconCam = {
		tpos = Vector( 0, 0, 0 ),
		tang = Angle( 0, 0, 0 ),
		tfov = 0
	},
	Width = 5,
	Height = 2,
	Weight = 3,
	Price = 500,
	
	--Weapon Parameters
	--Prim == Primary
	Prim = {
		Ammo = "assault",
		Damage = 20,
		KickUp = 0.4,
		KickDown = 0.4,
		KickHorizontal = 0.35,
		Spread = .021,
		IronAccuracy = .01
	},
	
	--Sec == Secondary
	Sec = {}
}

PLUGIN.GunData[ "tfa_at_ak_15" ] = {
	--Weapon can be Blacklisted and item will be not auto-generated
	BlackList = false,
	
	Slot = "primary",
	Model = "models/weapons/ak_15/w_akm.mdl",
	iconCam = {
		tpos = Vector( 0, 0, 0 ),
		tang = Angle( 0, 0, 0 ),
		tfov = 0
	},
	Width = 5,
	Height = 2,
	Weight = 3,
	Price = 500,
	
	--Weapon Parameters
	--Prim == Primary
	Prim = {
		Ammo = "assault",
		Damage = 20,
		KickUp = 0.4,
		KickDown = 0.4,
		KickHorizontal = 0.35,
		Spread = .021,
		IronAccuracy = .01
	},
	
	--Sec == Secondary
	Sec = {}
}

PLUGIN.GunData[ "tfa_at_ak_74" ] = {
	--Weapon can be Blacklisted and item will be not auto-generated
	BlackList = false,
	
	Slot = "primary",
	Model = "models/weapons/ak_74_ins/w_ak74.mdl",
	iconCam = {
		tpos = Vector( 0, 0, 0 ),
		tang = Angle( 0, 0, 0 ),
		tfov = 0
	},
	Width = 5,
	Height = 2,
	Weight = 3,
	Price = 500,
	
	--Weapon Parameters
	--Prim == Primary
	Prim = {
		Ammo = "assault",
		Damage = 20,
		KickUp = 0.4,
		KickDown = 0.4,
		KickHorizontal = 0.35,
		Spread = .021,
		IronAccuracy = .01
	},
	
	--Sec == Secondary
	Sec = {}
}

PLUGIN.GunData[ "tfa_at_akm" ] = {
	--Weapon can be Blacklisted and item will be not auto-generated
	BlackList = false,
	
	Slot = "primary",
	Model = "models/weapons/akm_ins/w_akm.mdl",
	iconCam = {
		tpos = Vector( 0, 0, 0 ),
		tang = Angle( 0, 0, 0 ),
		tfov = 0
	},
	Width = 5,
	Height = 2,
	Weight = 3,
	Price = 500,
	
	--Weapon Parameters
	--Prim == Primary
	Prim = {
		Ammo = "assault",
		Damage = 20,
		KickUp = 0.4,
		KickDown = 0.4,
		KickHorizontal = 0.35,
		Spread = .021,
		IronAccuracy = .01
	},
	
	--Sec == Secondary
	Sec = {}
}

PLUGIN.GunData[ "tfa_ins2_cw_ar15" ] = {
	--Weapon can be Blacklisted and item will be not auto-generated
	BlackList = false,
	
	Slot = "primary",
	Model = "models/weapons/tfa_ins2/w_cw_ar15.mdl",
	iconCam = {
		tpos = Vector( 0, 0, 0 ),
		tang = Angle( 0, 0, 0 ),
		tfov = 0
	},
	Width = 5,
	Height = 2,
	Weight = 3,
	Price = 500,
	
	--Weapon Parameters
	--Prim == Primary
	Prim = {
		Ammo = "assault",
		Damage = 20,
		KickUp = 0.4,
		KickDown = 0.4,
		KickHorizontal = 0.35,
		Spread = .021,
		IronAccuracy = .01
	},
	
	--Sec == Secondary
	Sec = {}
}

PLUGIN.GunData[ "tfa_ocipr" ] = {
	--Weapon can be Blacklisted and item will be not auto-generated
	BlackList = false,
	
	Slot = "primary",
	Model = "models/weapons/tfa_ins2/w_cw_ar15.mdl",
	iconCam = {
		tpos = Vector( 0, 0, 0 ),
		tang = Angle( 0, 0, 0 ),
		tfov = 0
	},
	Width = 4,
	Height = 2,
	Weight = 3,
	Price = 1000,
	
	--Weapon Parameters
	--Prim == Primary
	Prim = {
		Ammo = "ar2ammo",
		Damage = 20,
		KickUp = 0.4,
		KickDown = 0.4,
		KickHorizontal = 0.35,
		Spread = .021,
		IronAccuracy = .01
	},
	
	--Sec == Secondary
	Sec = {}
}

PLUGIN.GunData[ "tfa_ordinalrifle" ] = {
	--Weapon can be Blacklisted and item will be not auto-generated
	BlackList = false,
	
	Slot = "primary",
	Model = "models/weapons/w_ordinalrifle.mdl",
	iconCam = {
		tpos = Vector( 0, 0, 0 ),
		tang = Angle( 0, 0, 0 ),
		tfov = 0
	},
	Width = 4,
	Height = 2,
	Weight = 3,
	Price = 1500,
	
	--Weapon Parameters
	--Prim == Primary
	Prim = {
		Ammo = "ar2ammo",
		Damage = 20,
		KickUp = 0.4,
		KickDown = 0.4,
		KickHorizontal = 0.35,
		Spread = .021,
		IronAccuracy = .01
	},
	
	--Sec == Secondary
	Sec = {}
}

											-- Submachine Guns --

PLUGIN.GunData[ "tfa_inss2_hk_mp5a5" ] = {
	--Weapon can be Blacklisted and item will be not auto-generated
	BlackList = false,
												
	Slot = "primary",
	Model = "models/weapons/w_inss2_mp5a5.mdl",
	iconCam = {
		tpos = Vector( 0, 0, 0 ),
			tang = Angle( 0, 0, 0 ),
			tfov = 0
		},
		Width = 3,
		Height = 2,
		Weight = 3,
		Price = 500,
												
		--Weapon Parameters
		--Prim == Primary
		Prim = {
			Ammo = "smg1ammo",
			Damage = 15,
			KickUp = 0.4,
			KickDown = 0.4,
			KickHorizontal = 0.35,
			Spread = .021,
			IronAccuracy = .01
		},
												
		--Sec == Secondary
			Sec = {}
}

PLUGIN.GunData[ "tfa_ins2_sr2m_veresk" ] = {
	--Weapon can be Blacklisted and item will be not auto-generated
	BlackList = false,
												
	Slot = "primary",
	Model = "models/weapons/w_ins2_sr2m_veresk.mdl",
	iconCam = {
		tpos = Vector( 0, 0, 0 ),
			tang = Angle( 0, 0, 0 ),
			tfov = 0
		},
		Width = 3,
		Height = 2,
		Weight = 3,
		Price = 500,
												
		--Weapon Parameters
		--Prim == Primary
		Prim = {
			Ammo = "smg1ammo",
			Damage = 15,
			KickUp = 0.4,
			KickDown = 0.4,
			KickHorizontal = 0.35,
			Spread = .021,
			IronAccuracy = .01
		},
												
		--Sec == Secondary
			Sec = {}
}

PLUGIN.GunData[ "tfa_inss_m3_new" ] = {
	--Weapon can be Blacklisted and item will be not auto-generated
	BlackList = false,
												
	Slot = "primary",
	Model = "models/weapons/w_m3_grease_gun.mdl",
	iconCam = {
		tpos = Vector( 0, 0, 0 ),
			tang = Angle( 0, 0, 0 ),
			tfov = 0
		},
		Width = 3,
		Height = 2,
		Weight = 3,
		Price = 450,
												
		--Weapon Parameters
		--Prim == Primary
		Prim = {
			Ammo = "smg1ammo",
			Damage = 15,
			KickUp = 0.4,
			KickDown = 0.4,
			KickHorizontal = 0.35,
			Spread = .021,
			IronAccuracy = .01
		},
												
		--Sec == Secondary
			Sec = {}
}

PLUGIN.GunData[ "tfa_ins2_sterling" ] = {
	--Weapon can be Blacklisted and item will be not auto-generated
	BlackList = false,
												
	Slot = "primary",
	Model = "models/weapons/tfa_ins2/w_sterling.mdl",
	iconCam = {
		tpos = Vector( 0, 0, 0 ),
			tang = Angle( 0, 0, 0 ),
			tfov = 0
		},
		Width = 3,
		Height = 2,
		Weight = 3,
		Price = 550,
												
		--Weapon Parameters
		--Prim == Primary
		Prim = {
			Ammo = "smg1ammo",
			Damage = 15,
			KickUp = 0.4,
			KickDown = 0.4,
			KickHorizontal = 0.35,
			Spread = .021,
			IronAccuracy = .01
		},
												
		--Sec == Secondary
			Sec = {}
}

PLUGIN.GunData[ "tfa_ins2_ump9" ] = {
	--Weapon can be Blacklisted and item will be not auto-generated
	BlackList = false,
												
	Slot = "primary",
	Model = "models/weapons/tfa_ins2/w_ump9.mdl",
	iconCam = {
		tpos = Vector( 0, 0, 0 ),
			tang = Angle( 0, 0, 0 ),
			tfov = 0
		},
		Width = 3,
		Height = 2,
		Weight = 3,
		Price = 600,
												
		--Weapon Parameters
		--Prim == Primary
		Prim = {
			Ammo = "smg1ammo",
			Damage = 15,
			KickUp = 0.4,
			KickDown = 0.4,
			KickHorizontal = 0.35,
			Spread = .021,
			IronAccuracy = .01
		},
												
		--Sec == Secondary
			Sec = {}
}

PLUGIN.GunData[ "tfa_mmod_smg" ] = {
	--Weapon can be Blacklisted and item will be not auto-generated
	BlackList = false,
												
	Slot = "primary",
	Model = "models/weapons/tfa_mmod/w_smg1.mdl",
	iconCam = {
		tpos = Vector( 0, 0, 0 ),
			tang = Angle( 0, 0, 0 ),
			tfov = 0
		},
		Width = 3,
		Height = 2,
		Weight = 3,
		Price = 375,
												
		--Weapon Parameters
		--Prim == Primary
		Prim = {
			Ammo = "smg1ammo",
			Damage = 15,
			KickUp = 0.4,
			KickDown = 0.4,
			KickHorizontal = 0.35,
			Spread = .021,
			IronAccuracy = .01
		},
												
		--Sec == Secondary
			Sec = {}
}

											--    Shotguns	   --

PLUGIN.GunData[ "tfa_mmod_shotgun" ] = {
	--Weapon can be Blacklisted and item will be not auto-generated
	BlackList = false,
																							
	Slot = "primary",
	Model = "models/weapons/tfa_mmod/w_shotgun.mdl",
	iconCam = {
		tpos = Vector( 0, 0, 0 ),
			tang = Angle( 0, 0, 0 ),
			tfov = 0
		},
		Width = 6,
		Height = 2,
		Weight = 3,
		Price = 700,
																							
		--Weapon Parameters
		--Prim == Primary
		Prim = {
			Ammo = "shotgunammo",
			Damage = 17,
			KickUp = 0.4,
			KickDown = 0.4,
			KickHorizontal = 0.35,
			Spread = .021,
			IronAccuracy = .01
		},
																							
		--Sec == Secondary
			Sec = {}
}

PLUGIN.GunData[ "tfa_ins2_m1014" ] = {
	--Weapon can be Blacklisted and item will be not auto-generated
	BlackList = false,
																							
	Slot = "primary",
	Model = "models/weapons/tfa_ins2/w_m1014.mdl",
	iconCam = {
		tpos = Vector( 0, 0, 0 ),
			tang = Angle( 0, 0, 0 ),
			tfov = 0
		},
		Width = 6,
		Height = 2,
		Weight = 3,
		Price = 700,
																							
		--Weapon Parameters
		--Prim == Primary
		Prim = {
			Ammo = "shotgunammo",
			Damage = 17,
			KickUp = 0.4,
			KickDown = 0.4,
			KickHorizontal = 0.35,
			Spread = .021,
			IronAccuracy = .01
		},
																							
		--Sec == Secondary
			Sec = {}
}

PLUGIN.GunData[ "tfa_ins2_nova" ] = {
	--Weapon can be Blacklisted and item will be not auto-generated
	BlackList = false,
																							
	Slot = "primary",
	Model = "models/weapons/tfa_ins2/w_nova.mdl",
	iconCam = {
		tpos = Vector( 0, 0, 0 ),
			tang = Angle( 0, 0, 0 ),
			tfov = 0
		},
		Width = 6,
		Height = 2,
		Weight = 3,
		Price = 700,
																							
		--Weapon Parameters
		--Prim == Primary
		Prim = {
			Ammo = "shotgunammo",
			Damage = 17,
			KickUp = 0.4,
			KickDown = 0.4,
			KickHorizontal = 0.35,
			Spread = .021,
			IronAccuracy = .01
		},
																							
		--Sec == Secondary
			Sec = {}
}

PLUGIN.GunData[ "tfa_ins2_remington_m870" ] = {
	--Weapon can be Blacklisted and item will be not auto-generated
	BlackList = false,
																							
	Slot = "primary",
	Model = "models/weapons/smc/r870/w_remington_m870.mdl",
	iconCam = {
		tpos = Vector( 0, 0, 0 ),
			tang = Angle( 0, 0, 0 ),
			tfov = 0
		},
		Width = 6,
		Height = 2,
		Weight = 3,
		Price = 700,
																							
		--Weapon Parameters
		--Prim == Primary
		Prim = {
			Ammo = "shotgunammo",
			Damage = 17,
			KickUp = 0.4,
			KickDown = 0.4,
			KickHorizontal = 0.35,
			Spread = .021,
			IronAccuracy = .01
		},
																							
		--Sec == Secondary
			Sec = {}
}

PLUGIN.GunData[ "tfa_ins2_toz_194m" ] = {
	--Weapon can be Blacklisted and item will be not auto-generated
	BlackList = false,
																							
	Slot = "primary",
	Model = "models/weapons/w_inss2_toz_194m.mdl",
	iconCam = {
		tpos = Vector( 0, 0, 0 ),
			tang = Angle( 0, 0, 0 ),
			tfov = 0
		},
		Width = 5,
		Height = 2,
		Weight = 3,
		Price = 700,
																							
		--Weapon Parameters
		--Prim == Primary
		Prim = {
			Ammo = "shotgunammo",
			Damage = 17,
			KickUp = 0.4,
			KickDown = 0.4,
			KickHorizontal = 0.35,
			Spread = .021,
			IronAccuracy = .01
		},
																							
		--Sec == Secondary
			Sec = {}
}

PLUGIN.GunData[ "tfa_heavyshotgun" ] = {
	--Weapon can be Blacklisted and item will be not auto-generated
	BlackList = false,
																							
	Slot = "primary",
	Model = "models/weapons/heavyshotgun/w_shotgun_heavy.mdl",
	iconCam = {
		tpos = Vector( 0, 0, 0 ),
			tang = Angle( 0, 0, 0 ),
			tfov = 0
		},
		Width = 6,
		Height = 2,
		Weight = 5,
		Price = 700,
																							
		--Weapon Parameters
		--Prim == Primary
		Prim = {
			Ammo = "ar2ammo",
			Damage = 17,
			KickUp = 0.4,
			KickDown = 0.4,
			KickHorizontal = 0.35,
			Spread = .021,
			IronAccuracy = .01
		},
																							
		--Sec == Secondary
			Sec = {}
}

											--     Rifles      --
											--   Explosives    --
											--    Pistols      --