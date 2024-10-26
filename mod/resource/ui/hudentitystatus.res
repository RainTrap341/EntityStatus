"Resource/UI/HudEntityStatus.res"
{
	EntityStatusBg
	{
		ControlName			ImagePanel
		wide				350
		tall				900
		scaleImage			1
		visible				1

		xpos 					50
		ypos					400
		zpos					1000
		image 						"vgui/hud/white"
		drawColor	"0 0 0 128"
	}


	EntityStatusTitle
	{
		ControlName				Label
		labelText				"ENTITY_STATUS"

		// wrap					1
		fgcolor_override		"255 248 220 255"

		textAlignment			center
		font					Default_39_ShadowGlow
		xpos 					50
		ypos					400
		zpos					1012
		wide						350
		// tall						42
		visible						1
	}


	EntityStatusBar0
	{
		ControlName			CNestedPanel
		wide				300
		tall				90
		zpos				1012
		visible				0


		pin_to_sibling				EntityStatusTitle
		pin_corner_to_sibling		TOP
		pin_to_sibling_corner		BOTTOM
		controlSettingsFile		"resource/ui/hudentitystatusbar.res"
	}

	EntityStatusBar1
	{
		ControlName			CNestedPanel
		wide				300
		tall				90
		visible				0
		zpos				1012
		ypos				-25

		pin_to_sibling				EntityStatusBar0
		pin_corner_to_sibling		TOP_RIGHT
		pin_to_sibling_corner		BOTTOM_RIGHT

		controlSettingsFile		"resource/ui/hudentitystatusbar.res"
	}

	EntityStatusBar2
	{
		ControlName			CNestedPanel
		wide				300
		tall				90
		visible				0
		zpos				1012
		ypos				-25

		pin_to_sibling				EntityStatusBar1
		pin_corner_to_sibling		TOP_RIGHT
		pin_to_sibling_corner		BOTTOM_RIGHT

		controlSettingsFile		"resource/ui/hudentitystatusbar.res"
	}

	EntityStatusBar3
	{
		ControlName			CNestedPanel
		wide				300
		tall				90
		visible				0
		zpos				1012
		ypos				-25

		pin_to_sibling				EntityStatusBar2
		pin_corner_to_sibling		TOP_RIGHT
		pin_to_sibling_corner		BOTTOM_RIGHT

		controlSettingsFile		"resource/ui/hudentitystatusbar.res"
	}

	EntityStatusBar4
	{
		ControlName			CNestedPanel
		wide				300
		tall				90
		visible				0
		zpos				1012
		ypos				-25

		pin_to_sibling				EntityStatusBar3
		pin_corner_to_sibling		TOP_RIGHT
		pin_to_sibling_corner		BOTTOM_RIGHT

		controlSettingsFile		"resource/ui/hudentitystatusbar.res"
	}

	EntityStatusBar5
	{
		ControlName			CNestedPanel
		wide				300
		tall				90
		visible				0
		zpos				1012
		ypos				-25

		pin_to_sibling				EntityStatusBar4
		pin_corner_to_sibling		TOP_RIGHT
		pin_to_sibling_corner		BOTTOM_RIGHT

		controlSettingsFile		"resource/ui/hudentitystatusbar.res"
	}

	EntityStatusBar6
	{
		ControlName			CNestedPanel
		wide				300
		tall				90
		visible				0
		zpos				1012
		ypos				-25

		pin_to_sibling				EntityStatusBar5
		pin_corner_to_sibling		TOP_RIGHT
		pin_to_sibling_corner		BOTTOM_RIGHT

		controlSettingsFile		"resource/ui/hudentitystatusbar.res"
	}

	EntityStatusBar7
	{
		ControlName			CNestedPanel
		wide				300
		tall				90
		visible				0
		zpos				1012
		ypos				-25

		pin_to_sibling				EntityStatusBar6
		pin_corner_to_sibling		TOP_RIGHT
		pin_to_sibling_corner		BOTTOM_RIGHT

		controlSettingsFile		"resource/ui/hudentitystatusbar.res"
	}

}
