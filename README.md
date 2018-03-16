# news
1 系统组成	2
2 登录模块	3
  2.1用户注册	3
  2.2用户登录	3
  2.3用户信息管理	4
3 新闻发布模块	5
  3.1新闻创建	5
  3.2新闻查询	5
  3.3新闻浏览	6
4 后台管理模块	8
  4.1新闻创建	8
  4.2新闻删除	8
  4.3新闻内容修改	9
4.4新闻分类管理	10

1 系统组成
市面上有各类新闻系统，有的独立成为一个网站，有的成为网站某个频道。目前待开发新闻系统主要是独立网站，提供新闻信息为主，并有新闻系统后台管理功能。其主要功能有：供用户发布新闻，游客浏览新闻。用于登录后，进入新闻管理后台，可创建新闻内容，查询新闻，浏览新闻信息等。
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
 
  2.2用户登录
     用户登录主要是用户进行账号登录操作。用户登录时需要填写自己以及经注册过得账号和密码，数据库对已注册账号数据进行匹配，若为注册过的账号，则用户可登陆成功。
    1.	进入登录界面，已有账户则输入账号密码进行登录。
    2.	账号密码匹配则登录成功，跳转至个人中心界面。
    3.	新用户则点击注册进入注册页面，进行登录操作。

  2.3用户信息管理
  用户成功登录系统，进入界面之后，可在用户信息管理处，对自己的用户信息进行增加、删除、 修改等操作，对用户进行的有效操作，数据库将根据新的信息进行数据库数据的修改。注意的是，普通用户只可查看自己的用户信息，并修改，管理员可以查看他人的用户信息。
    1.用户进入个人界面。
    2.点击用户信息修改按钮
    3.修改用户信息，点击完成。
    4.修改成功。
 
3 新闻发布模块
 3.1新闻创建
新闻创建是所有用户可以实现的。
  1.在用户成功登录系统之后，进入创建新闻模块即可创建自己的新闻。
  2.创建新闻时必须填写新闻标题、新闻类别、新闻来源、作者、创建时间、新闻内容、关键字等信息。
  3.完成新闻内容的填写之后，发布即可创建项目。

 
  3.2新闻查询
  在用户成功登录系统之后，可以通过关键字、新闻标题、新闻内容、 新闻关键字等信息来查询特定的一条新闻，系统将显示所有满足条件的新闻，用户可以查找到想要查询的新闻。
    1.用户登录，进入首页。
    2.点击查询，搜索查找内容，页面跳转至符合查找界面，显示符合关键字的新闻。
    3.点击浏览，完成查找。
 
 

  3.3新闻浏览
  在用户想要查看新闻的时候，点击导航栏内的新闻类别，即可查看该类别下的最新新闻。点击想要浏览的新闻，即可浏览该新闻。
    1.用户登录如主页，点击导航栏内的新闻类别。
    2.跳转至该类别新闻。
    3.点击进入，浏览内容。

4 后台管理模块
  4.1新闻创建 
     管理员登录后可以进行新闻的创建，对于管理员创建的新闻，只有管理员可以进行操作。
    1.管理员进入管理界面，点击创建新闻。
    2.填写新闻分类管理新闻标题、新闻类别、新闻来源、作者、创建时间、新闻内容、关键字等信息。注意不能为空。
    3.若填写为有效信息，则创建成功。

  4.2新闻删除
     对于普通用户创建的新闻，管理员也具有删除的权限。
    1.管理员进入管理界面，对普通用户的新闻进行搜索。
    2.不符合要求的新闻内容，管理员点击删除按钮。
    3.完成删除。
  4.3新闻内容修改
     新闻内容发布以后，管理员可以进行审核。对于不符合要求的或者内容出现错误的新闻，可以进行内容修改操作。
    1.管理员进入管理界面。
    2.搜索相关新闻，不符合要求或内容错误的新闻，点击修改。
    3.填写修改内容。点击发布。
    4.发布成功。
 
