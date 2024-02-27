function button(P, PX, PY, x, y, w, h)
    return (P and PX >= x and PX < x + w and PY >= y and PY < y + h)
end
