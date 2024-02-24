


local pos_x = 10;
local pos_y = 10;

local W,H = ScrW() , ScrH()
local own = LocalPlayer()

local HPLocalPl = 0
hook.Add( "HUDPaint", "asd,12o391i23-o120ojk391ui29", function()


    HPLocalPl = own:Health()
   // 0 - 100

    draw.RoundedBox( 0, 
    pos_x, H - 200, 
    100, 30, 
    Color( 33,33,33 , 240 ) )


    draw.RoundedBox( 0, 
    pos_x, H - 195, 
    HPLocalPl, 20, 
    Color( 255,0,0 , 100 ) )

    draw.DrawText( HPLocalPl , "TargetID", pos_x + 40, H - 195, color_white, TEXT_ALIGN_CENTER )

   
end )