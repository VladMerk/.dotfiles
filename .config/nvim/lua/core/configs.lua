
-- Basic settings
vim.g.did_load_filetypes = 1
vim.g.formatoptions = "qrn1"
vim.opt.showmode = false
vim.opt.updatetime = 100
vim.wo.signcolumn = "yes"
vim.opt.wrap = false
vim.wo.linebreak = true
vim.opt.virtualedit = "block"
vim.opt.undofile = true
vim.opt.shell = "/bin/zsh"            -- Shell по умолчанию
vim.opt.swapfile = false               -- Отключить swap файлы nvim
vim.opt.encoding = "utf-8"             -- Кодировка utf-8
vim.opt.cursorline = true              -- Выделять активную строку где находится курсор
vim.opt.modifiable = true
vim.opt.write = true


-- Nvim Tree
-- добавить когда буду настраивать

-- Scroll
vim.opt.so = 30

-- Search
vim.opt.ignorecase = true              -- Игнорировать регистр при поиске
vim.opt.smartcase = true               -- Не игнорирует регистр если в паттерне есть большие буквы
vim.opt.hlsearch = true                -- Подсвечивает найденный паттерн
vim.opt.incsearch = true 

-- Mouse
vim.opt.mouse = "a"                    -- Возможность использовать мышку
vim.opt.mousefocus = true

-- Line Numbers
vim.opt.number = true                  -- Показывает номера строк
vim.opt.relativenumber = true          -- Показывает расстояние к нужной строке относительно нашей позиции
vim.wo.number = true                   -- Показывает номера строк
vim.wo.relativenumber = true           -- Показывает расстояние к нужной строке относительно нашей позиции

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"      -- Разрешить общий буфер обмена

-- Shorter messages
vim.opt.shortmess:append("c")

-- Indent Settings
vim.opt.expandtab = true               -- Превратить все tab в пробелы
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true             -- Копировать отступ на новой строке
vim.opt.cindent = true                 -- Автоотступы
vim.opt.smarttab = true                -- Tab перед строкой вставит shiftwidht количество табов

-- Fillchars
vim.opt.fillchars = {
    vert = "│",
    fold = "⠀",
    eob = " ", -- suppress ~ at EndOfBuffer
    -- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
    msgsep = "‾",
    foldopen = "▾",
    foldsep = "│",
    foldclose = "▸"
}


