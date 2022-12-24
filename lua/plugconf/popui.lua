PRequire('popui.ui-overrider', function(ui_overrider)
    vim.ui.select = ui_overrider
end)

PRequire('popui.input-overrider', function(input_overrider)
    vim.ui.input = input_overrider
end)
