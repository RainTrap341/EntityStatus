global function EntityStatus_ModSettings_Init



void function EntityStatus_ModSettings_Init()
{


	#if (PLAYER_HAS_MOD_SETTINGS || PLAYER_HAS_NS_CLIENT)
		printt("EntityStatus: ModSetting Found. Init...")
		InitModSettings()
	#endif
}

#if (PLAYER_HAS_MOD_SETTINGS || PLAYER_HAS_NS_CLIENT)
void function InitModSettings() {
		AddModTitle("Entity Status: " + Localize("#ENTITY_STATUS"))

		AddModCategory("#MAIN_PANEL")

		AddAlphaModSetting("EntityStatus.panel_alpha", "#MAIN_PANEL_ALPHA")
		ModSettings_AddSetting("EntityStatus.panel_position","#MAIN_PANEL_POSITION", "vector")
		ModSettings_AddSetting("EntityStatus.title_content", "#TITLE")
		AddAlphaModSetting("EntityStatus.title_alpha", "#TITLE_ALPHA" )

		// ModSettings_AddSetting("EntityStatus.panel_bgcolor","#SETTING_COLOR", "vector")
		// ModSettings_AddSliderSetting("EntityStatus.panel_rotation","#SETTING_ROTATION", 0, 90.0, 0.05)

		// AddModCategory("Panel Padding")
		// ModSettings_AddSetting("EntityStatus.panel_padding_top","Panel Padding Top", "int")
		// ModSettings_AddSetting("EntityStatus.panel_padding_right","Panel Padding Right", "int")
		// ModSettings_AddSetting("EntityStatus.panel_padding_bottom","Panel Padding Bottom", "int")
		// ModSettings_AddSetting("EntityStatus.panel_padding_left","Panel Padding Left", "int")

		AddModCategory("#HEALTH_BAR")
		AddAlphaModSetting("EntityStatus.avatar_alpha", "#AVATAR_ALPHA" )
		AddAlphaModSetting("EntityStatus.health_bar_label_alpha", "#HEALTH_BAR_TEXT_ALPHA")
		AddAlphaModSetting("EntityStatus.money_label_alpha", "#HEALTH_BAR_MONEY_ALPHA")
		ModSettings_AddSetting("EntityStatus.bar_tall", "#HEALTH_BAR_HEIGHT", "int")
		ModSettings_AddSetting("EntityStatus.bar_wide", "#HEALTH_BAR_WIDTH", "int")
		ModSettings_AddSetting("EntityStatus.bar_gap", "#HEALTH_BAR_GAP", "int")



		AddModCategory("#HEALTH_BAR_COLORS")
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
		AddAlphaModSetting("EntityStatus.core_bgcolor", "#CORE_PROGRESS_BAR_BG_COLOR")
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
#endif
