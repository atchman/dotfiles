-- animation
--

-- animation curves
-- https://www.cssportal.com/css-cubic-bezier-generator/
-- animation configs

hl.config({
  animations = { enabled = true },
})

hl.curve( "cubic-bezier", { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.05} } } )
hl.animation({ leaf = "windows", enabled = true, speed = 7,  curve = "cubic-bezier", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1, bezier = "default", style = "popin 80%" })
hl.animation({ leaf = "border", enabled = true, speed = 10, curve = "default", })
hl.animation({ leaf = "fade", enabled = true, speed =  0.0000001, curve = "default" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 6, bezier = "default" , style = "slide" })
