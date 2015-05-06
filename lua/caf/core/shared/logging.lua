--
-- Created by IntelliJ IDEA.
-- User: Rob Nelson
-- Date: 3/21/2015
-- Time: 12:45 PM
--

CAFLOG_DEBUG   = 0
CAFLOG_INFO    = 1
CAFLOG_WARNING = 2
CAFLOG_ERROR   = 3

CAFLog = {
    level=CAFLOG_DEBUG,
    indent=0,
}

function CAFLog.GetLevelName()
    if CAFLog.level == CAFLOG_DEBUG then
        return "DEBUG"
    end
    if CAFLog.level == CAFLOG_INFO then
        return "INFO"
    end
    if CAFLog.level == CAFLOG_WARNING then
        return "WARNING"
    end
    if CAFLog.level == CAFLOG_ERROR then
        return "ERROR"
    end
    return "Unknown ("..tostring(CAFLog.level)..")"
end

-- MsgN, for messages.
function CAFLog.Debug(message)
    if CAFLog.level <= CAFLOG_DEBUG then
        MsgN("CAF [DEBUG]: "..message)
    end
end

function CAFLog.Info(message)
    if CAFLog.level <= CAFLOG_INFO then
        MsgN("CAF [INFO]: "..message)
    end
end

function CAFLog.Warn(message)
    if CAFLog.level <= CAFLOG_WARNING then
        MsgN("CAF [WARNING]: "..message)
    end
end

function CAFLog.Error(message)
    if CAFLog.level <= CAFLOG_ERROR then
        ErrorNoHalt("CAF [ERROR]: "..message)
    end
end
