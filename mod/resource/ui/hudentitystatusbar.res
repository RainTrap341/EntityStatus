"Resource/UI/HudEntityStatusBar.res"
{
	EntityImage
	{
		ControlName 			RuiPanel
		rui 					"ui/basic_image.rpak"
		basicImage 				""
		// ControlName			ImagePanel
		// image				"ui/icon_status_dead"

		wide				52
		tall				52
		visible				1
		scaleImage			1
		xpos 				-5
		ypos				10
		zpos				900
	}


	EntityImageAutotitan
	{
		ControlName 			RuiPanel
		rui 					"ui/basic_image.rpak"
		basicImage 				""
		// ControlName			ImagePanel
		// image				"ui/icon_status_dead"

		wide				24
		tall				24
		visible				0
		scaleImage			1
		xpos 				22
		ypos				37
		zpos				901
	}

	EntityImageShade
	{
		ControlName 			RuiPanel
		rui 					"ui/basic_image.rpak"
		basicImage 				"vgui/hud/white"

		wide				52
		tall				52
		visible				1
		scaleImage			1
		xpos 				-5
		ypos				10
		zpos				899

	}

	EntityImageBg
	{
		ControlName 			RuiPanel
		rui 					"ui/basic_image.rpak"
		basicImage 				"vgui/hud/white"

		wide				52
		tall				52
		visible				1
		scaleImage			1
		xpos 				-5
		ypos				10
		zpos				897

	}
	//////////////// vanguard ////////////////
	VanguardUpgrade1
	{
		ControlName 			RuiPanel
		rui 					"ui/basic_image.rpak"
		basicImage 				"vgui/hud/white"


		wide				24
		tall				24
		visible				1
		scaleImage			1
		xpos 				178
		ypos				55
		zpos				900
	}

	VanguardUpgrade2
	{
		ControlName 			RuiPanel
		rui 					"ui/basic_image.rpak"
		basicImage 				"vgui/hud/white"


		wide				24
		tall				24
		visible				0
		scaleImage			1
		xpos 				0
		zpos				900

		pin_to_sibling				VanguardUpgrade1
		pin_corner_to_sibling		TOP_LEFT
		pin_to_sibling_corner		TOP_RIGHT
	}

	VanguardUpgrade3
	{
		ControlName 			RuiPanel
		rui 					"ui/basic_image.rpak"
		basicImage 				"vgui/hud/white"


		wide				24
		tall				24
		visible				1
		scaleImage			1
		xpos 				0
		zpos				900

		pin_to_sibling				VanguardUpgrade2
		pin_corner_to_sibling		TOP_LEFT
		pin_to_sibling_corner		TOP_RIGHT
	}
	//////////////
	
	EntityTitle
	{
		ControlName				Label
		labelText				""
		auto_tall_tocontents 	1
		wrap					1
		fgcolor_override		"255 248 220 255"

		//ControlName					RuiPanel
		//rui					"ui/loadout_label.rpak"

		xpos						50
		ypos						13
		zpos						900
		wide						340
		tall						36
		visible						1
	}
//////////////////////////////////////////////////

	BarFill
	{
		ControlName					ImagePanel
		xpos 						-2
		ypos						3
		zpos						204
		wide 						200
		tall 						18
		//image 						"ui/menu/eog/xp_bar"
		image 						"vgui/hud/white"
		drawColor	"87 151 219 160"

		visible						1
		scaleImage					1

		pin_to_sibling				EntityTitle
		pin_corner_to_sibling		TOP_LEFT
		pin_to_sibling_corner		BOTTOM_LEFT
	}

	BarFillShadow
	{
		ControlName					ImagePanel
		xpos 						-3
		ypos						3
		zpos						205
		wide 						200
		tall 						18
		//image 						"ui/menu/eog/xp_bar_shadow"
		image 						"vgui/hud/white"
		drawColor	"128 128 128 80"

		visible						1
		scaleImage					1

		pin_to_sibling				EntityTitle
		pin_corner_to_sibling		TOP_LEFT
		pin_to_sibling_corner		BOTTOM_LEFT
	}

	BarDesc
	{
		ControlName				Label
		labelText				"0/0"
		auto_tall_tocontents 	1
		wrap					1
		xpos						-5
		ypos						0
		zpos						1000
		wide						270
		tall						14
		visible						1

		textAlignment			middle
		font					Default_21


		pin_to_sibling				EntityTitle
		pin_corner_to_sibling		TOP_LEFT
		pin_to_sibling_corner		BOTTOM_LEFT
	}

////////////////////////////////// MONEY

	Money
	{
		ControlName				Label
		labelText				"$00000"
		auto_tall_tocontents 	1
		wrap					1
		xpos						-150
		ypos						0
		zpos						1000
		wide						270
		tall						14
		visible						0
		fgcolor_override	"255 215 0 255"

		textAlignment			middle
		font					Default_21


		pin_to_sibling				EntityTitle
		pin_corner_to_sibling		TOP_LEFT
		pin_to_sibling_corner		BOTTOM_LEFT
	}
///////////////////////////////////////////////////////// TITAN STUFF
	ShieldBoost
	{
		ControlName 			RuiPanel
		rui 					"ui/basic_image.rpak"
		basicImage 				"ui/icon_status_dead"


		wide				30
		tall				30
		visible				0
		scaleImage			1
		xpos 				-125
		ypos				25
		zpos				1000

		pin_to_sibling				BarFillShadow
		pin_corner_to_sibling		TOP_LEFT
		pin_to_sibling_corner		TOP_LEFT
	}



	Nuclear
	{
		ControlName 			RuiPanel
		rui 					"ui/basic_image.rpak"
		basicImage 				"rui/menu/boosts/boost_icon_core_overload"


		wide				30
		tall				30
		visible				0
		scaleImage			1
		xpos 				-25
		ypos				0
		zpos				900

		pin_to_sibling				ShieldBoost
		pin_corner_to_sibling		TOP_LEFT
		pin_to_sibling_corner		TOP_LEFT
	}

	Smoke
	{
		ControlName 			RuiPanel
		rui 					"ui/basic_image.rpak"
		basicImage 				"rui/titan_loadout/tactical/titan_tactical_electric_smoke"


		wide				30
		tall				30
		visible				0
		scaleImage			1
		xpos 				-25
		ypos				0
		zpos				900

		pin_to_sibling				Nuclear
		pin_corner_to_sibling		TOP_LEFT
		pin_to_sibling_corner		TOP_LEFT
	}

	Core
	{
		ControlName 			RuiPanel
		rui 					"ui/basic_image.rpak"
		basicImage 				"rui/titan_loadout/passive/monarch_core_maelstrom"


		wide				52
		tall				52
		visible				0
		scaleImage			1
		xpos 				-25
		ypos				0
		zpos				900

		pin_to_sibling				Smoke
		pin_corner_to_sibling		TOP_LEFT
		pin_to_sibling_corner		TOP_LEFT
	}

	CoreBg
	{
		ControlName 			RuiPanel
		rui 					"ui/basic_image.rpak"
		basicImage 				"vgui/hud/white"

		drawColor	"0 0 0 90"

		wide				52
		tall				52
		visible				0
		scaleImage			1
		xpos 				0
		ypos				0
		zpos				899

		pin_to_sibling				Core
		pin_corner_to_sibling		TOP_LEFT
		pin_to_sibling_corner		TOP_LEFT
	}

	CoreLabel
	{
		ControlName				Label
		labelText				""
		wrap					1
		xpos						-12
		ypos						0
		zpos						901
		wide						52
		tall						52
		visible						0

		textAlignment			center
		font					Default_27
		fgcolor_override		"255 255 255 255"

		pin_to_sibling				Core
		pin_corner_to_sibling		TOP_LEFT
		pin_to_sibling_corner		TOP_LEFT
	}

}
