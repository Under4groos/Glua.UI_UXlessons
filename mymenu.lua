
surface.CreateFont( "TheDefaultSettings", {
	font = "Arial",  
	extended = false,
	size = 25,
	weight = 500,

} )


local back_main_window = Color( 24,24,24 , 255 )

local DFrame = vgui.Create("DFrame")  
DFrame:SetPos(10, 10)  
DFrame:SetSize(700 , 500)  
DFrame:SetTitle("Derma Frame") 
DFrame:MakePopup() 
// draw.RoundedBox( number cornerRadius, number x, number y, number width, number height, table color )
function DFrame:Paint( w, h )
    draw.RoundedBox( 25, 0, 0, w, h,  back_main_window)
end


local back_button = Color( 83,83,83 , 255 )
local back_button_hover = Color( 43,43,43 , 255 )

local DermaButton = vgui.Create( "DButton", DFrame )  
DermaButton:SetText( "Say hi" )	
DermaButton:SetFont	("TheDefaultSettings")			 
DermaButton:SetPos( 10, 50 )					 
DermaButton:SetSize( 250, 30 )					 
DermaButton.DoClick = function()				 
	RunConsoleCommand( "say", "Hi" )			 
end
local _ishover = false
function DermaButton:Paint( w, h )
    draw.RoundedBox( 8, 0, 0, w, h,  self:IsHovered() and  back_button or  back_button_hover   )   
end

local DColorPalette = vgui.Create( "DColorPalette", DFrame )
DColorPalette:SetPos( 10, 100 )
DColorPalette:SetSize( 160, 50 )
DColorPalette.OnValueChanged = function( s, value )
    back_main_window = value

    DermaButton:SetText( table.ToString(value) )	
end