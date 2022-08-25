local status, lspkind = pcall(require, "lspkind")
if (not status) then return end

lspkind.init({
    mode = "text_symbol",
})
