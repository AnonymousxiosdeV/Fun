CreateClientConVar( "cool_convar", "0", true, false )
CreateClientConVar( "sick_convar", "123", true, false )
CreateClientConVar( "epic_convar", "sample text", true, false )

hook.Add( "PopulateToolMenu", "AddonSettings", function()
	spawnmenu.AddToolMenuOption( "Options", "Quality Addons", "Sick_Addon_Options", "SICK ADDON OPTIONS", "", "", function( panel )
		panel:ClearControls()
		panel:CheckBox( "Look at this sexy check box", "cool_convar" )
		panel:NumSlider( "Check out this hot slider", "sick_convar", 0, 1000 )
		panel:TextEntry( "You get the idea", "epic_convar" )
	end )
end )