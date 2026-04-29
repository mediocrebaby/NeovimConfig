return {
  "sphamba/smear-cursor.nvim",
  opts = {
    -- 在切换缓冲区或窗口时涂抹光标
    smear_between_buffers = true,
    -- 在行内移动或相邻行移动时涂抹光标
    smear_between_neighbor_lines = true,
    -- 在滚动时在缓冲区空间而不是屏幕空间中绘制涂抹
    scroll_buffer_space = true,
    -- 如果你的字体支持传统计算符号，设置为 true
    legacy_computing_symbols_support = false,
    -- 在插入模式下涂抹光标
    smear_insert_mode = true,
  },
}
