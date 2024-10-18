global function EntityStatus_ModSettings_Init





void function EntityStatus_ModSettings_Init()
{


	#if (PLAYER_HAS_MOD_SETTINGS || PLAYER_HAS_NS_CLIENT) && PLAYER_HAS_MOD_SETTINGS_PLUS
		printt("EntityStatus: ModSettingPlus Found. Init...")
		InitModSettingsPlus()

	#endif
	#if (PLAYER_HAS_MOD_SETTINGS || PLAYER_HAS_NS_CLIENT) && !(PLAYER_HAS_MOD_SETTINGS_PLUS)
		printt("EntityStatus: ModSetting Found. Init partly...")

		InitModSettings()
	#endif
}
#if (PLAYER_HAS_MOD_SETTINGS || PLAYER_HAS_NS_CLIENT)
void function InitModSettingsPlus() {
		AddModTitle("Entity Status" + Localize("#ENTITY_STATUS"))

		AddModCategory("#MAIN_PANEL")

		// ModSettings_AddSetting("EntityStatus.panel_alpha","Panel Alpha", "float")
		ModSettings_AddAlphaSetting("EntityStatus.panel_alpha", Localize("#MAIN_PANEL")
		+ Localize("#SETTING_ALPHA"))
		ModSettings_AddSetting("EntityStatus.panel_position","#SETTING_POSITION", "vector")


		ModSettings_AddSetting("EntityStatus.title_content", Localize("#TITLE")+ "(可能無法正常顯示中文符號)")
		ModSettings_AddAlphaSetting("EntityStatus.title_alpha", Localize("#TITLE")
		+ Localize("#SETTING_ALPHA") )

		// ModSettings_AddSetting("EntityStatus.panel_bgcolor","#SETTING_COLOR", "vector")
		// ModSettings_AddSliderSetting("EntityStatus.panel_rotation","#SETTING_ROTATION", 0, 90.0, 0.05)

		// AddModCategory("Panel Padding")
		// ModSettings_AddSetting("EntityStatus.panel_padding_top","Panel Padding Top", "int")
		// ModSettings_AddSetting("EntityStatus.panel_padding_right","Panel Padding Right", "int")
		// ModSettings_AddSetting("EntityStatus.panel_padding_bottom","Panel Padding Bottom", "int")
		// ModSettings_AddSetting("EntityStatus.panel_padding_left","Panel Padding Left", "int")

		AddModCategory(Localize("#PM_PILOT_HEALTH") + Localize("#SETTING_BAR"))


		ModSettings_AddAlphaSetting("EntityStatus.avatar_alpha",
		Localize("#SETTING_AVATAR")
		+ Localize("#SETTING_ALPHA") )

		ModSettings_AddAlphaSetting("EntityStatus.health_bar_label_alpha",
		Localize("#SETTING_HEALTH_LABEL")
		+ Localize("#SETTING_ALPHA") )

		ModSettings_AddAlphaSetting("EntityStatus.money_label_alpha",
		Localize("#SETTING_MONEY_LABEL")
		+ Localize("#SETTING_ALPHA") )

		ModSettings_AddSetting("EntityStatus.bar_tall",
		Localize("#SETTING_BAR")
		+ Localize("#SETTING_HEIGHT"),
		 "int")
		ModSettings_AddSetting("EntityStatus.bar_wide",
		Localize("#SETTING_BAR")
		+ Localize("#SETTING_WIDTH"),
		 "int")
		ModSettings_AddSetting("EntityStatus.bar_gap",
		Localize("#SETTING_BAR")
		+ Localize("#SETTING_GAP"),
		 "int")

		AddModCategory(Localize("#PM_PILOT_HEALTH")+ Localize("#SETTING_COLOR"))

		// ModSettings_AddColorPicker( "EntityStatus.health_common_fgcolor", "#HUD_DEFAULT_COLORS_OPTION" )
		ModSettings_AddColorSetting("EntityStatus.health_common_fgcolor","#HUD_DEFAULT_COLORS_OPTION")
		ModSettings_AddColorSetting("EntityStatus.health_local_fgcolor","#HUD_LOCAL_COLORS_OPTION")
		ModSettings_AddColorSetting("EntityStatus.health_party_fgcolor","#HUD_PARTY_COLORS_OPTION")
		ModSettings_AddColorSetting("EntityStatus.health_doom_fgcolor",
		Localize("#SCORE_EVENT_DOOMED_TITAN")
		+ Localize("#KNB_MENU_HEADER_PROGRESSION")
		+ Localize("#SETTING_COLOR"))
		ModSettings_AddColorSetting("EntityStatus.health_shield_fgcolor",
		Localize("#TITANCORE_SHIELD_SHORT")
		+ Localize("#KNB_MENU_HEADER_PROGRESSION")
		+Localize("#SETTING_COLOR"))


		AddModCategory(Localize("#TITAN_CORE_CONTROLS"))
		ModSettings_AddAlphaSetting("EntityStatus.core_label_alpha","#SETTING_ALPHA" )
		ModSettings_AddColorSetting("EntityStatus.core_label_core_building_fgcolor",
		Localize("#HUD_TITAN_CORE_CHARGING")
		 + Localize("#KNB_MENU_HEADER_PROGRESSION")
		 + Localize("#SETTING_COLOR") )
		 ModSettings_AddColorSetting("EntityStatus.core_label_core_ready_fgcolor",
		Localize("#CORE_READY")
		+ Localize("#KNB_MENU_HEADER_PROGRESSION")
		+ Localize("#SETTING_COLOR") )
		ModSettings_AddColorSetting("EntityStatus.core_label_titan_building_fgcolor",
		Localize("#KNB_MENU_HEADER_TITANS")
		+ Localize("#KNB_MENU_HEADER_PROGRESSION")
		+ Localize("#SETTING_COLOR") )

		ModSettings_AddAlphaSetting("EntityStatus.core_progress_alpha",
		Localize("#KNB_MENU_HEADER_TITANS")
		+ Localize("#KNB_MENU_HEADER_PROGRESSION")
		+ Localize("#SETTING_TEXT")
		+ Localize("#SETTING_ALPHA") )
		ModSettings_AddColorSetting("EntityStatus.core_progress_fgcolor",
		Localize("#KNB_MENU_HEADER_TITANS")
		+ Localize("#KNB_MENU_HEADER_PROGRESSION")
		+ Localize("#SETTING_TEXT")
		+ Localize("#SETTING_COLOR") )
}

void function InitModSettings()
{
	AddModTitle("Entity Status" + Localize("#ENTITY_STATUS"))

	AddModCategory("#MAIN_PANEL")

	ModSettings_AddSetting("EntityStatus.panel_alpha", Localize("#MAIN_PANEL")
	+ Localize("#SETTING_ALPHA"))
	ModSettings_AddSetting("EntityStatus.panel_position","#SETTING_POSITION", "vector")


	ModSettings_AddSetting("EntityStatus.title_content", Localize("#TITLE")+ "(可能無法正常顯示中文符號)")
	ModSettings_AddSetting("EntityStatus.title_alpha", Localize("#TITLE")
	+ Localize("#SETTING_ALPHA") )

	// ModSettings_AddSetting("EntityStatus.panel_bgcolor","#SETTING_COLOR", "vector")
	// ModSettings_AddSliderSetting("EntityStatus.panel_rotation","#SETTING_ROTATION", 0, 90.0, 0.05)

	// AddModCategory("Panel Padding")
	// ModSettings_AddSetting("EntityStatus.panel_padding_top","Panel Padding Top", "int")
	// ModSettings_AddSetting("EntityStatus.panel_padding_right","Panel Padding Right", "int")
	// ModSettings_AddSetting("EntityStatus.panel_padding_bottom","Panel Padding Bottom", "int")
	// ModSettings_AddSetting("EntityStatus.panel_padding_left","Panel Padding Left", "int")

	AddModCategory(Localize("#PM_PILOT_HEALTH") + Localize("#SETTING_BAR"))


	ModSettings_AddSetting("EntityStatus.avatar_alpha",
	Localize("#SETTING_AVATAR")
	+ Localize("#SETTING_ALPHA") )

	ModSettings_AddSetting("EntityStatus.health_bar_label_alpha",
	Localize("#SETTING_HEALTH_LABEL")
	+ Localize("#SETTING_ALPHA") )

	ModSettings_AddSetting("EntityStatus.money_label_alpha",
	Localize("#SETTING_MONEY_LABEL")
	+ Localize("#SETTING_ALPHA") )

	ModSettings_AddSetting("EntityStatus.bar_tall",
	Localize("#SETTING_BAR")
	+ Localize("#SETTING_HEIGHT"),
	 "int")
	ModSettings_AddSetting("EntityStatus.bar_wide",
	Localize("#SETTING_BAR")
	+ Localize("#SETTING_WIDTH"),
	 "int")
	ModSettings_AddSetting("EntityStatus.bar_gap",
	Localize("#SETTING_BAR")
	+ Localize("#SETTING_GAP"),
	 "int")

	AddModCategory(Localize("#PM_PILOT_HEALTH")+ Localize("#SETTING_COLOR"))

	// ModSettings_AddColorPicker( "EntityStatus.health_common_fgcolor", "#HUD_DEFAULT_COLORS_OPTION" )
	ModSettings_AddSetting("EntityStatus.health_common_fgcolor","#HUD_DEFAULT_COLORS_OPTION")
	ModSettings_AddSetting("EntityStatus.health_local_fgcolor","#HUD_LOCAL_COLORS_OPTION")
	ModSettings_AddSetting("EntityStatus.health_party_fgcolor","#HUD_PARTY_COLORS_OPTION")
	ModSettings_AddSetting("EntityStatus.health_doom_fgcolor",
	Localize("#SCORE_EVENT_DOOMED_TITAN")
	+ Localize("#KNB_MENU_HEADER_PROGRESSION")
	+ Localize("#SETTING_COLOR"))
	ModSettings_AddSetting("EntityStatus.health_shield_fgcolor",
	Localize("#TITANCORE_SHIELD_SHORT")
	+ Localize("#KNB_MENU_HEADER_PROGRESSION")
	+Localize("#SETTING_COLOR"))


	// ModSettings_AddSetting("EntityStatus.health_common_fgcolor","#HUD_DEFAULT_COLORS_OPTION", "vector")
	// ModSettings_AddSetting("EntityStatus.health_local_fgcolor","#HUD_LOCAL_COLORS_OPTION", "vector")
	// ModSettings_AddSetting("EntityStatus.health_party_fgcolor","#HUD_PARTY_COLORS_OPTION", "vector")
	// ModSettings_AddSetting("EntityStatus.health_doom_fgcolor",
	// Localize("#SCORE_EVENT_DOOMED_TITAN")
	// + Localize("#KNB_MENU_HEADER_PROGRESSION")
	// + Localize("#SETTING_COLOR")
	// , "vector")
	// ModSettings_AddSetting("EntityStatus.health_shield_fgcolor",
	// Localize("#TITANCORE_SHIELD_SHORT")
	// + Localize("#KNB_MENU_HEADER_PROGRESSION")
	// +Localize("#SETTING_COLOR")
	// , "vector")

	AddModCategory(Localize("#TITAN_CORE_CONTROLS"))
	ModSettings_AddSetting("EntityStatus.core_label_alpha","#SETTING_ALPHA" )
	ModSettings_AddSetting("EntityStatus.core_label_core_building_fgcolor",
	Localize("#HUD_TITAN_CORE_CHARGING")
	 + Localize("#KNB_MENU_HEADER_PROGRESSION")
	 + Localize("#SETTING_COLOR") )
	 ModSettings_AddSetting("EntityStatus.core_label_core_ready_fgcolor",
	Localize("#CORE_READY")
	+ Localize("#KNB_MENU_HEADER_PROGRESSION")
	+ Localize("#SETTING_COLOR") )
	ModSettings_AddSetting("EntityStatus.core_label_titan_building_fgcolor",
	Localize("#KNB_MENU_HEADER_TITANS")
	+ Localize("#KNB_MENU_HEADER_PROGRESSION")
	+ Localize("#SETTING_COLOR") )

	ModSettings_AddSetting("EntityStatus.core_progress_alpha",
	Localize("#KNB_MENU_HEADER_TITANS")
	+ Localize("#KNB_MENU_HEADER_PROGRESSION")
	+ Localize("#SETTING_TEXT")
	+ Localize("#SETTING_ALPHA") )
	ModSettings_AddSetting("EntityStatus.core_progress_fgcolor",
	Localize("#KNB_MENU_HEADER_TITANS")
	+ Localize("#KNB_MENU_HEADER_PROGRESSION")
	+ Localize("#SETTING_TEXT")
	+ Localize("#SETTING_COLOR") )
}
#endif
