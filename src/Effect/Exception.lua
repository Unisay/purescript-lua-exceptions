return {
    showErrorImpl = function(err) return err end,
    error = function(msg) return msg end,
    errorWithCause = function(msg)
        return function(cause) return msg .. "\nCaused by: " .. cause end
    end,
    message = function(err) return err end,
    name = function(err) return err end,
    stackImpl = function()
        return function(nothing)
            return function() return nothing end
        end
    end,
    throwException = function(err) return function() error(err) end end,
    catchException = function(c)
        return function(t)
            return function()
                local ok, errorOrResult = pcall(t)
                if ok then
                    return errorOrResult
                else
                    return c(errorOrResult)
                end
            end
        end
    end
}
