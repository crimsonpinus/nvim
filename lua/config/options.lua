local opt = vim.opt

-- tab/indent
opt.tabstop = 4
opt.shiftwidth = 4 --기본공백
opt.softtabstop = 4 --삽입 space 수
opt.expandtab = true --tab 공백 치한
opt.smartindent = true --자동 들여쓰기
opt.wrap = false --긴줄 두줄 나눔

-- search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- visual
opt.number = true
opt.relativenumber = true --상대적 라인표시
opt.termguicolors = true --256색상 지원
opt.signcolumn = "yes"

-- etc
opt.encoding = "UTF-8"
opt.cmdheight = 1
opt.scrolloff = 10 --스크롤시 10줄 공백 유지
opt.mouse:append("a") -- 마우스 입력 허용
