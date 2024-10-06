"Resource/UI/HudEntityStatus.res"
{


	EntityStatusBar0
	{
		ControlName			CNestedPanel
		wide				300
		tall				90
		visible				0

		xpos 					50
		ypos					400
		zpos					1012

		controlSettingsFile		"resource/ui/hudentitystatusbar.res"
	}

	EntityStatusBar1
	{
		ControlName			CNestedPanel
		wide				300
		tall				90
		visible				0
		zpos				1012
		ypos				-30

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
		ypos				-30

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
		ypos				-30

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
		ypos				-30

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
		ypos				-30

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
		ypos				-30

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
		ypos				-30

		pin_to_sibling				EntityStatusBar6
		pin_corner_to_sibling		TOP_RIGHT
		pin_to_sibling_corner		BOTTOM_RIGHT

		controlSettingsFile		"resource/ui/hudentitystatusbar.res"
	}
}
