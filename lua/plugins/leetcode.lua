return {
  "kawre/leetcode.nvim",
  build = ":TSUpdate html",
  cmd = "Leet",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim", -- telescope 所需
    "MunifTanjim/nui.nvim",
    "nvim-treesitter/nvim-treesitter",
    "rcarriga/nvim-notify",
  },
  opts = {
    -- 配置放在这里
    lang = "cpp",
    cn = { -- leetcode.cn
      enabled = true,
      translator = true,
      translate_problems = true,
    },
    injector = {
      ["cpp"] = {
        before = { "using namespace std;" },
        after = "int main() {}",
      },
      ["java"] = {
        before = "import java.util.*;",
      },
    },
    ---@type boolean
    image_support = false, -- 将此设置为 `true` 将禁用问题描述的换行
  },
}
