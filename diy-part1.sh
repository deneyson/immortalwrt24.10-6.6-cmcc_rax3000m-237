#!/bin/bash

# 修复作者源码中可能存在的 feeds 错误空链接
sed -i '/https:\/\/github.com\/\s*$/d' feeds.conf.default
sed -i 's|https://github.com/|https://github.com|g' feeds.conf.default 2>/dev/null || true

# 示例：如果你想顺便顺便添加点好用的第三方插件源，可以取消下面这行的注释（前面的#）：
# echo 'src-git small8 https://github.com' >> feeds.conf.default
