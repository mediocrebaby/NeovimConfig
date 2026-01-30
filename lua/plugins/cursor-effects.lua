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
}
