local obj = {}
obj.name = "AudioSwitcher"

local dellMonitorName = "Dell AW3821DW"
local jabraHeadphonesName = "Jabra Elite 10"
local fallbackDeviceName = "MacBook Pro Speakers"
local proxyDeviceName = "Proxy Audio Device"

local function getDeviceByName(name)
	for _, dev in ipairs(hs.audiodevice.allOutputDevices()) do
		local cleanedName = dev:name():match("^%s*(.-)%s*$")
		if cleanedName == name then
			return dev
		end
	end
	return nil
end

local function switchAudio()
	local currentOutput = hs.audiodevice.defaultOutputDevice()
	local currentOutputName = currentOutput:name()

	local dellMonitor = getDeviceByName(dellMonitorName)
	local jabraHeadphones = getDeviceByName(jabraHeadphonesName)
	local proxyDevice = getDeviceByName(proxyDeviceName)
	local fallbackDevice = getDeviceByName(fallbackDeviceName)

	if jabraHeadphones then
		if currentOutputName ~= jabraHeadphonesName then
			jabraHeadphones:setDefaultOutputDevice()
			hs.alert.show("Output → " .. jabraHeadphonesName)
		end
	elseif dellMonitor then
		if proxyDevice and currentOutputName ~= proxyDeviceName then
			proxyDevice:setDefaultOutputDevice()
			hs.alert.show("Output → " .. proxyDeviceName)
		elseif not proxyDevice then
			hs.alert.show("Warning: Dell connected but Proxy not found!")
		end
	else
		if fallbackDevice and currentOutputName ~= fallbackDeviceName then
			fallbackDevice:setDefaultOutputDevice()
			hs.alert.show("Output → " .. fallbackDeviceName)
		end
	end
end

function obj:init()
	hs.audiodevice.watcher.setCallback(switchAudio)
	hs.audiodevice.watcher.start()
	switchAudio()
end

function obj:stop()
	hs.audiodevice.watcher.stop()
	hs.audiodevice.watcher.setCallback(nil)
end

return obj
