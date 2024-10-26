untyped

global function EntityStatus_ModSettings_Init

struct
{
	var preview

	var entityStatus
	table playerColor

	float panelAlpha
	float avatarAlpha

	float healthbarLabelAlpha
	float moneyLabelAlpha
	table healthbarCommonFgColor
	table healthbarLocalFgColor
	table healthbarPartyFgColor
	table healthbarDoomFgColor
	table healthbarShieldFgColor
	table healthbarAutotitanFgColor
	table healthbarHazardFgColor
	table defaultHealthbarHazardFgColor = {
	    r = 249,
		g = 219,
		b = 49,
		a = 255
	}

	float coreLabelAlpha
	table coreLabelCoreBuildingFgColor
	table coreLabelCoreReadyFgColor
	table coreLabelTitanBuildingFgColor

	float coreProgressAlpha
	table coreProgressFgColor

	float coreBgAlpha
	table coreBgColor
} file


void function EntityStatus_ModSettings_Init()
{


	#if (PLAYER_HAS_MOD_SETTINGS || PLAYER_HAS_NS_CLIENT)
		printt("EntityStatus: ModSetting Found. Init...")
		InitModSettings()
	#endif
}

#if (PLAYER_HAS_MOD_SETTINGS || PLAYER_HAS_NS_CLIENT)
void function InitModSettings() {
		AddMenu("EntityStatusPreview", $"Resource/UI/menu/HudEntityStatusPreview.menu", SetupPreview)

		AddModTitle("Entity Status: " + Localize("#ENTITY_STATUS"))

		AddModCategory("#MAIN_PANEL")
		ModSettings_AddButton( "#PREVIEW", void function () {
			AdvanceMenu(file.preview)
		})
		// SetupPreview()

		ModSettings_AddSetting("EntityStatus.title_content", "#TITLE")
		AddAlphaModSetting("EntityStatus.title_alpha", "#TITLE_ALPHA" )
		ModSettings_AddHelp("EntityStatus.panel_alpha", "#MAIN_PANEL_ALPHA")

		AddAlphaModSetting("EntityStatus.panel_alpha", "#MAIN_PANEL_ALPHA")
		ModSettings_AddSetting("EntityStatus.panel_position","#MAIN_PANEL_POSITION", "vector")


		ModSettings_AddEnumSetting("EntityStatus.panel_hollow_bg", "#USE_HOLLOW_PANEL_BG", ["#SETTING_DISABLED", "#SETTING_ENABLED"])
		ModSettings_AddSliderSetting("EntityStatus.panel_rotation","#MAIN_PANEL_BG_ROTATION", -90, 90.0, 0.05)
		AddColorModSetting("EntityStatus.panel_bgcolor", "#MAIN_PANEL_BG_COLOR")


		AddModCategory("#MAIN_PANEL_PADDING")
		ModSettings_AddSetting("EntityStatus.panel_padding_top","#MAIN_PANEL_PADDING_TOP", "int")
		ModSettings_AddSetting("EntityStatus.panel_padding_right","#MAIN_PANEL_PADDING_RIGHT", "int")
		ModSettings_AddSetting("EntityStatus.panel_padding_bottom","#MAIN_PANEL_PADDING_BOTTOM", "int")
		ModSettings_AddSetting("EntityStatus.panel_padding_left","#MAIN_PANEL_PADDING_LEFT", "int")


		AddModCategory("#HEALTH_BAR")
		ModSettings_AddEnumSetting("EntityStatus.use_hazard_line", "#USE_HAZARD", ["#SETTING_DISABLED", "#SETTING_ENABLED"])
		ModSettings_AddEnumSetting("EntityStatus.use_hazard_line_drawcolor", "#USE_HAZARD_DRAWCOLOR", ["#SETTING_DISABLED", "#SETTING_ENABLED"])

		// printt("EntityStatus.use_hazard_line", GetConVarString("EntityStatus.use_hazard_line"))
		AddAlphaModSetting("EntityStatus.avatar_alpha", "#AVATAR_ALPHA" )
		AddAlphaModSetting("EntityStatus.health_bar_label_alpha", "#HEALTH_BAR_TEXT_ALPHA")
		AddAlphaModSetting("EntityStatus.money_label_alpha", "#HEALTH_BAR_MONEY_ALPHA")
		ModSettings_AddSetting("EntityStatus.bar_tall", "#HEALTH_BAR_HEIGHT", "int")
		ModSettings_AddSetting("EntityStatus.bar_wide", "#HEALTH_BAR_WIDTH", "int")
		ModSettings_AddSetting("EntityStatus.bar_gap", "#HEALTH_BAR_GAP", "int")



		AddModCategory("#HEALTH_BAR_COLORS")
		AddColorModSetting("EntityStatus.hazard_line_drawcolor", "#HAZARD_DRAWCOLOR")

		// ModSettings_AddColorPicker( "EntityStatus.health_common_fgcolor", "#HUD_DEFAULT_COLORS_OPTION" )
		AddColorModSetting("EntityStatus.health_common_fgcolor","#HEALTH_BAR_BG_COLOR")
		AddColorModSetting("EntityStatus.health_local_fgcolor","#HEALTH_BAR_TEXT_LOCAL_COLOR")
		AddColorModSetting("EntityStatus.health_party_fgcolor","#HEALTH_BAR_TEXT_PARTY_COLOR")
		AddColorModSetting("EntityStatus.health_doom_fgcolor", "#HEALTH_BAR_BG_DOOM_COLOR")
		AddColorModSetting("EntityStatus.health_shield_fgcolor", "#HEALTH_BAR_BG_SHIELD_COLOR")


		AddModCategory(Localize("#TITAN_CORE_CONTROLS"))
		AddAlphaModSetting("EntityStatus.core_label_alpha","#CORE_PROGRESS_TEXT_ALPHA" )
		AddColorModSetting("EntityStatus.core_label_core_building_fgcolor", "#CORE_PROGRESS_TEXT_CORE_BUILDING_COLOR")
		AddColorModSetting("EntityStatus.core_label_core_ready_fgcolor",  "#CORE_PROGRESS_TEXT_CORE_READY_COLOR")
		AddColorModSetting("EntityStatus.core_label_titan_building_fgcolor", "#CORE_PROGRESS_TEXT_TITAN_BUILDING_COLOR")
		AddAlphaModSetting("EntityStatus.core_progress_alpha", "#CORE_PROGRESS_BAR_ALPHA")
		AddColorModSetting("EntityStatus.core_progress_fgcolor", "#CORE_PROGRESS_BAR_COLOR")
		AddAlphaModSetting("EntityStatus.core_bg_alpha", "#CORE_PROGRESS_BAR_BG_ALPHA")
		AddColorModSetting("EntityStatus.core_bgcolor", "#CORE_PROGRESS_BAR_BG_COLOR")
}


void function AddColorModSetting(string conVar, string displayName) {
	#if (PLAYER_HAS_MOD_SETTINGS || PLAYER_HAS_NS_CLIENT) && PLAYER_HAS_MOD_SETTINGS_PLUS
	ModSettings_AddColorSetting(conVar, displayName, null, 3)
	#endif
	#if (PLAYER_HAS_MOD_SETTINGS || PLAYER_HAS_NS_CLIENT) && !(PLAYER_HAS_MOD_SETTINGS_PLUS)
	ModSettings_AddSetting(conVar, displayName, "", 3)
	#endif
}

void function AddAlphaModSetting(string conVar, string displayName) {
	#if (PLAYER_HAS_MOD_SETTINGS || PLAYER_HAS_NS_CLIENT) && PLAYER_HAS_MOD_SETTINGS_PLUS
	ModSettings_AddAlphaSetting(conVar, displayName, 3)
	#endif
	#if (PLAYER_HAS_MOD_SETTINGS || PLAYER_HAS_NS_CLIENT) && !(PLAYER_HAS_MOD_SETTINGS_PLUS)
	ModSettings_AddSetting(conVar, displayName,"", 3)
	#endif
}


void function SetupPreview() {
	file.preview = GetMenu( "EntityStatusPreview" )
	file.entityStatus = Hud_GetChild(file.preview, "Content")
	LoadModSettings()


	var content = Hud_GetChild(file.preview, "Content")
	AddMenuFooterOption( file.preview, BUTTON_B, "#B_BUTTON_BACK", "#BACK" )


	int[2] screenSize = GetScreenSize()
	Hud_SetSize( file.preview, screenSize[0] , screenSize[1] )

	float resMultiplier = 1.0
	// Hud_SetSize( Hud_GetChild(file.preview, "Bg"), int(screenSize[0] * resMultiplier), int(screenSize[1] * resMultiplier))
	/////////// MAIN PANEL
	// Position
	var title = Hud_GetChild(content, "EntityStatusTitle")
	vector panelPosition = StringToVector( GetConVarString("EntityStatus.panel_position") )
	Hud_SetPosWithVector(title, panelPosition)


	asset[3] images = [$"rui/pilot_loadout/tactical/pilot_tactical_stim", $"rui/menu/postgame/vanguard_icon", $"rui/menu/postgame/legion_icon"]
	string[3] titleStrings = ["P1(You)", "P2(In Party)", "P3"]

	for (int i = 0; i < 3; i++) {
		var entityBar = Hud_GetChild(content, "EntityStatusBar" + i)

		// AVATAR
		var avatar = Hud_GetChild( entityBar, "EntityImage" )
		RuiSetImage( Hud_GetRui(avatar), "basicImage", images[i])
		RuiSetFloat( Hud_GetRui(avatar), "basicImageAlpha", file.avatarAlpha * file.panelAlpha)


		RuiSetImage( Hud_GetRui(Hud_GetChild( entityBar, "Core" )), "basicImage", $"rui/titan_loadout/core/titan_core_laser" )
		// RuiSetImage( Hud_GetRui(Hud_GetChild( entityBar, "CoreBg" )), "basicImage", $"vgui/white" )
		RuiSetImage( Hud_GetRui(Hud_GetChild( entityBar, "CoreBgStatic" )), "basicImage", $"vgui/white" )
		// RuiSetFloat3( Hud_GetRui(Hud_GetChild( entityBar, "CoreBg" )), "basicImageColor", <0,0,0> )



		// avatar bg
		RuiSetImage( Hud_GetRui(Hud_GetChild( entityBar, "EntityImageShade" )), "basicImage", $"vgui/hud/white")
		RuiSetFloat3( Hud_GetRui(Hud_GetChild( entityBar, "EntityImageShade" )), "basicImageColor", <0,0,0> )
		if (GetConVarBool("EntityStatus.panel_hollow_bg"))
			RuiSetFloat( Hud_GetRui(Hud_GetChild( entityBar, "EntityImageShade" )), "basicImageAlpha", 0.3 * file.avatarAlpha * file.panelAlpha)
		else
			RuiSetFloat( Hud_GetRui(Hud_GetChild( entityBar, "EntityImageShade" )), "basicImageAlpha", 0)



		var title = Hud_GetChild( entityBar, "EntityTitle" )
		Hud_SetText( title, titleStrings[i] )
		Hud_SetColor( title, 255 , 248, 220, 255 )

		if (i == 1)
			Hud_SetColorWithTable( title, file.healthbarPartyFgColor )
		if (i == 0)
	 		Hud_SetColorWithTable( title, file.healthbarLocalFgColor )



		float[3] frac = [1.0, 0.5, 0.3];
		var barFill = Hud_GetChild( entityBar, "BarFill" )
		Hud_SetColorWithTable( barFill, file.healthbarCommonFgColor )
		Hud_SetScaleX( barFill, frac[i] )

		var hazardLine = Hud_GetChild(entityBar, "BarFillHazard")
		hazardLine.Hide()
		if (i == 2) {
			hazardLine.Show()
			Hud_SetScaleX( hazardLine, frac[i] )
		}

		Hud_SetColorWithTable(Hud_GetChild(entityBar, "BarFillShield"), file.healthbarShieldFgColor)
		Hud_SetColorWithTable(Hud_GetChild(entityBar, "BarFillShieldHeader"), file.healthbarShieldFgColor)
		if (i == 0) {
			Hud_GetChild(entityBar, "BarFillShield").Hide()
			Hud_GetChild(entityBar, "BarFillShieldHeader").Hide()
			Hud_SetColor( Hud_GetChild(entityBar, "Money"), 255, 255, 255, 255 )
			Hud_SetText(Hud_GetChild(entityBar, "Money"), format("%06d", 36))
			RuiSetFloat( Hud_GetRui(Hud_GetChild( entityBar, "Core" )), "basicImageAlpha", 0.3 )
			Hud_SetText(Hud_GetChild(entityBar, "CoreLabel"), format("%d", 0.36 * 100 + 0.5))
			Hud_SetScaleX(Hud_GetChild(entityBar, "CoreBg"), 0.36)
			Hud_SetColorWithTable(Hud_GetChild( entityBar, "CoreLabel" ), file.coreLabelTitanBuildingFgColor)
			RuiSetImage( Hud_GetRui(Hud_GetChild( entityBar, "Core" )), "basicImage", $"rui/menu/postgame/scorch_icon")


		}

		if (i == 1) {
			array upgradeArr = [
				Hud_GetChild(entityBar, "VanguardUpgrade0"),
				Hud_GetChild(entityBar, "VanguardUpgrade1"),
				Hud_GetChild(entityBar, "VanguardUpgrade2"),
				Hud_GetChild(entityBar, "VanguardUpgrade3")
			]
			array upgradeIcons = [
				$"rui/titan_loadout/passive/monarch_core_energy_transfer",
				$"rui/titan_loadout/passive/monarch_core_missile_rackss",
				$"rui/titan_loadout/passive/monarch_core_maelstrom",
				$"rui/titan_loadout/passive/monarch_core_multi_target"
			]
			RuiSetFloat( Hud_GetRui(Hud_GetChild( entityBar, "Core" )), "basicImageAlpha", 0.7 )

			for (int i = 0; i < 4; i++) {
				RuiSetImage(Hud_GetRui(upgradeArr[i]), "basicImage", upgradeIcons[i])
				upgradeArr[i].Show()
			}
			Hud_SetText(Hud_GetChild(entityBar, "CoreLabel"), format("%d", 100))
			Hud_SetColorWithTable(Hud_GetChild( entityBar, "CoreLabel" ), file.coreLabelCoreReadyFgColor)
			Hud_SetScaleX(Hud_GetChild(entityBar, "CoreBg"), 1)

			RuiSetImage( Hud_GetRui(Hud_GetChild( entityBar, "Core" )), "basicImage", $"rui/titan_loadout/core/titan_core_vanguard")

		}
		if (i == 2) {
			Hud_GetChild( entityBar, "BarFillShieldHeader" ).Hide()
			Hud_SetScaleX(Hud_GetChild(entityBar, "BarFillShield"), 0.5)
			Hud_SetText(Hud_GetChild(entityBar, "CoreLabel"), format("%d", 0.36 * 100 + 0.5))
			Hud_SetScaleX(Hud_GetChild(entityBar, "CoreBg"), 0.36)
			Hud_SetColorWithTable(Hud_GetChild( entityBar, "CoreLabel" ), file.coreLabelCoreBuildingFgColor)

			var hazardLine = Hud_GetChild(entityBar, "BarFillHazard")
			if (GetConVarBool("EntityStatus.use_hazard_line") && GetConVarBool("EntityStatus.use_hazard_line_drawcolor")) {
				Hud_SetColorWithTable( Hud_GetChild(hazardLine, "Image"), file.healthbarHazardFgColor )
			}
			else
				Hud_SetColorWithTable( Hud_GetChild(hazardLine, "Image"), file.defaultHealthbarHazardFgColor )
			}



		RuiSetFloat3( Hud_GetRui(Hud_GetChild( entityBar, "CoreBgStatic" )), "basicImageColor", <file.coreBgColor.r,file.coreBgColor.g,file.coreBgColor.b> )
		RuiSetFloat3( Hud_GetRui(Hud_GetChild( entityBar, "CoreBg" )), "basicImageColor", <file.coreProgressFgColor.r,file.coreProgressFgColor.g,file.coreProgressFgColor.b> )



		Hud_SetAlpha(Hud_GetChild( entityBar, "CoreLabel" ), file.avatarAlpha * 255)
		Hud_SetAlpha(Hud_GetChild( entityBar, "BarDesc" ), file.healthbarLabelAlpha * 255)
		Hud_SetAlpha(Hud_GetChild( entityBar, "Money" ), file.moneyLabelAlpha * 255)
		Hud_SetAlpha(Hud_GetChild( entityBar, "BarFillAutotitan" ), file.coreLabelAlpha * 255)
		// Hud_SetAlpha(Hud_GetChild( entityBar, "CoreBg" ), file.coreProgressAlpha)
		// Hud_SetAlpha(Hud_GetChild( entityBar, "CoreBgStatic" ), file.coreBgAlpha)
		RuiSetFloat( Hud_GetRui(Hud_GetChild( entityBar, "CoreBg" )), "basicImageAlpha", file.coreProgressAlpha * file.panelAlpha)
		RuiSetFloat(Hud_GetRui(Hud_GetChild(entityBar, "CoreBgStatic")), "basicImageAlpha", file.coreBgAlpha * file.panelAlpha)
		RuiSetFloat(Hud_GetRui(Hud_GetChild(entityBar, "EntityImageAutotitan")), "basicImageAlpha", file.avatarAlpha * file.panelAlpha)

	}

}

void function Hud_SetColorWithTable(var element, table color)
{
	if (!("a" in color)) {
		color.a <- 255
	}
	Hud_SetColor(element, color.r, color.g, color.b, color.a )
}

void function Hud_SetPosWithVector(var element, vector pos)
{
	Hud_SetPos( element, pos.x, pos.y )

}


vector function StringToVector( string vecString, string delimiter = " " )
{
	array<string> tokens = split( vecString, delimiter )

	Assert( tokens.len() >= 3 )

	return Vector( float( tokens[0] ), float( tokens[1] ), float( tokens[2] ) )
}

void function LoadModSettings()
{
	if (file.entityStatus == null) {
		return
	}


	/////////// MAIN PANEL
	// Position
	vector panelPosition = StringToVector( GetConVarString("EntityStatus.panel_position") )
	Hud_SetPosWithVector(HudElement("EntityStatusTitle", file.entityStatus), panelPosition)

	// Alpha
	file.panelAlpha = GetConVarFloat("EntityStatus.panel_alpha")
	Hud_SetPanelAlpha(file.entityStatus, file.panelAlpha * 255)
	Hud_SetAlpha(file.entityStatus, file.panelAlpha * 255)

	// Title
	Hud_SetText(HudElement("EntityStatusTitle", file.entityStatus), GetConVarString("EntityStatus.title_content"))
	Hud_SetAlpha(HudElement("EntityStatusTitle", file.entityStatus), file.panelAlpha * 255)






	////////// BAR-GAP
	int barTall = GetConVarInt("EntityStatus.bar_tall")
	int barGap = GetConVarInt("EntityStatus.bar_gap")
	int barWidth = GetConVarInt("EntityStatus.bar_wide")
	for (int i = 1; i < 3; i++) {
		var bar = HudElement("EntityStatusBar" + i, file.entityStatus)
		Hud_SetY(bar, barGap)
	}


	////////// PANEL BACKGROUND
	var entityStatusBg = HudElement("EntityStatusBg", file.entityStatus)
	// entityStatusBg.Hide()
	entityStatusBg.Show()



	// Might be weire if got mates more than 4. Due to that it streches the image as whole one.
	if (GetConVarBool("EntityStatus.panel_hollow_bg"))
		Hud_SetImage(entityStatusBg,  $"vgui/_border")
	else
		Hud_SetImage(entityStatusBg,  $"vgui/hud/white")

	int panelPaddingTop = GetConVarInt("EntityStatus.panel_padding_top")
	int panelPaddingRight = GetConVarInt("EntityStatus.panel_padding_right")
	int panelPaddingBottom = GetConVarInt("EntityStatus.panel_padding_bottom")
	int panelPaddingLeft = GetConVarInt("EntityStatus.panel_padding_left")

	int panelBgTall = barTall * 3 + panelPaddingTop + panelPaddingBottom + (3 - 1) * barGap + Hud_GetHeight(HudElement("EntityStatusTitle", file.entityStatus))
	int panelBgWidth = barWidth + panelPaddingRight + panelPaddingLeft
	Hud_SetSize(entityStatusBg, panelBgWidth, panelBgTall)


	table panelColor = GetColorsFromConVar("EntityStatus.panel_bgcolor")
	Hud_SetColorWithTable( entityStatusBg, panelColor )
	Hud_SetPosWithVector(entityStatusBg, panelPosition - < panelPaddingLeft, panelPaddingTop, 0> )

	// Rotation
	float panelRotation = GetConVarFloat("EntityStatus.panel_rotation")
	Hud_SetRotation( entityStatusBg, panelRotation)
	///////// BAR
	file.avatarAlpha = GetConVarFloat("EntityStatus.avatar_alpha")
	file.healthbarLabelAlpha = GetConVarFloat("EntityStatus.health_bar_label_alpha")
	file.moneyLabelAlpha = GetConVarFloat("EntityStatus.money_label_alpha")

	file.healthbarCommonFgColor = GetColorsFromConVar("EntityStatus.health_common_fgcolor")
	file.healthbarLocalFgColor = GetColorsFromConVar("EntityStatus.health_local_fgcolor")
	file.healthbarPartyFgColor = GetColorsFromConVar("EntityStatus.health_party_fgcolor")
	file.healthbarDoomFgColor = GetColorsFromConVar("EntityStatus.health_doom_fgcolor")
	file.healthbarShieldFgColor = GetColorsFromConVar("EntityStatus.health_shield_fgcolor")
	file.healthbarAutotitanFgColor = GetColorsFromConVar("EntityStatus.health_autotitan_fgcolor")
	file.healthbarHazardFgColor = GetColorsFromConVar("EntityStatus.hazard_line_drawcolor")

	file.coreLabelAlpha = GetConVarFloat("EntityStatus.core_label_alpha")
	file.coreLabelCoreBuildingFgColor = GetColorsFromConVar("EntityStatus.core_label_core_building_fgcolor")
	file.coreLabelCoreReadyFgColor = GetColorsFromConVar("EntityStatus.core_label_core_ready_fgcolor")
	file.coreLabelTitanBuildingFgColor = GetColorsFromConVar("EntityStatus.core_label_titan_building_fgcolor")

	file.coreProgressAlpha = GetConVarFloat("EntityStatus.core_progress_alpha")
	file.coreProgressFgColor = GetColorsFromConVar("EntityStatus.core_progress_fgcolor")

	file.coreBgAlpha  = GetConVarFloat("EntityStatus.core_bg_alpha")
	file.coreBgColor = GetColorsFromConVar("EntityStatus.core_bgcolor")

}

var function HudElement(string element, var _parent) {
	return Hud_GetChild(_parent, element)
}

table function GetColorsFromConVar(string conVar) {
	table color = StringToColors(GetConVarString(conVar))

	if (
		!("r" in color) ||
		!("g" in color) ||
		!("b" in color)
	)
	{
		SetConVarToDefault( conVar )
	}

	return StringToColors(GetConVarString(conVar))
}

// nothing in the game uses the format "Table.r/g/b/a"... wtf is the point of this function
table function StringToColors( string colorString, string delimiter = " " )
{
	PerfStart( PerfIndexShared.StringToColors + SharedPerfIndexStart )
	array<string> tokens = split( colorString, delimiter )

	Assert( tokens.len() >= 3 )

	table Table = {}
	Table.r <- int( tokens[0] )
	Table.g <- int( tokens[1] )
	Table.b <- int( tokens[2] )

	if ( tokens.len() == 4 )
		Table.a <- int( tokens[3] )
	else
		Table.a <- 255

	PerfEnd( PerfIndexShared.StringToColors + SharedPerfIndexStart )
	return Table
}

#endif
