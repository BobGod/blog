/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 23/05/2020 14:35:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for me_article
-- ----------------------------
DROP TABLE IF EXISTS `me_article`;
CREATE TABLE `me_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_counts` int(11) NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `summary` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `view_counts` int(11) NULL DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `author_id` bigint(20) NULL DEFAULT NULL,
  `body_id` bigint(20) NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKndx2m69302cso79y66yxiju4h`(`author_id`) USING BTREE,
  INDEX `FKrd11pjsmueckfrh9gs7bc6374`(`body_id`) USING BTREE,
  INDEX `FKjrn3ua4xmiulp8raj7m9d2xk6`(`category_id`) USING BTREE,
  CONSTRAINT `FKjrn3ua4xmiulp8raj7m9d2xk6` FOREIGN KEY (`category_id`) REFERENCES `me_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKndx2m69302cso79y66yxiju4h` FOREIGN KEY (`author_id`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKrd11pjsmueckfrh9gs7bc6374` FOREIGN KEY (`body_id`) REFERENCES `me_article_body` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of me_article
-- ----------------------------
INSERT INTO `me_article` VALUES (1, 2, '2018-01-31 13:16:16', 'Vue构建前台页面过程1Vue构建前台页面过程2Vue构建前台页面过程3Vue构建前台页面过程4Vue构建前台页面过程5Vue构建前台页面过程6Vue构建前台页面过程7Vue构建前台页面过程8', 'Vue构建前台页面Vue构建前台页面Vue构建前台页面Vue构建前台页面', 56, 0, 1, 1, 1);
INSERT INTO `me_article` VALUES (9, 0, '2018-02-01 14:37:23', 'Vue (读音 /vjuː/，类似于 view) 是一套用于构建用户界面的渐进式框架。', 'Vue.js 是什么', 3, 0, 1, 20, 1);
INSERT INTO `me_article` VALUES (10, 0, '2018-02-01 14:47:19', '本节将介绍如何在项目中使用 Element。', 'Element相关', 3, 0, 1, 21, 1);

-- ----------------------------
-- Table structure for me_article_body
-- ----------------------------
DROP TABLE IF EXISTS `me_article_body`;
CREATE TABLE `me_article_body`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `content_html` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of me_article_body
-- ----------------------------
INSERT INTO `me_article_body` VALUES (1, '## 2018-01-04\n\n```\n# 使用vue的Webpack模板生成脚手架\n```\n\n## 2018-01-05\n\n```\n# 引入ElementUI\n\n# babel-plugin-component自定义主题\n# 首页\n# 登陆页\n# 注册页面\n# 日志页\n```\n## 2018-01-07\n\n```\n# 调整底部栏始终固定在底部\n# 日志页 添加时间轴\n# 首页的文章列表\n```\n## 2018-01-08\n\n```\n# 使用组件-博客作者tab页 \n# 添加第三方图标\n```\n\n## 2018-01-09\n\n```\n# 调整顶部导航栏：激活文字颜色，click点击\n# 组件-最新文章tab页\n\n# 最新文章、最热文章使用相同组件\n# 底部栏设计\n# 页面与两边边距改为100\n```\n\n## 2018-01-10\n\n```\n# 写博客 引入mavonEditor编辑器\n# 顶部导航栏都放入一个Menu中\n# 写文章页面\n#　mavonEditor局部引入\n\n#　页面的中间区域固定宽度，自动居中\n# 发布和取消\n# 发布dialog\n\n```\n## 2018-01-11\n\n```\n# 文章组件用守卫来改变body背景色\n# 调整登陆和注册页面，使其居中\n\n#子页面调整根元素为div\n#文章详情页\n\n```\n## 2018-01-12\n\n```\n# 文章详情页  内容  评论等\n\n```\n## 2018-01-13\n\n```\n## 重新调整页面结构	\n#顶部和底部 抽成  BaseHeader BaseFooter 组件\n#BlogView为单独页，以前是Home的子路由\n\n```\n## 2018-01-15\n\n``` \n# 文章分类去掉子级\n# 将首页的文章列表抽成 ArticleItem组件\n# 增加文章的评论展示\n# 增加文章分类、标签页\n\n```\n\n## 2018-01-15  2\n\n``` \n# 回到顶部去掉过渡动画（影响顶部导航栏）\n# 顶部导航栏 增加登录后菜单\n# 首页增加 最热标签\n# 增加 文章分类 标签的详情页\n# 将文章详情页、 文章分类标签页 改为Home的子路由（以前单独页）\n# Home组件增加路由判断：更正导航栏的状态、条件显示底部栏\n\n```\n\n## 2018-01-16\n\n``` \n# 将写文章的顶部Header合并到BaseHeader中\n# 图片都放到了static目录下\n\n```\n\n## 2018-01-24\n\n``` \n# 将自定义的theme放到assets下\n# 加入axios\n# 加入vuex\n# 实现登录\n# 实现退出\n\n```\n\n## 2018-01-25\n\n``` \n# 实现注册逻辑\n# 写文章功能实现\n# 写文章时支持插入图片\n\n```\n## 2018-01-26\n\n``` \n# 引入lodash工具类\n# 优化写文章的工具栏：滚动时固定顶部\n# 写文章 后台获取文章分类和标签\n\n# 首页的文章列表\n\n```\n\n## 2018-01-27\n\n``` \n# 修改首页文章列表的样式\n# 首页加载文章功能\n# 文章查看功能\n# 文章分类和标签功能列表\n\n```\n\n## 2018-01-28\n\n``` \n# 文章分类和标签详情\n\n```\n\n## 2018-01-29\n\n``` \n# 文章分类和标签的文章数\n# 首页最热文章\n# 首页最新文章\n# 首页最热标签\n\n```\n## 2018-01-30\n\n``` \n# BaseHeader放回views中\n# 修改Axios后置拦截，全局处理错误\n# 将登录 退出 和头像 放到一起\n\n```', '<h2>2018-01-04</h2>\n<pre><code class=\"lang-\"># 使用vue的Webpack模板生成脚手架\n</code></pre>\n<h2>2018-01-05</h2>\n<pre><code class=\"lang-\"># 引入ElementUI\n\n# babel-plugin-component自定义主题\n# 首页\n# 登陆页\n# 注册页面\n# 日志页\n</code></pre>\n<h2>2018-01-07</h2>\n<pre><code class=\"lang-\"># 调整底部栏始终固定在底部\n# 日志页 添加时间轴\n# 首页的文章列表\n</code></pre>\n<h2>2018-01-08</h2>\n<pre><code class=\"lang-\"># 使用组件-博客作者tab页 \n# 添加第三方图标\n</code></pre>\n<h2>2018-01-09</h2>\n<pre><code class=\"lang-\"># 调整顶部导航栏：激活文字颜色，click点击\n# 组件-最新文章tab页\n\n# 最新文章、最热文章使用相同组件\n# 底部栏设计\n# 页面与两边边距改为100\n</code></pre>\n<h2>2018-01-10</h2>\n<pre><code class=\"lang-\"># 写博客 引入mavonEditor编辑器\n# 顶部导航栏都放入一个Menu中\n# 写文章页面\n#　mavonEditor局部引入\n\n#　页面的中间区域固定宽度，自动居中\n# 发布和取消\n# 发布dialog\n\n</code></pre>\n<h2>2018-01-11</h2>\n<pre><code class=\"lang-\"># 文章组件用守卫来改变body背景色\n# 调整登陆和注册页面，使其居中\n\n#子页面调整根元素为div\n#文章详情页\n\n</code></pre>\n<h2>2018-01-12</h2>\n<pre><code class=\"lang-\"># 文章详情页  内容  评论等\n\n</code></pre>\n<h2>2018-01-13</h2>\n<pre><code class=\"lang-\">## 重新调整页面结构	\n#顶部和底部 抽成  BaseHeader BaseFooter 组件\n#BlogView为单独页，以前是Home的子路由\n\n</code></pre>\n<h2>2018-01-15</h2>\n<pre><code class=\"lang-\"># 文章分类去掉子级\n# 将首页的文章列表抽成 ArticleItem组件\n# 增加文章的评论展示\n# 增加文章分类、标签页\n\n</code></pre>\n<h2>2018-01-15  2</h2>\n<pre><code class=\"lang-\"># 回到顶部去掉过渡动画（影响顶部导航栏）\n# 顶部导航栏 增加登录后菜单\n# 首页增加 最热标签\n# 增加 文章分类 标签的详情页\n# 将文章详情页、 文章分类标签页 改为Home的子路由（以前单独页）\n# Home组件增加路由判断：更正导航栏的状态、条件显示底部栏\n\n</code></pre>\n<h2>2018-01-16</h2>\n<pre><code class=\"lang-\"># 将写文章的顶部Header合并到BaseHeader中\n# 图片都放到了static目录下\n\n</code></pre>\n<h2>2018-01-24</h2>\n<pre><code class=\"lang-\"># 将自定义的theme放到assets下\n# 加入axios\n# 加入vuex\n# 实现登录\n# 实现退出\n\n</code></pre>\n<h2>2018-01-25</h2>\n<pre><code class=\"lang-\"># 实现注册逻辑\n# 写文章功能实现\n# 写文章时支持插入图片\n\n</code></pre>\n<h2>2018-01-26</h2>\n<pre><code class=\"lang-\"># 引入lodash工具类\n# 优化写文章的工具栏：滚动时固定顶部\n# 写文章 后台获取文章分类和标签\n\n# 首页的文章列表\n\n</code></pre>\n<h2>2018-01-27</h2>\n<pre><code class=\"lang-\"># 修改首页文章列表的样式\n# 首页加载文章功能\n# 文章查看功能\n# 文章分类和标签功能列表\n\n</code></pre>\n<h2>2018-01-28</h2>\n<pre><code class=\"lang-\"># 文章分类和标签详情\n\n</code></pre>\n<h2>2018-01-29</h2>\n<pre><code class=\"lang-\"># 文章分类和标签的文章数\n# 首页最热文章\n# 首页最新文章\n# 首页最热标签\n\n</code></pre>\n<h2>2018-01-30</h2>\n<pre><code class=\"lang-\"># BaseHeader放回views中\n# 修改Axios后置拦截，全局处理错误\n# 将登录 退出 和头像 放到一起\n\n</code></pre>\n');
INSERT INTO `me_article_body` VALUES (20, 'Vue (读音 /vjuː/，类似于 view) 是一套用于构建用户界面的渐进式框架。与其它大型框架不同的是，Vue 被设计为可以自底向上逐层应用。Vue 的核心库只关注视图层，不仅易于上手，还便于与第三方库或既有项目整合。另一方面，当与现代化的工具链以及各种支持类库结合使用时，Vue 也完全能够为复杂的单页应用提供驱动。\n\n如果你想在深入学习 Vue 之前对它有更多了解，我们制作了一个视频，带您了解其核心概念和一个示例工程。\n如果你已经是有经验的前端开发者，想知道 Vue 与其它库/框架有哪些区别，请查看对比其它框架。\n\n# 起步\n\n> 官方指南假设你已了解关于 HTML、CSS 和 JavaScript 的中级知识。如果你刚开始学习前端开发，将框架作为你的第一步可能不是最好的主意——掌握好基础知识再来吧！之前有其它框架的使用经验会有帮助，但这不是必需的。\n\n尝试 Vue.js 最简单的方法是使用 JSFiddle 上的 Hello World 例子。你可以在浏览器新标签页中打开它，跟着例子学习一些基础用法。或者你也可以创建一个 .html 文件，然后通过如下方式引入 Vue：\n\n```javascript\n<script src=\"https://cdn.jsdelivr.net/npm/vue\"></script>\n\n```\n安装教程给出了更多安装 Vue 的方式。请注意我们不推荐新手直接使用 vue-cli，尤其是在你还不熟悉基于 Node.js 的构建工具时。\n\n# 声明式渲染\nVue.js 的核心是一个允许采用简洁的模板语法来声明式地将数据渲染进 DOM 的系统：\n```javascript\n<div id=\"app\">\n  {{ message }}\n</div>\n\n```\n```javascript\nvar app = new Vue({\n  el: \'#app\',\n  data: {\n    message: \'Hello Vue!\'\n  }\n})\n\n```\n我们已经成功创建了第一个 Vue 应用！看起来这跟渲染一个字符串模板非常类似，但是 Vue 在背后做了大量工作。现在数据和 DOM 已经被建立了关联，所有东西都是响应式的。我们要怎么确认呢？打开你的浏览器的 JavaScript 控制台 (就在这个页面打开)，并修改 app.message 的值，你将看到上例相应地更新。\n\n除了文本插值，我们还可以像这样来绑定元素特性：\n\n\n\n\n\n\n', '<p>Vue (读音 /vjuː/，类似于 view) 是一套用于构建用户界面的渐进式框架。与其它大型框架不同的是，Vue 被设计为可以自底向上逐层应用。Vue 的核心库只关注视图层，不仅易于上手，还便于与第三方库或既有项目整合。另一方面，当与现代化的工具链以及各种支持类库结合使用时，Vue 也完全能够为复杂的单页应用提供驱动。</p>\n<p>如果你想在深入学习 Vue 之前对它有更多了解，我们制作了一个视频，带您了解其核心概念和一个示例工程。<br />\n如果你已经是有经验的前端开发者，想知道 Vue 与其它库/框架有哪些区别，请查看对比其它框架。</p>\n<h1>起步</h1>\n<blockquote>\n<p>官方指南假设你已了解关于 HTML、CSS 和 JavaScript 的中级知识。如果你刚开始学习前端开发，将框架作为你的第一步可能不是最好的主意——掌握好基础知识再来吧！之前有其它框架的使用经验会有帮助，但这不是必需的。</p>\n</blockquote>\n<p>尝试 Vue.js 最简单的方法是使用 JSFiddle 上的 Hello World 例子。你可以在浏览器新标签页中打开它，跟着例子学习一些基础用法。或者你也可以创建一个 .html 文件，然后通过如下方式引入 Vue：</p>\n<pre><div class=\"hljs\"><code class=\"lang-javascript\">&lt;script src=<span class=\"hljs-string\">\"https://cdn.jsdelivr.net/npm/vue\"</span>&gt;<span class=\"xml\"><span class=\"hljs-tag\">&lt;/<span class=\"hljs-name\">script</span>&gt;</span></span>\n\n</code></div></pre>\n<p>安装教程给出了更多安装 Vue 的方式。请注意我们不推荐新手直接使用 vue-cli，尤其是在你还不熟悉基于 Node.js 的构建工具时。</p>\n<h1>声明式渲染</h1>\n<p>Vue.js 的核心是一个允许采用简洁的模板语法来声明式地将数据渲染进 DOM 的系统：</p>\n<pre><div class=\"hljs\"><code class=\"lang-javascript\">&lt;div id=<span class=\"hljs-string\">\"app\"</span>&gt;\n  {{ message }}\n&lt;<span class=\"hljs-regexp\">/div&gt;\n\n</span></code></div></pre>\n<pre><div class=\"hljs\"><code class=\"lang-javascript\"><span class=\"hljs-keyword\">var</span> app = <span class=\"hljs-keyword\">new</span> Vue({\n  <span class=\"hljs-attr\">el</span>: <span class=\"hljs-string\">\'#app\'</span>,\n  <span class=\"hljs-attr\">data</span>: {\n    <span class=\"hljs-attr\">message</span>: <span class=\"hljs-string\">\'Hello Vue!\'</span>\n  }\n})\n\n</code></div></pre>\n<p>我们已经成功创建了第一个 Vue 应用！看起来这跟渲染一个字符串模板非常类似，但是 Vue 在背后做了大量工作。现在数据和 DOM 已经被建立了关联，所有东西都是响应式的。我们要怎么确认呢？打开你的浏览器的 JavaScript 控制台 (就在这个页面打开)，并修改 app.message 的值，你将看到上例相应地更新。</p>\n<p>除了文本插值，我们还可以像这样来绑定元素特性：</p>\n');
INSERT INTO `me_article_body` VALUES (21, '## 快速上手\n\n本节将介绍如何在项目中使用 Element。\n\n### 使用 Starter Kit\n我们提供了通用的项目模板，你可以直接使用。对于 Laravel 用户，我们也准备了相应的模板，同样可以直接下载使用。\n\n如果不希望使用我们提供的模板，请继续阅读。\n\n### 使用 vue-cli\n\n我们还可以使用 vue-cli 初始化项目，命令如下：\n\n```language\n> npm i -g vue-cli\n> mkdir my-project && cd my-project\n> vue init webpack\n> npm i && npm i element-ui\n```\n\n### 引入 Element\n你可以引入整个 Element，或是根据需要仅引入部分组件。我们先介绍如何引入完整的 Element。\n\n#### 完整引入\n在 main.js 中写入以下内容：\n```javascript\nimport Vue from \'vue\'\nimport ElementUI from \'element-ui\'\nimport \'element-ui/lib/theme-chalk/index.css\'\nimport App from \'./App.vue\'\n\nVue.use(ElementUI)\n\nnew Vue({\n  el: \'#app\',\n  render: h => h(App)\n})\n\n```\n以上代码便完成了 Element 的引入。需要注意的是，样式文件需要单独引入。\n\n#### 按需引入\n借助 babel-plugin-component，我们可以只引入需要的组件，以达到减小项目体积的目的。\n\n首先，安装 babel-plugin-component：\n\n', '<h2>快速上手</h2>\n<p>本节将介绍如何在项目中使用 Element。</p>\n<h3>使用 Starter Kit</h3>\n<p>我们提供了通用的项目模板，你可以直接使用。对于 Laravel 用户，我们也准备了相应的模板，同样可以直接下载使用。</p>\n<p>如果不希望使用我们提供的模板，请继续阅读。</p>\n<h3>使用 vue-cli</h3>\n<p>我们还可以使用 vue-cli 初始化项目，命令如下：</p>\n<pre><code class=\"lang-language\">&gt; npm i -g vue-cli\n&gt; mkdir my-project &amp;&amp; cd my-project\n&gt; vue init webpack\n&gt; npm i &amp;&amp; npm i element-ui\n</code></pre>\n<h3>引入 Element</h3>\n<p>你可以引入整个 Element，或是根据需要仅引入部分组件。我们先介绍如何引入完整的 Element。</p>\n<h4>完整引入</h4>\n<p>在 main.js 中写入以下内容：</p>\n<pre><div class=\"hljs\"><code class=\"lang-javascript\"><span class=\"hljs-keyword\">import</span> Vue <span class=\"hljs-keyword\">from</span> <span class=\"hljs-string\">\'vue\'</span>\n<span class=\"hljs-keyword\">import</span> ElementUI <span class=\"hljs-keyword\">from</span> <span class=\"hljs-string\">\'element-ui\'</span>\n<span class=\"hljs-keyword\">import</span> <span class=\"hljs-string\">\'element-ui/lib/theme-chalk/index.css\'</span>\n<span class=\"hljs-keyword\">import</span> App <span class=\"hljs-keyword\">from</span> <span class=\"hljs-string\">\'./App.vue\'</span>\n\nVue.use(ElementUI)\n\n<span class=\"hljs-keyword\">new</span> Vue({\n  <span class=\"hljs-attr\">el</span>: <span class=\"hljs-string\">\'#app\'</span>,\n  <span class=\"hljs-attr\">render</span>: <span class=\"hljs-function\"><span class=\"hljs-params\">h</span> =&gt;</span> h(App)\n})\n\n</code></div></pre>\n<p>以上代码便完成了 Element 的引入。需要注意的是，样式文件需要单独引入。</p>\n<h4>按需引入</h4>\n<p>借助 babel-plugin-component，我们可以只引入需要的组件，以达到减小项目体积的目的。</p>\n<p>首先，安装 babel-plugin-component：</p>\n');

-- ----------------------------
-- Table structure for me_article_tag
-- ----------------------------
DROP TABLE IF EXISTS `me_article_tag`;
CREATE TABLE `me_article_tag`  (
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  INDEX `FK2s65pu9coxh7w16s8jycih79w`(`tag_id`) USING BTREE,
  INDEX `FKsmysra6pt3ehcvts18q2h4409`(`article_id`) USING BTREE,
  CONSTRAINT `FK2s65pu9coxh7w16s8jycih79w` FOREIGN KEY (`tag_id`) REFERENCES `me_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKsmysra6pt3ehcvts18q2h4409` FOREIGN KEY (`article_id`) REFERENCES `me_article` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of me_article_tag
-- ----------------------------
INSERT INTO `me_article_tag` VALUES (1, 7);
INSERT INTO `me_article_tag` VALUES (1, 5);
INSERT INTO `me_article_tag` VALUES (1, 8);
INSERT INTO `me_article_tag` VALUES (9, 7);
INSERT INTO `me_article_tag` VALUES (10, 7);
INSERT INTO `me_article_tag` VALUES (10, 8);
INSERT INTO `me_article_tag` VALUES (10, 5);
INSERT INTO `me_article_tag` VALUES (10, 6);

-- ----------------------------
-- Table structure for me_category
-- ----------------------------
DROP TABLE IF EXISTS `me_category`;
CREATE TABLE `me_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `categoryname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of me_category
-- ----------------------------
INSERT INTO `me_category` VALUES (1, '/static/category/front.png', '前端', NULL);
INSERT INTO `me_category` VALUES (2, '/static/category/back.png', '后端', NULL);
INSERT INTO `me_category` VALUES (3, '/static/category/lift.jpg', '生活', NULL);
INSERT INTO `me_category` VALUES (4, '/static/category/database.png', '数据库', NULL);
INSERT INTO `me_category` VALUES (5, '/static/category/language.png', '编程语言', NULL);

-- ----------------------------
-- Table structure for me_comment
-- ----------------------------
DROP TABLE IF EXISTS `me_comment`;
CREATE TABLE `me_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `article_id` int(11) NULL DEFAULT NULL,
  `author_id` bigint(20) NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  `to_uid` bigint(20) NULL DEFAULT NULL,
  `level` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKecq0fuo9k0lnmea6r01vfhiok`(`article_id`) USING BTREE,
  INDEX `FKkvuyh6ih7dt1rfqhwsjomsa6i`(`author_id`) USING BTREE,
  INDEX `FKaecafrcorkhyyp1luffinsfqs`(`parent_id`) USING BTREE,
  INDEX `FK73dgr23lbs3ebex5qvqyku308`(`to_uid`) USING BTREE,
  CONSTRAINT `FK73dgr23lbs3ebex5qvqyku308` FOREIGN KEY (`to_uid`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKaecafrcorkhyyp1luffinsfqs` FOREIGN KEY (`parent_id`) REFERENCES `me_comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKecq0fuo9k0lnmea6r01vfhiok` FOREIGN KEY (`article_id`) REFERENCES `me_article` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKkvuyh6ih7dt1rfqhwsjomsa6i` FOREIGN KEY (`author_id`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for me_tag
-- ----------------------------
DROP TABLE IF EXISTS `me_tag`;
CREATE TABLE `me_tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tagname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of me_tag
-- ----------------------------
INSERT INTO `me_tag` VALUES (1, '/static/tag/java.png', 'Java');
INSERT INTO `me_tag` VALUES (2, '/static/tag/spring.svg', 'Spring');
INSERT INTO `me_tag` VALUES (3, '/static/tag/hibernate.svg', 'Hibernate');
INSERT INTO `me_tag` VALUES (4, '/static/tag/maven.png', 'Maven');
INSERT INTO `me_tag` VALUES (5, '/static/tag/html.png', 'Html');
INSERT INTO `me_tag` VALUES (6, '/static/tag/js.png', 'JavaScript');
INSERT INTO `me_tag` VALUES (7, '/static/tag/vue.png', 'Vue');
INSERT INTO `me_tag` VALUES (8, '/static/tag/css.png', 'Css');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `module` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `nickname` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `operation` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `time` bigint(20) NULL DEFAULT NULL,
  `userid` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3421 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (3030, '2020-05-22 12:50:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', NULL, '获取当前登录用户', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3031, '2020-05-22 12:50:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3032, '2020-05-22 12:50:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3033, '2020-05-22 12:50:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 3, NULL);
INSERT INTO `sys_log` VALUES (3034, '2020-05-22 12:50:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3035, '2020-05-22 12:50:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3036, '2020-05-22 12:53:28', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', NULL, '获取所有标签，详细', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3037, '2020-05-22 12:53:28', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', NULL, '获取所有文章分类，详细', NULL, 8, NULL);
INSERT INTO `sys_log` VALUES (3038, '2020-05-22 12:53:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3039, '2020-05-22 12:53:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3040, '2020-05-22 12:53:45', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listTags()', '标签', NULL, '获取所有标签', NULL, 8, NULL);
INSERT INTO `sys_log` VALUES (3041, '2020-05-22 12:53:45', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorys()', '文章分类', NULL, '获取所有文章分类', NULL, 12, NULL);
INSERT INTO `sys_log` VALUES (3042, '2020-05-22 12:53:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3043, '2020-05-22 12:53:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3044, '2020-05-22 12:53:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3045, '2020-05-22 12:53:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 3, NULL);
INSERT INTO `sys_log` VALUES (3046, '2020-05-22 12:53:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3047, '2020-05-22 12:53:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3048, '2020-05-22 12:56:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', NULL, '获取所有标签，详细', NULL, 13, NULL);
INSERT INTO `sys_log` VALUES (3049, '2020-05-22 12:56:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', NULL, '获取所有文章分类，详细', NULL, 16, NULL);
INSERT INTO `sys_log` VALUES (3050, '2020-05-22 12:56:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3051, '2020-05-22 12:56:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3052, '2020-05-22 12:56:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3053, '2020-05-22 12:56:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3054, '2020-05-22 12:56:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3055, '2020-05-22 12:57:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 3, NULL);
INSERT INTO `sys_log` VALUES (3056, '2020-05-22 12:57:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3057, '2020-05-22 12:57:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3058, '2020-05-22 12:57:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3059, '2020-05-22 12:57:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3060, '2020-05-22 12:57:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3061, '2020-05-22 12:57:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3062, '2020-05-22 12:57:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3063, '2020-05-22 12:57:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3064, '2020-05-22 12:57:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3065, '2020-05-22 12:57:40', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3066, '2020-05-22 12:57:40', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3067, '2020-05-22 12:57:40', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3068, '2020-05-22 12:57:40', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3069, '2020-05-22 12:57:40', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3070, '2020-05-22 13:26:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 3, NULL);
INSERT INTO `sys_log` VALUES (3071, '2020-05-22 13:26:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 3, NULL);
INSERT INTO `sys_log` VALUES (3072, '2020-05-22 13:26:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3073, '2020-05-22 13:26:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3074, '2020-05-22 13:26:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3075, '2020-05-22 13:39:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3076, '2020-05-22 13:39:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3077, '2020-05-22 13:39:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3078, '2020-05-22 13:39:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3079, '2020-05-22 13:39:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3080, '2020-05-22 13:40:03', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 4, NULL);
INSERT INTO `sys_log` VALUES (3081, '2020-05-22 13:40:03', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 3, NULL);
INSERT INTO `sys_log` VALUES (3082, '2020-05-22 13:40:03', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3083, '2020-05-22 13:40:03', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3084, '2020-05-22 13:40:03', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3085, '2020-05-22 13:42:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3086, '2020-05-22 13:42:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3087, '2020-05-22 13:42:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3088, '2020-05-22 13:42:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3089, '2020-05-22 13:42:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 7, NULL);
INSERT INTO `sys_log` VALUES (3090, '2020-05-22 13:43:01', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3091, '2020-05-22 13:43:01', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3092, '2020-05-22 13:43:01', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3093, '2020-05-22 13:43:01', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3094, '2020-05-22 13:43:01', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3095, '2020-05-22 13:43:35', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3096, '2020-05-22 13:43:35', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3097, '2020-05-22 13:43:35', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3098, '2020-05-22 13:43:35', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3099, '2020-05-22 13:43:35', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3100, '2020-05-22 13:45:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3101, '2020-05-22 13:45:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3102, '2020-05-22 13:45:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3103, '2020-05-22 13:45:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3104, '2020-05-22 13:45:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3105, '2020-05-22 13:45:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3106, '2020-05-22 13:45:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3107, '2020-05-22 13:45:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3108, '2020-05-22 13:45:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3109, '2020-05-22 13:45:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3110, '2020-05-22 13:45:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3111, '2020-05-22 13:45:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3112, '2020-05-22 13:45:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3113, '2020-05-22 13:45:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3114, '2020-05-22 13:45:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3115, '2020-05-22 13:46:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3116, '2020-05-22 13:46:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3117, '2020-05-22 13:46:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3118, '2020-05-22 13:46:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 3, NULL);
INSERT INTO `sys_log` VALUES (3119, '2020-05-22 13:46:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 3, NULL);
INSERT INTO `sys_log` VALUES (3120, '2020-05-22 13:48:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3121, '2020-05-22 13:48:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3122, '2020-05-22 13:48:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3123, '2020-05-22 13:48:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3124, '2020-05-22 13:48:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3125, '2020-05-22 13:51:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 269, NULL);
INSERT INTO `sys_log` VALUES (3126, '2020-05-22 13:51:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 280, NULL);
INSERT INTO `sys_log` VALUES (3127, '2020-05-22 13:51:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 271, NULL);
INSERT INTO `sys_log` VALUES (3128, '2020-05-22 13:51:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 281, NULL);
INSERT INTO `sys_log` VALUES (3129, '2020-05-22 13:51:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 263, NULL);
INSERT INTO `sys_log` VALUES (3130, '2020-05-22 13:51:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3131, '2020-05-22 13:52:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3132, '2020-05-22 13:52:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3133, '2020-05-22 13:52:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3134, '2020-05-22 13:52:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 10, NULL);
INSERT INTO `sys_log` VALUES (3135, '2020-05-22 13:52:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 13, NULL);
INSERT INTO `sys_log` VALUES (3136, '2020-05-22 13:57:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 5, NULL);
INSERT INTO `sys_log` VALUES (3137, '2020-05-22 13:57:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 3, NULL);
INSERT INTO `sys_log` VALUES (3138, '2020-05-22 13:57:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 4, NULL);
INSERT INTO `sys_log` VALUES (3139, '2020-05-22 13:57:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 3, NULL);
INSERT INTO `sys_log` VALUES (3140, '2020-05-22 13:57:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3141, '2020-05-22 14:00:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3142, '2020-05-22 14:00:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3143, '2020-05-22 14:00:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3144, '2020-05-22 14:00:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3145, '2020-05-22 14:00:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 3, NULL);
INSERT INTO `sys_log` VALUES (3146, '2020-05-22 14:01:52', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3147, '2020-05-22 14:02:07', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3148, '2020-05-22 14:02:07', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3149, '2020-05-22 14:02:07', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3150, '2020-05-22 14:02:07', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3151, '2020-05-22 14:02:07', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3152, '2020-05-22 14:05:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3153, '2020-05-22 14:05:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3154, '2020-05-22 14:05:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 9, NULL);
INSERT INTO `sys_log` VALUES (3155, '2020-05-22 14:05:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 8, NULL);
INSERT INTO `sys_log` VALUES (3156, '2020-05-22 14:05:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 15, NULL);
INSERT INTO `sys_log` VALUES (3157, '2020-05-22 14:05:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3158, '2020-05-22 14:05:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3159, '2020-05-22 14:05:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3160, '2020-05-22 14:05:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3161, '2020-05-22 14:05:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3162, '2020-05-22 14:06:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 3, NULL);
INSERT INTO `sys_log` VALUES (3163, '2020-05-22 14:06:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 3, NULL);
INSERT INTO `sys_log` VALUES (3164, '2020-05-22 14:06:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3165, '2020-05-22 14:06:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3166, '2020-05-22 14:06:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3167, '2020-05-22 14:07:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3168, '2020-05-22 14:07:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3169, '2020-05-22 14:07:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3170, '2020-05-22 14:07:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3171, '2020-05-22 14:07:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3172, '2020-05-22 14:07:40', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3173, '2020-05-22 14:07:40', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3174, '2020-05-22 14:07:40', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3175, '2020-05-22 14:07:40', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3176, '2020-05-22 14:07:40', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3177, '2020-05-22 14:08:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3178, '2020-05-22 14:08:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3179, '2020-05-22 14:08:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3180, '2020-05-22 14:08:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3181, '2020-05-22 14:08:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3182, '2020-05-22 14:11:41', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 3, NULL);
INSERT INTO `sys_log` VALUES (3183, '2020-05-22 14:11:41', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3184, '2020-05-22 14:11:41', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3185, '2020-05-22 14:11:41', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 5, NULL);
INSERT INTO `sys_log` VALUES (3186, '2020-05-22 14:11:41', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3187, '2020-05-22 14:12:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3188, '2020-05-22 14:12:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3189, '2020-05-22 14:12:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 4, NULL);
INSERT INTO `sys_log` VALUES (3190, '2020-05-22 14:12:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3191, '2020-05-22 14:12:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3192, '2020-05-22 14:12:35', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 5, NULL);
INSERT INTO `sys_log` VALUES (3193, '2020-05-22 14:12:35', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3194, '2020-05-22 14:12:35', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 3, NULL);
INSERT INTO `sys_log` VALUES (3195, '2020-05-22 14:12:35', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3196, '2020-05-22 14:12:35', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3197, '2020-05-22 14:12:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3198, '2020-05-22 14:12:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3199, '2020-05-22 14:12:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3200, '2020-05-22 14:12:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3201, '2020-05-22 14:12:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3202, '2020-05-22 14:22:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3203, '2020-05-22 14:22:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 3, NULL);
INSERT INTO `sys_log` VALUES (3204, '2020-05-22 14:22:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 3, NULL);
INSERT INTO `sys_log` VALUES (3205, '2020-05-22 14:22:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 4, NULL);
INSERT INTO `sys_log` VALUES (3206, '2020-05-22 14:22:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 4, NULL);
INSERT INTO `sys_log` VALUES (3207, '2020-05-22 14:24:07', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3208, '2020-05-22 14:24:07', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3209, '2020-05-22 14:24:07', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3210, '2020-05-22 14:24:07', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3211, '2020-05-22 14:24:07', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3212, '2020-05-22 14:25:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3213, '2020-05-22 14:25:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3214, '2020-05-22 14:25:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3215, '2020-05-22 14:25:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3216, '2020-05-22 14:25:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3217, '2020-05-22 14:25:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3218, '2020-05-22 14:25:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3219, '2020-05-22 14:25:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3220, '2020-05-22 14:25:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3221, '2020-05-22 14:25:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3222, '2020-05-22 14:25:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3223, '2020-05-22 14:25:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3224, '2020-05-22 14:25:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3225, '2020-05-22 14:25:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3226, '2020-05-22 14:25:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3227, '2020-05-22 14:25:46', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3228, '2020-05-22 14:25:46', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3229, '2020-05-22 14:25:46', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3230, '2020-05-22 14:25:46', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3231, '2020-05-22 14:25:46', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3232, '2020-05-22 14:25:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', NULL, '登录', NULL, 64, NULL);
INSERT INTO `sys_log` VALUES (3233, '2020-05-22 14:25:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', NULL, '获取当前登录用户', NULL, 4, NULL);
INSERT INTO `sys_log` VALUES (3234, '2020-05-22 14:25:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3235, '2020-05-22 14:25:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3236, '2020-05-22 14:25:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3237, '2020-05-22 14:25:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3238, '2020-05-22 14:25:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3239, '2020-05-22 14:36:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', NULL, '获取当前登录用户', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3240, '2020-05-22 14:36:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3241, '2020-05-22 14:36:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3242, '2020-05-22 14:36:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3243, '2020-05-22 14:36:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3244, '2020-05-22 14:36:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3245, '2020-05-22 14:36:46', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', NULL, '获取当前登录用户', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3246, '2020-05-22 14:36:46', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3247, '2020-05-22 14:36:46', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 12, NULL);
INSERT INTO `sys_log` VALUES (3248, '2020-05-22 14:36:46', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 11, NULL);
INSERT INTO `sys_log` VALUES (3249, '2020-05-22 14:36:46', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 11, NULL);
INSERT INTO `sys_log` VALUES (3250, '2020-05-22 14:36:46', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3251, '2020-05-22 14:37:01', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', NULL, '获取当前登录用户', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3252, '2020-05-22 14:37:01', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3253, '2020-05-22 14:37:01', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3254, '2020-05-22 14:37:01', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3255, '2020-05-22 14:37:01', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3256, '2020-05-22 14:37:01', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3257, '2020-05-22 15:24:46', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', NULL, '获取当前登录用户', NULL, 3, NULL);
INSERT INTO `sys_log` VALUES (3258, '2020-05-22 15:24:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 5, NULL);
INSERT INTO `sys_log` VALUES (3259, '2020-05-22 15:24:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 4, NULL);
INSERT INTO `sys_log` VALUES (3260, '2020-05-22 15:24:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 3, NULL);
INSERT INTO `sys_log` VALUES (3261, '2020-05-22 15:24:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 3, NULL);
INSERT INTO `sys_log` VALUES (3262, '2020-05-22 15:24:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 4, NULL);
INSERT INTO `sys_log` VALUES (3263, '2020-05-22 15:26:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3264, '2020-05-22 15:26:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3265, '2020-05-22 15:26:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3266, '2020-05-22 15:26:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 3, NULL);
INSERT INTO `sys_log` VALUES (3267, '2020-05-22 15:26:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3268, '2020-05-22 15:26:28', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 4, NULL);
INSERT INTO `sys_log` VALUES (3269, '2020-05-22 15:26:28', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3270, '2020-05-22 15:26:28', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3271, '2020-05-22 15:26:28', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3272, '2020-05-22 15:26:28', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3273, '2020-05-22 15:26:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3274, '2020-05-22 15:26:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3275, '2020-05-22 15:26:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3276, '2020-05-22 15:26:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3277, '2020-05-22 15:26:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3278, '2020-05-22 15:27:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3279, '2020-05-22 15:27:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3280, '2020-05-22 15:27:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3281, '2020-05-22 15:27:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3282, '2020-05-22 15:27:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3283, '2020-05-22 15:27:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3284, '2020-05-22 15:27:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3285, '2020-05-22 15:27:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3286, '2020-05-22 15:27:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 0, NULL);
INSERT INTO `sys_log` VALUES (3287, '2020-05-22 15:27:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 7, NULL);
INSERT INTO `sys_log` VALUES (3288, '2020-05-22 15:27:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3289, '2020-05-22 15:27:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 0, NULL);
INSERT INTO `sys_log` VALUES (3290, '2020-05-22 15:27:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3291, '2020-05-22 15:27:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3292, '2020-05-22 15:27:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3293, '2020-05-22 15:32:05', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3294, '2020-05-22 15:32:05', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3295, '2020-05-22 15:32:05', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3296, '2020-05-22 15:32:05', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3297, '2020-05-22 15:32:05', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3298, '2020-05-22 15:32:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 1, NULL);
INSERT INTO `sys_log` VALUES (3299, '2020-05-23 13:41:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 400, NULL);
INSERT INTO `sys_log` VALUES (3300, '2020-05-23 13:47:55', '122.152.199.84', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 8, NULL);
INSERT INTO `sys_log` VALUES (3301, '2020-05-23 14:03:08', '60.169.46.81', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 0, NULL);
INSERT INTO `sys_log` VALUES (3302, '2020-05-23 14:06:21', '60.169.46.81', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 16, NULL);
INSERT INTO `sys_log` VALUES (3303, '2020-05-23 14:06:21', '60.169.46.81', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 94, NULL);
INSERT INTO `sys_log` VALUES (3304, '2020-05-23 14:06:21', '60.169.46.81', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 219, NULL);
INSERT INTO `sys_log` VALUES (3305, '2020-05-23 14:06:21', '60.169.46.81', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 531, NULL);
INSERT INTO `sys_log` VALUES (3306, '2020-05-23 14:06:22', '60.169.46.81', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 485, NULL);
INSERT INTO `sys_log` VALUES (3307, '2020-05-23 14:10:11', '60.169.46.81', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 63, NULL);
INSERT INTO `sys_log` VALUES (3308, '2020-05-23 14:10:11', '60.169.46.81', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 31, NULL);
INSERT INTO `sys_log` VALUES (3309, '2020-05-23 14:10:11', '60.169.46.81', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 46, NULL);
INSERT INTO `sys_log` VALUES (3310, '2020-05-23 14:10:11', '60.169.46.81', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 0, NULL);
INSERT INTO `sys_log` VALUES (3311, '2020-05-23 14:10:11', '60.169.46.81', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 31, NULL);
INSERT INTO `sys_log` VALUES (3312, '2020-05-23 14:10:23', '60.169.46.81', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 32, NULL);
INSERT INTO `sys_log` VALUES (3313, '2020-05-23 14:10:23', '60.169.46.81', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 32, NULL);
INSERT INTO `sys_log` VALUES (3314, '2020-05-23 14:10:23', '60.169.46.81', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 16, NULL);
INSERT INTO `sys_log` VALUES (3315, '2020-05-23 14:10:23', '60.169.46.81', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 16, NULL);
INSERT INTO `sys_log` VALUES (3316, '2020-05-23 14:10:23', '60.169.46.81', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 15, NULL);
INSERT INTO `sys_log` VALUES (3317, '2020-05-23 14:10:50', '60.169.46.81', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 47, NULL);
INSERT INTO `sys_log` VALUES (3318, '2020-05-23 14:10:50', '60.169.46.81', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 31, NULL);
INSERT INTO `sys_log` VALUES (3319, '2020-05-23 14:10:50', '60.169.46.81', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 16, NULL);
INSERT INTO `sys_log` VALUES (3320, '2020-05-23 14:10:50', '60.169.46.81', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 16, NULL);
INSERT INTO `sys_log` VALUES (3321, '2020-05-23 14:10:50', '60.169.46.81', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 47, NULL);
INSERT INTO `sys_log` VALUES (3322, '2020-05-23 14:11:47', '122.152.199.84', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 0, NULL);
INSERT INTO `sys_log` VALUES (3323, '2020-05-23 14:11:47', '122.152.199.84', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 0, NULL);
INSERT INTO `sys_log` VALUES (3324, '2020-05-23 14:11:47', '122.152.199.84', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 0, NULL);
INSERT INTO `sys_log` VALUES (3325, '2020-05-23 14:11:47', '122.152.199.84', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 16, NULL);
INSERT INTO `sys_log` VALUES (3326, '2020-05-23 14:11:47', '122.152.199.84', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 0, NULL);
INSERT INTO `sys_log` VALUES (3327, '2020-05-23 14:16:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 0, NULL);
INSERT INTO `sys_log` VALUES (3328, '2020-05-23 14:16:38', '127.0.0.1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 15, NULL);
INSERT INTO `sys_log` VALUES (3329, '2020-05-23 14:16:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 0, NULL);
INSERT INTO `sys_log` VALUES (3330, '2020-05-23 14:16:38', '127.0.0.1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 0, NULL);
INSERT INTO `sys_log` VALUES (3331, '2020-05-23 14:16:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 0, NULL);
INSERT INTO `sys_log` VALUES (3332, '2020-05-23 14:20:47', '127.0.0.1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 16, NULL);
INSERT INTO `sys_log` VALUES (3333, '2020-05-23 14:20:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 15, NULL);
INSERT INTO `sys_log` VALUES (3334, '2020-05-23 14:20:47', '127.0.0.1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 16, NULL);
INSERT INTO `sys_log` VALUES (3335, '2020-05-23 14:20:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 15, NULL);
INSERT INTO `sys_log` VALUES (3336, '2020-05-23 14:20:47', '127.0.0.1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 32, NULL);
INSERT INTO `sys_log` VALUES (3337, '2020-05-23 14:20:55', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', NULL, '获取所有文章分类，详细', NULL, 63, NULL);
INSERT INTO `sys_log` VALUES (3338, '2020-05-23 14:20:55', '127.0.0.1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', NULL, '获取所有标签，详细', NULL, 0, NULL);
INSERT INTO `sys_log` VALUES (3339, '2020-05-23 14:21:00', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 0, NULL);
INSERT INTO `sys_log` VALUES (3340, '2020-05-23 14:21:00', '127.0.0.1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 0, NULL);
INSERT INTO `sys_log` VALUES (3341, '2020-05-23 14:21:03', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', NULL, '获取所有标签，详细', NULL, 31, NULL);
INSERT INTO `sys_log` VALUES (3342, '2020-05-23 14:21:03', '127.0.0.1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', NULL, '获取所有文章分类，详细', NULL, 16, NULL);
INSERT INTO `sys_log` VALUES (3343, '2020-05-23 14:21:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 16, NULL);
INSERT INTO `sys_log` VALUES (3344, '2020-05-23 14:21:08', '127.0.0.1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 16, NULL);
INSERT INTO `sys_log` VALUES (3345, '2020-05-23 14:21:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 0, NULL);
INSERT INTO `sys_log` VALUES (3346, '2020-05-23 14:21:08', '127.0.0.1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 0, NULL);
INSERT INTO `sys_log` VALUES (3347, '2020-05-23 14:21:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 15, NULL);
INSERT INTO `sys_log` VALUES (3348, '2020-05-23 14:21:10', '127.0.0.1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 0, NULL);
INSERT INTO `sys_log` VALUES (3349, '2020-05-23 14:21:10', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 16, NULL);
INSERT INTO `sys_log` VALUES (3350, '2020-05-23 14:21:11', '127.0.0.1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', NULL, '获取所有文章分类，详细', NULL, 16, NULL);
INSERT INTO `sys_log` VALUES (3351, '2020-05-23 14:21:11', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', NULL, '获取所有标签，详细', NULL, 16, NULL);
INSERT INTO `sys_log` VALUES (3352, '2020-05-23 14:23:05', '127.0.0.1', 'com.shimh.controller.TagController.getTagDetail()', '标签', NULL, '根据id获取详细标签，文章数', NULL, 16, NULL);
INSERT INTO `sys_log` VALUES (3353, '2020-05-23 14:23:07', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 172, NULL);
INSERT INTO `sys_log` VALUES (3354, '2020-05-23 14:23:11', '127.0.0.1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', NULL, '获取所有标签，详细', NULL, 0, NULL);
INSERT INTO `sys_log` VALUES (3355, '2020-05-23 14:23:11', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', NULL, '获取所有文章分类，详细', NULL, 16, NULL);
INSERT INTO `sys_log` VALUES (3356, '2020-05-23 14:25:16', '127.0.0.1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', NULL, '获取所有文章分类，详细', NULL, 32, NULL);
INSERT INTO `sys_log` VALUES (3357, '2020-05-23 14:25:16', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', NULL, '获取所有标签，详细', NULL, 15, NULL);
INSERT INTO `sys_log` VALUES (3358, '2020-05-23 14:25:23', '127.0.0.1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', NULL, '获取所有文章分类，详细', NULL, 31, NULL);
INSERT INTO `sys_log` VALUES (3359, '2020-05-23 14:25:23', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', NULL, '获取所有标签，详细', NULL, 16, NULL);
INSERT INTO `sys_log` VALUES (3360, '2020-05-23 14:25:48', '127.0.0.1', 'com.shimh.controller.TagController.getTagDetail()', '标签', NULL, '根据id获取详细标签，文章数', NULL, 15, NULL);
INSERT INTO `sys_log` VALUES (3361, '2020-05-23 14:25:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 0, NULL);
INSERT INTO `sys_log` VALUES (3362, '2020-05-23 14:26:42', '127.0.0.1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 76, NULL);
INSERT INTO `sys_log` VALUES (3363, '2020-05-23 14:26:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 59, NULL);
INSERT INTO `sys_log` VALUES (3364, '2020-05-23 14:26:42', '127.0.0.1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 42, NULL);
INSERT INTO `sys_log` VALUES (3365, '2020-05-23 14:26:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 38, NULL);
INSERT INTO `sys_log` VALUES (3366, '2020-05-23 14:26:42', '127.0.0.1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 48, NULL);
INSERT INTO `sys_log` VALUES (3367, '2020-05-23 14:28:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.getTagDetail()', '标签', NULL, '根据id获取详细标签，文章数', NULL, 36, NULL);
INSERT INTO `sys_log` VALUES (3368, '2020-05-23 14:28:30', '127.0.0.1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 10, NULL);
INSERT INTO `sys_log` VALUES (3369, '2020-05-23 14:28:31', '127.0.0.1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', NULL, '获取所有标签，详细', NULL, 4, NULL);
INSERT INTO `sys_log` VALUES (3370, '2020-05-23 14:28:31', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', NULL, '获取所有文章分类，详细', NULL, 19, NULL);
INSERT INTO `sys_log` VALUES (3371, '2020-05-23 14:28:34', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', NULL, '获取所有标签，详细', NULL, 17, NULL);
INSERT INTO `sys_log` VALUES (3372, '2020-05-23 14:28:34', '127.0.0.1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', NULL, '获取所有文章分类，详细', NULL, 5, NULL);
INSERT INTO `sys_log` VALUES (3373, '2020-05-23 14:28:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', NULL, '获取所有标签，详细', NULL, 6, NULL);
INSERT INTO `sys_log` VALUES (3374, '2020-05-23 14:28:49', '127.0.0.1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', NULL, '获取所有文章分类，详细', NULL, 5, NULL);
INSERT INTO `sys_log` VALUES (3375, '2020-05-23 14:29:02', '127.0.0.1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', NULL, '获取所有文章分类，详细', NULL, 7, NULL);
INSERT INTO `sys_log` VALUES (3376, '2020-05-23 14:29:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', NULL, '获取所有标签，详细', NULL, 7, NULL);
INSERT INTO `sys_log` VALUES (3377, '2020-05-23 14:31:16', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', NULL, '获取所有文章分类，详细', NULL, 6, NULL);
INSERT INTO `sys_log` VALUES (3378, '2020-05-23 14:31:16', '127.0.0.1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', NULL, '获取所有标签，详细', NULL, 104, NULL);
INSERT INTO `sys_log` VALUES (3379, '2020-05-23 14:31:23', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', NULL, '获取所有标签，详细', NULL, 7, NULL);
INSERT INTO `sys_log` VALUES (3380, '2020-05-23 14:31:23', '127.0.0.1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', NULL, '获取所有文章分类，详细', NULL, 7, NULL);
INSERT INTO `sys_log` VALUES (3381, '2020-05-23 14:31:27', '127.0.0.1', 'com.shimh.controller.TagController.getTagDetail()', '标签', NULL, '根据id获取详细标签，文章数', NULL, 5, NULL);
INSERT INTO `sys_log` VALUES (3382, '2020-05-23 14:31:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 24, NULL);
INSERT INTO `sys_log` VALUES (3383, '2020-05-23 14:31:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', NULL, '获取所有文章分类，详细', NULL, 8, NULL);
INSERT INTO `sys_log` VALUES (3384, '2020-05-23 14:31:29', '127.0.0.1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', NULL, '获取所有标签，详细', NULL, 8, NULL);
INSERT INTO `sys_log` VALUES (3385, '2020-05-23 14:31:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 47, NULL);
INSERT INTO `sys_log` VALUES (3386, '2020-05-23 14:31:30', '127.0.0.1', 'com.shimh.controller.TagController.getTagDetail()', '标签', NULL, '根据id获取详细标签，文章数', NULL, 5, NULL);
INSERT INTO `sys_log` VALUES (3387, '2020-05-23 14:31:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', NULL, '获取所有文章分类，详细', NULL, 8, NULL);
INSERT INTO `sys_log` VALUES (3388, '2020-05-23 14:31:32', '127.0.0.1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', NULL, '获取所有标签，详细', NULL, 4, NULL);
INSERT INTO `sys_log` VALUES (3389, '2020-05-23 14:31:32', '127.0.0.1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 4, NULL);
INSERT INTO `sys_log` VALUES (3390, '2020-05-23 14:31:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 13, NULL);
INSERT INTO `sys_log` VALUES (3391, '2020-05-23 14:31:34', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 60, NULL);
INSERT INTO `sys_log` VALUES (3392, '2020-05-23 14:31:34', '127.0.0.1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3393, '2020-05-23 14:31:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 19, NULL);
INSERT INTO `sys_log` VALUES (3394, '2020-05-23 14:31:36', '127.0.0.1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 15, NULL);
INSERT INTO `sys_log` VALUES (3395, '2020-05-23 14:31:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 20, NULL);
INSERT INTO `sys_log` VALUES (3396, '2020-05-23 14:31:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 20, NULL);
INSERT INTO `sys_log` VALUES (3397, '2020-05-23 14:31:36', '127.0.0.1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 38, NULL);
INSERT INTO `sys_log` VALUES (3398, '2020-05-23 14:31:45', '127.0.0.1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', NULL, '根据id获取文章，添加阅读数', NULL, 728, NULL);
INSERT INTO `sys_log` VALUES (3399, '2020-05-23 14:31:45', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', NULL, '根据文章获取评论', NULL, 156, NULL);
INSERT INTO `sys_log` VALUES (3400, '2020-05-23 14:33:25', '127.0.0.1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', NULL, '根据id获取文章，添加阅读数', NULL, 20, NULL);
INSERT INTO `sys_log` VALUES (3401, '2020-05-23 14:33:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', NULL, '根据文章获取评论', NULL, 2, NULL);
INSERT INTO `sys_log` VALUES (3402, '2020-05-23 14:33:31', '127.0.0.1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 18, NULL);
INSERT INTO `sys_log` VALUES (3403, '2020-05-23 14:33:31', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 21, NULL);
INSERT INTO `sys_log` VALUES (3404, '2020-05-23 14:33:32', '127.0.0.1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', NULL, '获取所有标签，详细', NULL, 4, NULL);
INSERT INTO `sys_log` VALUES (3405, '2020-05-23 14:33:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', NULL, '获取所有文章分类，详细', NULL, 3, NULL);
INSERT INTO `sys_log` VALUES (3406, '2020-05-23 14:33:36', '127.0.0.1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 41, NULL);
INSERT INTO `sys_log` VALUES (3407, '2020-05-23 14:33:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 18, NULL);
INSERT INTO `sys_log` VALUES (3408, '2020-05-23 14:33:36', '127.0.0.1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 23, NULL);
INSERT INTO `sys_log` VALUES (3409, '2020-05-23 14:33:36', '127.0.0.1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 39, NULL);
INSERT INTO `sys_log` VALUES (3410, '2020-05-23 14:33:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 31, NULL);
INSERT INTO `sys_log` VALUES (3411, '2020-05-23 14:33:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', NULL, '获取所有标签，详细', NULL, 6, NULL);
INSERT INTO `sys_log` VALUES (3412, '2020-05-23 14:33:38', '127.0.0.1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', NULL, '获取所有文章分类，详细', NULL, 10, NULL);
INSERT INTO `sys_log` VALUES (3413, '2020-05-23 14:33:46', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 15, NULL);
INSERT INTO `sys_log` VALUES (3414, '2020-05-23 14:33:46', '127.0.0.1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 13, NULL);
INSERT INTO `sys_log` VALUES (3415, '2020-05-23 14:33:52', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', NULL, '获取最新文章', NULL, 21, NULL);
INSERT INTO `sys_log` VALUES (3416, '2020-05-23 14:33:52', '127.0.0.1', 'com.shimh.controller.ArticleController.listArchives()', '文章', NULL, '获取文章归档日期', NULL, 20, NULL);
INSERT INTO `sys_log` VALUES (3417, '2020-05-23 14:33:52', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 14, NULL);
INSERT INTO `sys_log` VALUES (3418, '2020-05-23 14:33:52', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', NULL, '获取最热文章', NULL, 27, NULL);
INSERT INTO `sys_log` VALUES (3419, '2020-05-23 14:33:52', '127.0.0.1', 'com.shimh.controller.TagController.listHotTags()', '标签', NULL, '获取最热标签', NULL, 27, NULL);
INSERT INTO `sys_log` VALUES (3420, '2020-05-23 14:33:56', '127.0.0.1', 'com.shimh.controller.ArticleController.listArticles()', '文章', NULL, '获取所有文章', NULL, 2, NULL);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin` bit(1) NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `deleted` bit(1) NULL DEFAULT NULL,
  `email` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_login` datetime(0) NULL DEFAULT NULL,
  `mobile_phone_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_awpog86ljqwb89aqa1c5gvdrd`(`account`) USING BTREE,
  UNIQUE INDEX `UK_ahtq5ew3v0kt1n7hf1sgp7p8l`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'zhengwei', b'1', '/static/user/admin.png', '2018-01-22 17:14:49', b'0', '443831225@qq.com', NULL, '18895393339', 'zhengwei', 'ba16858dd4583c26f32ab6adf33c64e0', '88cf8dc92041f29cfb53e8ecfd0787fd', 'normal');

SET FOREIGN_KEY_CHECKS = 1;
