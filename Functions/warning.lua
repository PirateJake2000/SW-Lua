function warning(x, y, w, h, triangleWidth)
    screen.setColor(0, 0, 0)
    screen.drawRectF(x, y, w, h)

    -- trangles
    local traingles = math.floor(w / triangleWidth) / 2
    screen.setColor(255, 140, 0)

    for i = 1, traingles do
        local a = x + i * triangleWidth + (i - 1) * triangleWidth + 1
        local b = a + triangleWidth
        local c = a - triangleWidth
        local d = a

        screen.drawTriangleF(a, y, b, y, c, y + h)
        screen.drawTriangleF(d, y + h, b, y, c, y + h)
    end
end
