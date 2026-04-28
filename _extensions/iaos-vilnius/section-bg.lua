-- Section divider slides: light background, dark title (no dark overlay)
function Header(el)
  if el.level == 1 and el.classes:includes("section") then
    el.classes = el.classes:filter(function(c) return c ~= "section" end)
    el.classes:insert("section-divider")
    return el
  end
end
