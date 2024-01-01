--[[
    Jake (PirateJake2000)

    This file is used to provide intellisense for vscode.

    https://github.com/PirateJake2000
--]]

---@diagnostic disable: lowercase-global
---@diagnostic disable: missing-return
---@diagnostic disable: duplicate-set-field

_G.input = {}
_G.output = {}
_G.property = {}
_G.screen = {}
_G.map = {}
_G.async = {}

------------------------------------------------------------------------------------------------------------------------
-- [ Input, Output ] --
------------------------------------------------------------------------------------------------------------------------

---Gets a boolean value from the input channel.
---@param channel number The channel to get the value from ranging from 1-32.
---@return boolean value
function input.getBool(channel) end

---Gets a number value from the input channel.
---@param channel number The channel to get the value from ranging from 1-32.
---@return number value
function input.getNumber(channel) end

---Sets a boolean value to the output channel.
---@param channel number The channel to set the value to ranging from 1-32.
---@param value boolean The value to set the channel to.
function output.setBool(channel, value) end

---Sets a number value to the output channel.
---@param channel number The channel to set the value to ranging from 1-32.
---@param value number The value to set the channel to.
function output.setNumber(channel, value) end

------------------------------------------------------------------------------------------------------------------------
-- [ Property ] --
------------------------------------------------------------------------------------------------------------------------

---Gets a number value from the property channel.
---@param label string The name of the property value.
---@return number value
function property.getNumber(label) end

---Gets a boolean value from the property channel.
---@param label string The name of the property value.
---@return boolean value
function property.getBool(label) end

---Gets a string value from the property channel.
---@param label string The name of the property value.
---@return string value
function property.getText(label) end

------------------------------------------------------------------------------------------------------------------------
-- [ Drawing ] --
------------------------------------------------------------------------------------------------------------------------

--- Sets the color for drawing on the screen.
---@param r number The red component of the color (0-255).
---@param g number The green component of the color (0-255).
---@param b number The blue component of the color (0-255).
function screen.setColor(r, g, b) end

--- Sets the color with alpha (opacity) transparency for drawing on the screen.
---@param r number The red component of the color (0-255).
---@param g number The green component of the color (0-255).
---@param b number The blue component of the color (0-255).
---@param a number The alpha (opacity) component of the color (0-255).
function screen.setColor(r, g, b, a) end

--- Clears the screen.
function screen.drawClear() end

--- Draws a line on the screen.
---@param x1 number The x-coordinate of the starting point.
---@param y1 number The y-coordinate of the starting point.
---@param x2 number The x-coordinate of the ending point.
---@param y2 number The y-coordinate of the ending point.
function screen.drawLine(x1, y1, x2, y2) end

--- Draws a circle on the screen.
---@param x number The x-coordinate of the center of the circle.
---@param y number The y-coordinate of the center of the circle.
---@param radius number The radius of the circle.
function screen.drawCircle(x, y, radius) end

--- Draws a filled circle on the screen.
---@param x number The x-coordinate of the center of the circle.
---@param y number The y-coordinate of the center of the circle.
---@param radius number The radius of the circle.
function screen.drawCircleF(x, y, radius) end

--- Draws a rectangle on the screen.
---@param x number The x-coordinate of the top-left corner of the rectangle.
---@param y number The y-coordinate of the top-left corner of the rectangle.
---@param width number The width of the rectangle.
---@param height number The height of the rectangle.
function screen.drawRect(x, y, width, height) end

--- Draws a filled rectangle on the screen.
---@param x number The x-coordinate of the top-left corner of the rectangle.
---@param y number The y-coordinate of the top-left corner of the rectangle.
---@param width number The width of the rectangle.
---@param height number The height of the rectangle.
function screen.drawRectF(x, y, width, height) end

--- Draws a triangle on the screen.
---@param x1 number The x-coordinate of the first point.
---@param y1 number The y-coordinate of the first point.
---@param x2 number The x-coordinate of the second point.
---@param y2 number The y-coordinate of the second point.
---@param x3 number The x-coordinate of the third point.
---@param y3 number The y-coordinate of the third point.
function screen.drawTriangle(x1, y1, x2, y2, x3, y3) end

--- Draws a filled triangle on the screen.
---@param x1 number The x-coordinate of the first point.
---@param y1 number The y-coordinate of the first point.
---@param x2 number The x-coordinate of the second point.
---@param y2 number The y-coordinate of the second point.
---@param x3 number The x-coordinate of the third point.
---@param y3 number The y-coordinate of the third point.
function screen.drawTriangleF(x1, y1, x2, y2, x3, y3) end

--- Draws text on the screen.
---@param x number The x-coordinate of the starting point.
---@param y number The y-coordinate of the starting point.
---@param text string The text to be drawn.
function screen.drawText(x, y, text) end

--- Draws a text box on the screen.
---@param x number The x-coordinate of the top-left corner of the text box.
---@param y number The y-coordinate of the top-left corner of the text box.
---@param w number The width of the text box.
---@param h number The height of the text box.
---@param text string The text to be drawn.
---@param h_align number The horizontal alignment of the text (0 = center, -1 = left, 1 = right).
---@param v_align number The vertical alignment of the text (0 = center, -1 = left, 1 = right).
function screen.drawTextBox(x, y, w, h, text, h_align, v_align) end

--- Draws a map on the screen.
---@param x number The x-coordinate of the top-left corner of the map.
---@param y number The y-coordinate of the top-left corner of the map.
---@param zoom number The zoom level of the map.
function screen.drawMap(x, y, zoom) end

--- Sets the color for the ocean on the map.
---@param r number The red component of the color (0-255).
---@param g number The green component of the color (0-255).
---@param b number The blue component of the color (0-255).
---@param a number The alpha (opacity) component of the color (0-255).
function screen.setMapColorOcean(r, g, b, a) end

--- Sets the color for the shallows on the map.
---@param r number The red component of the color (0-255).
---@param g number The green component of the color (0-255).
---@param b number The blue component of the color (0-255).
---@param a number The alpha (opacity) component of the color (0-255).
function screen.setMapColorShallows(r, g, b, a) end

--- Sets the color for the land on the map.
---@param r number The red component of the color (0-255).
---@param g number The green component of the color (0-255).
---@param b number The blue component of the color (0-255).
---@param a number The alpha (opacity) component of the color (0-255).
function screen.setMapColorLand(r, g, b, a) end

--- Sets the color for the grass on the map.
---@param r number The red component of the color (0-255).
---@param g number The green component of the color (0-255).
---@param b number The blue component of the color (0-255).
---@param a number The alpha (opacity) component of the color (0-255).
function screen.setMapColorGrass(r, g, b, a) end

--- Sets the color for the sand on the map.
---@param r number The red component of the color (0-255).
---@param g number The green component of the color (0-255).
---@param b number The blue component of the color (0-255).
---@param a number The alpha (opacity) component of the color (0-255).
function screen.setMapColorSand(r, g, b, a) end

--- Sets the color for the snow on the map.
---@param r number The red component of the color (0-255).
---@param g number The green component of the color (0-255).
---@param b number The blue component of the color (0-255).
---@param a number The alpha (opacity) component of the color (0-255).
function screen.setMapColorSnow(r, g, b, a) end

--- Sets the color for the rock on the map.
---@param r number The red component of the color (0-255).
---@param g number The green component of the color (0-255).
---@param b number The blue component of the color (0-255).
---@param a number The alpha (opacity) component of the color (0-255).
function screen.setMapColorRock(r, g, b, a) end

--- Sets the color for the gravel on the map.
---@param r number The red component of the color (0-255).
---@param g number The green component of the color (0-255).
---@param b number The blue component of the color (0-255).
---@param a number The alpha (opacity) component of the color (0-255).
function screen.setMapColorGravel(r, g, b, a) end

--- Gets the width of the screen.
---@return number width of the screen.
function screen.getWidth() end

--- Gets the height of the screen.
---@return number height of the screen.
function screen.getHeight() end

------------------------------------------------------------------------------------------------------------------------
-- [ Map ] --
------------------------------------------------------------------------------------------------------------------------

--- Converts screen coordinates to map coordinates.
---@param mapX number The x-coordinate of the top-left corner of the map.
---@param mapY number The y-coordinate of the top-left corner of the map.
---@param zoom number The zoom level of the map.
---@param screenW number The width of the screen.
---@param screenH number The height of the screen.
---@param pixelX number The x-coordinate of the pixel on the screen.
---@param pixelY number The y-coordinate of the pixel on the screen.
---@return number worldX, number worldY
function screenToMap(mapX, mapY, zoom, screenW, screenH, pixelX, pixelY) end

--- Converts map coordinates to screen coordinates.
---@param mapX number The x-coordinate of the top-left corner of the map.
---@param mapY number The y-coordinate of the top-left corner of the map.
---@param zoom number The zoom level of the map.
---@param screenW number The width of the screen.
---@param screenH number The height of the screen.
---@param worldX number The x-coordinate of the point on the map.
---@param worldY number The y-coordinate of the point on the map.
---@return number pixelX, number pixelY
function mapToScreen(mapX, mapY, zoom, screenW, screenH, worldX, worldY) end

------------------------------------------------------------------------------------------------------------------------
-- [ Telemetry ] --
------------------------------------------------------------------------------------------------------------------------

--- Sends a http request to the specified port on your local network.
---@param port number The port to send the request to.
---@param request string The request to send (Must start with a "/") this can contain parameters.
function async.httpGet(port, request) end

------------------------------------------------------------------------------------------------------------------------
-- [ Callbacks ] --
------------------------------------------------------------------------------------------------------------------------

--- Runs every game tick.
function onTick() end

--- Used to draw on the screen.
function onDraw() end

--- Used to receive http requests made with async.httpGet.
---@param port number The port that the request was made to.
---@param request string The request that was made.
---@param response string The response to send back.
function httpReply(port, request, response) end
