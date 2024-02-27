drf = screen.drawRectF
pgt = property.getText
FONT =
"00019209B400AAAA793CA54A555690015244449415500BA0004903800009254956D4592EC54EC51C53A4F31C5354E52455545594104110490A201C7008A04504FFFE57DAD75C7246D6DCF34EF3487256B7DAE92E64D4975A924EBEDAF6DAF6DED74856B2D75A711CE924B6D4B6A4B6FAB55AB524E54ED24C911264965400000E"
FONT_D = {}
FONT_S = 0
for n in FONT:gmatch("....") do
    FONT_D[FONT_S + 1] = tonumber(n, 16)
    FONT_S = FONT_S + 1
end
function dst(x, y, t, s, r, m)
    s = s or 1
    r = r or 1
    if r > 2 then t = t:reverse() end
    t = t:upper()
    for c in t:gmatch(".") do
        ci = c:byte() - 31
        if 0 < ci and ci <= FONT_S then
            for i = 1, 15 do
                if r > 2 then p = 2 ^ i else p = 2 ^ (16 - i) end
                if FONT_D[ci] & p == p then
                    xx, yy = ((i - 1) % 3) * s, ((i - 1) // 3) * s
                    if r % 2 == 1 then drf(x + xx, y + yy, s, s) else drf(x + 5 - yy, y + xx, s, s) end
                end
            end
            if FONT_D[ci] & 1 == 1 and not m then
                i = 2 * s
            else
                i = 4 * s
            end
            if r % 2 == 1 then x = x + i else y = y + i end
        end
    end
end
