-- workspaces

-- scratchpad
hl.workspace_rule({ workspace = "special:keepass", on_created_empty = "keepassxc %f" })
hl.workspace_rule({ workspace = "special:element", on_created_empty = "element-desktop" })
hl.workspace_rule({ workspace = "special:mail", on_created_empty = "thunderbird" })
hl.workspace_rule({ workspace = "special:obsidian", on_created_empty = "obsidian" })
hl.workspace_rule({ workspace = "special:discord", on_created_empty = "flatpak run dev.vencord.Vesktop" })
hl.workspace_rule({ workspace = "special:thunar", on_created_empty = "thunar" })
hl.workspace_rule({ workspace = "special:localsend", on_created_empty = "flatpak run org.localsend.localsend_app" })
hl.workspace_rule({ workspace = "special:sound", on_created_empty = "helvum" })
