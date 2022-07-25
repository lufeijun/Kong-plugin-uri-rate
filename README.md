# kong-uri-rate

kong 的插件，启用时，只有指定的 uri 可以通过请求，其他所有 uri 均返回失败


# 安装方法

```
cd /var/www/Kong-plugin-uri-rate
git pull origin master
luarocks make

# 重启kong
systemctl reload kong.service

```

# kong 说明

### 代码

kong 是构建在 openresty 和 nginx 之上的，使用 lua 语言编写的代码程序。通过 yum 安装 kong 之后，源码位于 ```/usr/local/share/lua/5.1/kong``` 路径下，由于 luajit 技术，因此在修改 lua 源码之后，需要重新加载程序才能生效。即 ```systemctl reload kong.service``` 


### 插件

在 /usr/local/share/lua/5.1/kong 目录下有个 plugins 文件夹，里边存放了所有插件的 lua 源代码

### luarocks make

本质上是将代码复制到 plugins 目录下


# rockspec 文件说明

### 1、文件名

```
package-version.rockspec
```

### 2、安装路径

* 如果没有指定，luarocks path 结果中 LUA_PATH 参数


### 参考
https://segmentfault.com/a/1190000017176952


