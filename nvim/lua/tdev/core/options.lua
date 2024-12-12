local opt = vim.opt

-- hiển thị số dòng
opt.relativenumber = true
opt.number = true

-- tabs
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true -- chuyển tab thành khoảng trắng thay vì ký tự tab
opt.autoindent = true -- tự động thụt lề dòng

-- cho phép xuống dòng khi dòng dài quá màn hình
opt.wrap = true

-- search
opt.ignorecase = true -- không phân biệt chữ hoa/thường khi search
opt.smartcase = true -- nếu tìm kiếm có chữ hoa sẽ tự động chuyển sang tìm kiếm phân biệt chữ hoa/thường

opt.cursorline = true -- hightlight line mà con trỏ đang ở

opt.termguicolors = false -- bật chế độ màu 24-bit trong terminal, cần thiết để hiển thị màu sắc đầy đủ
opt.signcolumn = "yes" -- luôn hiển thị cột dấu bên trái, tránh việc văn bản bị dịch chuyển khi thêm dấu

-- cho phép phím backspace hoạt động trong các trường hợp như: xoá thụt lề, xoá ký tự cuối dùng, xoá từ vị trí bắt đầu của chế độ insert
opt.backspace = "indent,eol,start"

-- sử dụng clipboard hệ thống như thanh ghi mặc định, cho phép copy/paste giữa vim các ứng dụng khác
opt.clipboard:append("unnamedplus")

-- window
opt.splitright = true -- khi chia sửa sổ dọc, cửa sổ mới sẽ mở ở bên phải
opt.splitbelow = true -- khi chia sửa sổ ngang, cửa sổ mới sẽ ở bên dưới

opt.swapfile = false
