#import "/typ/book/lib.typ": *

#show: book

#let book-info = json("/meta.json")

#book-meta(
  title: "Typst Tutorial CN",
  description: "Typst中文教程",
  repository: "https://github.com/typst-doc-cn/tutorial",
  repository-edit: "https://github.com/typst-doc-cn/tutorial/edit/main/github-pages/docs/{path}",
  authors: book-info.contributors,
  language: "zh-cn",
  summary: [
    #prefix-chapter("introduction.typ")[导引]
    // 计划修改
    = 排版Ⅰ
    - #chapter("basic/writing-markup.typ")[初识标记模式]
    - #chapter("basic/writing-scripting.typ")[初识脚本模式]
    = 脚本Ⅰ
    - #chapter("basic/scripting-literal-and-variable.typ")[常量与变量]
    - #chapter("basic/scripting-block-and-expression.typ")[块与表达式]
    - #chapter("basic/scripting-scope-and-style.typ")[内容与样式]
    = 排版Ⅱ
    - #chapter("basic/scripting-length-and-layout.typ")[度量与布局]
    - #chapter("basic/scripting-shape-and-table.typ")[图形与表格]
    = 模块化
    - #chapter("basic/modulize-modules.typ")[模块]
    - #chapter("basic/modulize-packages.typ")[外部库]
    // - 多文件文档
    - #chapter("basic/modulize-multi-files-doc.typ")[多文件架构]
    // 5. 状态化排版
    // - 状态
    // - 计数器
    = 状态化
    - #chapter("intermediate/content-stateful.typ")[维护和查询文档状态]
    - #chapter("intermediate/content-stateful-2.typ")[查询文档状态 -- 制作页眉标题法一]
    - #chapter("intermediate/content-stateful-3.typ")[维护文档状态 -- 制作页眉标题法二]
    // 6. 排版Ⅲ
    // - #chapter("basic/writing-chinese.typ")[数学排版]
    - #chapter("basic/writing-chinese.typ")[中文排版]
    // 6. 脚本Ⅱ
    // - IO与数据处理
    // - 内置类型
    // - 数值计算
    // - WASM插件
    // 7. 排版Ⅱ
    // - 代码高亮
    // - 参考文献
    // - 文档大纲
    // 8. 科技排版
    // - 数学模式
    // - 数学公式和定理
    // - 物理公式
    // - 化学方程式
    // 9. 图表
    // - 立体几何
    // - 统计图
    // - 状态机
    // - 电路图
    // 10. 模板
    // 11. 参考Ⅰ
    // - 基本类型
    // - 内置类型
    // - 时间
    // - 高级颜色
    // - 长度单位
    // 12. 参考Ⅱ
    // - 图形
    = 基本参考
    - #chapter("basic/reference-typebase.typ")[基本类型]
    - #chapter("basic/reference-type-builtin.typ")[内置类型]
    - #chapter("basic/reference-date.typ")[时间类型]
    - #chapter("basic/reference-data-process.typ")[数据读写与数据处理]
    - #chapter("basic/reference-visualization.typ")[图形与几何元素]
    - #chapter("basic/reference-color.typ")[颜色、色彩渐变与模式]
    - #chapter("basic/reference-calculation.typ")[数值计算]
    - #chapter("basic/reference-math-mode.typ")[数学模式]
    - #chapter(none)[特殊Unicode字符]
    - #chapter("basic/reference-math-symbols.typ")[常用数学符号]
    - #chapter("basic/reference-wasm-plugin.typ")[WASM插件]
    - #chapter("basic/reference-bibliography.typ")[导入和使用参考文献]
    - #chapter("basic/reference-utils.typ")[常用函数表]
    - #chapter("basic/reference-grammar.typ")[语法示例检索表]
    = 进阶参考
    - #chapter("intermediate/reference-counter-state.typ")[计数器和状态]
    - #chapter("intermediate/reference-length.typ")[长度单位]
    - #chapter("intermediate/reference-layout.typ")[布局函数]
    - #chapter("intermediate/reference-table.typ")[表格]
    - #chapter("intermediate/reference-outline.typ")[文档大纲]
    - #chapter("intermediate/reference-grammar.typ")[语法示例检索表Ⅱ]
    = 专题
    - #chapter("topics/writing-math.typ")[编写一篇数学文档]
    // https://github.com/PgBiel/typst-oxifmt/blob/main/oxifmt.typ
    // - #chapter("topics/format-lib.typ")[制作一个格式化库]
    // https://github.com/Pablo-Gonzalez-Calderon/showybox-package/blob/main/showy.typ
    - #chapter("topics/writing-component-lib.typ")[制作一个组件库]
    - #chapter("topics/writing-plugin-lib.typ")[制作一个外部插件]
    - #chapter("topics/call-externals.typ")[在Typst内执行Js、Python、Typst等]
    // https://github.com/frugal-10191/frugal-typst
    - #chapter("topics/template-book.typ")[制作一个书籍模板]
    // chicv
    - #chapter("topics/template-cv.typ")[制作一个CV模板]
    // official template
    - #chapter("topics/template-paper.typ")[制作一个IEEE模板]
    = 公式和定理
    - #chapter("science/chemical.typ")[化学方程式]
    - #chapter("science/algorithm.typ")[伪算法]
    - #chapter("science/theorem.typ")[定理环境]
    = 杂项
    - #chapter("misc/font-setting.typ")[字体设置]
    // - #chapter("misc/font-style.typ")[伪粗体、伪斜体]
    - #chapter("misc/code-syntax.typ")[自定义代码高亮规则]
    - #chapter("misc/code-theme.typ")[自定义代码主题]
    - #chapter("misc/text-processing.typ")[读取外部文件和文本处理]
    = 绘制图表
    - #chapter("graph/table.typ")[制表]
    - #chapter("graph/solid-geometry.typ")[立体几何]
    - #chapter("graph/digraph.typ")[拓扑图]
    - #chapter("graph/statistics.typ")[统计图]
    - #chapter("graph/state-machine.typ")[状态机]
    - #chapter("graph/electronics.typ")[电路图]
    = 模板
    - #chapter("template/slides.typ")[演示文稿（PPT）]
    - #chapter("template/paper.typ")[论文模板]
    - #chapter("template/book.typ")[书籍模板]
  ],
)

#build-meta(dest-dir: "../dist")

// #get-book-meta()

// re-export page template
#import "/typ/templates/page.typ": project, heading-reference
#let page = project
#let ref-page = project.with(kind: "reference-page")
#let cross-link = cross-link
#let heading-reference = heading-reference
