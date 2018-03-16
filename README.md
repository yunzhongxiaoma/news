# news
目录

1 系统组成	

2 登录模块	

  2.1用户注册	

  2.2用户登录	

  2.3用户信息管理	

3 新闻发布模块	

  3.1新闻创建	

  3.2新闻查询	

  3.3新闻浏览	

4 后台管理模块	




1 系统组成

“新闻发布系统”项目综合应用java语言基础语法、类和对象、静态web、MyEclipse集成开发环境、Tomcat、JSP、Servlet、JavaBean、JSTL&amp：EL\Struts2、Hibernate、JDBC和MySQL数据库等知识，定位为java变成、Web技术、框架应用（Struts2、Hibernate）、数据库编程（MySQL和JDBC），达到开发企业的项目要求。

新闻发布系统主要由以下3个模块组成：

  1.	登录模块：用户注册、用户登录、用户信息管理
	
  2.	新闻发布模块：新闻创建、新闻内容管理、新闻查询、新闻浏览
	
  3.	后台管理模块：新闻创建 、新闻删除、新闻分类管理、新闻内容修改。
	

2 登录模块

  2.1用户注册

  用户注册主要是用户进行账户注册，获得一个账号。用户注册需要填写自己的账号和密码进行注册。系统将通过数据库数据判断账号是否为有效账户，若有效测注册成功，可录入数据库。注册账号成功。

1.新用户则点击注册进入注册页面。

2.填写新的账号和密码，账号和密码不可为空。

3.输入合法的账号密码后，点击注册，跳转注册成功。

![](https://github.com/yunzhongxiaoma/news/raw/master/picture/register.png) 


  2.2用户登录

   用户登录主要是用户进行账号登录操作。用户登录时需要填写自己以及经注册过得账号和密码，数据库对已注册账号数据进行匹配，若为注册过的账号，则用户可登陆成功。

    1.	进入登录界面，已有账户则输入账号密码进行登录。
	
    2.	账号密码匹配则登录成功，跳转至个人中心界面。
	
    3.	新用户则点击注册进入注册页面，进行登录操作。

![](https://github.com/yunzhongxiaoma/news/raw/master/picture/login.png)


2.3用户信息管理

用户成功登录系统，进入界面之后，可在用户信息管理处，对自己的用户信息进行增加、删除、 修改等操作，对用户进行的有效操作，数据库将根据新的信息进行数据库数据的修改。注意的是，普通用户只可查看自己的用户信息，并修改，管理员可以查看他人的用户信息。

1.用户进入个人界面。

2.点击用户信息修改按钮

3.修改用户信息，点击完成。

4.修改成功。
![](https://github.com/yunzhongxiaoma/news/raw/master/picture/houTai.png)
![](https://github.com/yunzhongxiaoma/news/raw/master/picture/houTaiUser.jpg)
 

3 新闻发布模块

 3.1新闻创建

新闻创建是所有用户可以实现的。

1.在用户成功登录系统之后，进入创建新闻模块即可创建自己的新闻。

2.创建新闻时必须填写新闻标题、新闻类别、新闻来源、作者、创建时间、新闻内容、关键字等信息。

3.完成新闻内容的填写之后，发布即可。

![](https://github.com/yunzhongxiaoma/news/raw/master/picture/houTaiAddNews.jpg)

 
3.3新闻浏览

 1.点击进入，浏览内容。
 ![](https://github.com/yunzhongxiaoma/news/raw/master/picture/index.jpg)
 ![](https://github.com/yunzhongxiaoma/news/raw/master/picture/queryNews.jpg)
 

4 后台管理模块

管理员可删改新闻
 ![](https://github.com/yunzhongxiaoma/news/raw/master/picture/houTaiNews.jpg)

 


