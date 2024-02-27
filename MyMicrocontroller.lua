---@section __LB_SIMULATOR_ONLY__
do
    ---@type Simulator -- Set properties and screen sizes here - will run once when the script is loaded
    simulator = simulator
    simulator:setScreen(1, "3x2")

    -- Runs every tick just before onTick; allows you to simulate the inputs changing
    ---@param simulator Simulator Use simulator:<function>() to set inputs etc.
    ---@param ticks     number Number of ticks since simulator started
    function onLBSimulatorTick(simulator, ticks)
        -- touchscreen defaults
        local screenConnection = simulator:getTouchScreen(1)
        simulator:setInputBool(1, screenConnection.isTouched)
        simulator:setInputNumber(1, screenConnection.width)
        simulator:setInputNumber(2, screenConnection.height)
        simulator:setInputNumber(3, screenConnection.touchX)
        simulator:setInputNumber(4, screenConnection.touchY)
    end;
end
---@endsection

require("Functions.warning")
require("Functions.customFont")
require("Functions.button")


--[====[ IN-GAME CODE ]====]


function onTick()
    p, w, h, px, py = input.getBool(1) and not held, input.getNumber(1), input.getNumber(2), input.getNumber(3),
        input.getNumber(4)
    held = input.getBool(1)
end

function onDraw()
    warning(0, 0, w, 4, 4)
    warning(0, h - 4, w, 4, 4)

    screen.setColor(20, 20, 20)
    screen.drawRectF(0, 4, w, h - 8)
end
