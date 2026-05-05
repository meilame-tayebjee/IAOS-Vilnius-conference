-- Section divider slides: same background image as title slide
function Header(el)
  if el.level == 1 and el.classes:includes("section") then
    el.classes = el.classes:filter(function(c) return c ~= "section" end)
    el.classes:insert("section-divider")
    el.attributes["data-background-image"]    = "../_extensions/iaos-vilnius/images/bg-title.png"
    el.attributes["data-background-size"]     = "cover"
    el.attributes["data-background-position"] = "right center"
    return el
  end
end
