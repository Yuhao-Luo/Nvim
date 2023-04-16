require'nvim-tree'.setup {
    -- 关闭文件时，自动关闭
    -- auto_close = true,
    
    -- filters = {
    --     -- 不显示 .git 目录中的内容
    --     custom = {
    --         ".git/"
    --     },
    --     -- 显示 .gitignore
    --     exclude = {
    --         ".gitignore"
    --     },
    --     -- 不显示隐藏文件
    --     dotfiles = true
    -- },
    -- 不显示 git 状态图标
    git = {
        enable = false
    }
}


-- nvim-tree 可以执行常见的 创建 、删除、拷贝、剪切 文件等操作

-- o 打开关闭文件夹
-- a 创建文件
-- r 重命名
-- x 剪切
-- c 拷贝
-- p 粘贴
-- d 删除
