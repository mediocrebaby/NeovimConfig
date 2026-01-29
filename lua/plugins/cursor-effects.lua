return {
  -- 光标拖尾效果
  {
    "sphamba/smear-cursor.nvim",
    event = "VeryLazy",
    opts = {
      -- 刚度越低，拖尾越长越明显
      stiffness = 0.4,
      trailing_stiffness = 0.3,
      -- 阻尼越低，弹性越大（会有轻微回弹）
      damping = 0.8,
      -- 停止动画的距离阈值，越小动画越完整
      distance_stop_animating = 0.1,
      -- 相邻行之间也显示拖尾
      smear_between_neighbor_lines = true,
      -- 插入模式下也启用拖尾
      smear_insert_mode = true,
    },
  },

  -- 光标移动动画
  {
    "nvim-mini/mini.animate",
    event = "VeryLazy",
    opts = function()
      -- 不对鼠标滚动使用动画
      local mouse_scrolled = false
      for _, scroll in ipairs({ "Up", "Down" }) do
        local key = "<ScrollWheel" .. scroll .. ">"
        vim.keymap.set({ "", "i" }, key, function()
          mouse_scrolled = true
          return key
        end, { expr = true })
      end

      local animate = require("mini.animate")
      return {
        -- 光标移动动画
        cursor = {
          enable = true,
          timing = animate.gen_timing.linear({ duration = 80, unit = "total" }),
        },
        -- 滚动动画
        scroll = {
          enable = true,
          timing = animate.gen_timing.linear({ duration = 100, unit = "total" }),
          subscroll = animate.gen_subscroll.equal({
            predicate = function(total_scroll)
              if mouse_scrolled then
                mouse_scrolled = false
                return false
              end
              return total_scroll > 1
            end,
          }),
        },
        -- 窗口大小调整动画
        resize = {
          enable = true,
          timing = animate.gen_timing.linear({ duration = 80, unit = "total" }),
        },
        -- 窗口打开/关闭动画
        open = { enable = false }, -- 可能会影响性能，默认关闭
        close = { enable = false },
      }
    end,
  },
}
