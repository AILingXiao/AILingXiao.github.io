#import "template.typ": *
#import "projects.typ": *

// 设置图标, 来源: https://fontawesome.com/icons/
// 如果要修改图标颜色, 请手动修改 svg 文件中的 fill="rgb(38, 38, 125)" 属性
// 例如可以使用 VS Code 的全局文本替换功能
#let faAward = icon("icons/fa-award.svg")
#let faBuildingColumns = icon("icons/fa-building-columns.svg")
#let faCode = icon("icons/fa-code.svg")
#let faEnvelope = icon("icons/fa-envelope.svg")
#let faGithub = icon("icons/fa-github.svg")
#let faGraduationCap = icon("icons/fa-graduation-cap.svg")
#let faLinux = icon("icons/fa-linux.svg")
#let faPhone = icon("icons/fa-phone.svg")
#let faWindows = icon("icons/fa-windows.svg")
#let faWrench = icon("icons/fa-wrench.svg")
#let faWork = icon("icons/fa-work.svg")
#let faBook = icon("icons/fa-book.svg")
#let patent = icon("icons/patent.svg")
#let copyright = icon("icons/copyright.svg")
#let attachment = icon("icons/attachment.svg")

// 主题颜色
#let themeColor = rgb(38, 38, 125)

// 设置简历选项与头部
#show: resume.with(
  // 字体基准大小
  size: 10pt,
  // 标题颜色
  themeColor: themeColor,
  // 控制纸张的边距
  top: 1.0cm,
  bottom: 1.0cm,
  left: 1.5cm,
  right: 1.5cm,

  // 如果需要姓名及联系信息居中，请删除下面关于头像的三行参数，并取消headerCenter的注释
  //headerCenter : true,
  
  // 如果不需要头像，则将下面三行的参数注释或删除
  photograph: "profile.png",
  photographWidth: 8em, // 头像宽度
  gutterWidth: 4em,     // 头像与文本之间的间距
)[

  // 姓名加大字号
  #set text(size: 15pt)
  = 凌晓

  #info(
    color: themeColor,
    contact-options: (
      gender: "男",
      birthday: "1987-02",
      politics: "党员 书记",
      birthplace: "广东湛江",
      mobile: "18814496770",
      email: link("mailto:821145275@qq.com")[821145275\@qq.com],
      // github 与 orcid 可以取消注释并修改链接
      //github: link("https://github.com/TimoLin")[github.com/TimoLin],
      //orcid: link("https://orcid.org/0000-0002-xxxx-xxxx")[0000-0002-xxxx-xxxx],
    )  
  )
][
  // 个人简介/价值主张
  #set text(size: 9.5pt)
  清华大学计算机博士，10+年AI领域研发与产业化经验。历任华为云技术专家、AI创业公司CEO，主导过千万级云资源调度平台与多个AI落地项目，累计服务数十家企业。擅长企业AI战略规划、技术选型与落地实施，致力于推动AI技术赋能实体经济。
]

== #faGraduationCap 教育背景

#sidebar(withLine: true, sideWidth: 18%)[
  #set text(size: 11pt)
  2012.09 - 2017.07

  研究方向
][
  #set text(size: 11pt)
  // 对齐
  *清华大学*#h(1fr)计算机科学与技术学院#h(1fr)*博士、优秀毕业生*

  // 研究方向
  人工智能、云计算
]
#sidebar(withLine: true, sideWidth: 18%)[
  #set text(size: 11pt)
  2014.09 - 2016.07

  研究方向
][
  #set text(size: 11pt)
  // 对齐
  *香港理工大学*#h(1fr)电子计算学院#h(1fr)*访问学者、助理研究员*

  // 研究方向
  最优化、资源调度
]
#sidebar(withLine: true, sideWidth: 18%)[
  #set text(size: 11pt)
  2008.09 - 2012.07

  主修课程
][
  #set text(size: 11pt)
  // 对齐
  *北京邮电大学*#h(1fr)软件学院#h(1fr)*学士、专业第一名*

  // 研究方向
  算法导论、计算机原理
]


== #faWork 项目经历

// 请先在project.typ中编写项目经历
// 突出展示的项目经历
#let mainProjs = (
  "sch_thu",
  "alkaid_hw",
  "aiops_hw",
  "coremi_cc",
  "aileader_cc",
  "aibox_cc",
)

// 不重要的项目
#let otherProjs = (
  "os_thu",
  "hetaoai_cc",
)

// 列出想要突出展示的项目经历
// showDetails默认为ture，即展示项目详情
#for p in mainProjs {
  let data = projs.at(p)
  itemProj(
    color: themeColor,
    data.name,
    data.source,
    data.role,
    data.time,
    data.details
  )
}


#item(
  [*参与的其他项目*],
  [],
  date[]
)

// 仅列出其他不重要的项目名称/来源/时间
// showDetails设置为false，即不展示项目详情
#for p in otherProjs {
  let data = projs.at(p)
  itemProj(
    color: themeColor,
    data.name,
    data.source,
    data.role,
    data.time,
    data.details,
    showDetails: false
  )
}

== #faBook 论文

+ *X Ling*, Y Yuan, D Wang, J Yang, "Tetris: Optimizing cloud resource usage unbalance with elastic VM," 24th IEEE/ACM International Symposium on Quality of Service, *IWQoS*, CCF B, 2016.  

+ *X Ling*, Y Yuan, D Wang, J Liu, J Yang, "Joint scheduling of MapReduce jobs with servers: Performance bounds and experiments," Journal of Parallel and Distributed Computing, *JPDC*, CCF B, 2016.  

+ *X Ling*, J Yang, D Wang, J Chen, L Li, "Fast community detection in large weighted networks using graphx in the cloud," 18th IEEE International Conference on High-Performance Computing and Communications, *HPCC*, CCF C, 2016.  

+ *X Ling*, J Yang, D Wang, Y Wang, "Cluster Scheduler on Heterogeneous Cloud," 17th IEEE International Conference on High-Performance Computing and Communications, *HPCC*, CCF C, 2015.  

+ D Fu, J Yang, *X Ling*, H Zhang, "Load-aware hybrid scheduling in large compute clusters," 21th IEEE Symposium on Computers and Communication, *ISCC*, CCF C, 2016.  

+ Z Chen, J Liu, Y Su, H Zhang, *X Ling*, Y Yang, MR Lyu, "Adaptive performance anomaly detection for online service systems via pattern sketching," 44th IEEE/ACM International Conference on Software Engineering, *ICSE*, CCF A, 2022.  

+ Z Chen, J Liu, Y Su, H Zhang, X Wen, *X Ling*, Y Yang, MR Lyu, "Graph-based incident aggregation for large-scale online service systems," 36th IEEE/ACM International Conference on Automated Software Engineering, *ASE*, CCF A, 2021.  

+ T Yang, J Shen, Y Su, *X Ling*, Y Yang, MR Lyu, "AID: efficient prediction of aggregated intensity of dependency in large-scale cloud systems," 36th IEEE/ACM International Conference on Automated Software Engineering, *ASE*, CCF A, 2021.  

== #patent 专利
+ 一种调度方法及装置, No.: CN201811161060.6, *凌晓*, 2019-03-01

+ 云产品的推荐方法和推荐装置, No.: CN202011526847.5, *凌晓*, 曾彦翔, 2022-07-08

+ 一种眼底照片的图像识别方法、装置、设备及存储介质, No.: CN202211595444.5, *凌晓*, 曾昭翔, 张凯, 2023-03-21

+ 云平台资源调度方法, No.: CN201310066039.9, 杨家海, 徐聪, *凌晓*, 王于丁, 2014-09-03

+ 一种资源迁移的方法、系统及设备, No.: CN202011526847.5, 杜雷鸣, 井淑明, *凌晓*, 2021-09-10

+ 一种在线数据异常检测方法、装置、存储介质及设备, No.: CN202010236425.8, 苏玉鑫, 吕荣聪, *凌晓*, 2021-10-01

+ 一种预测服务质量的方法和计算装置, No.: CN202210609398.3, 高晓沨, 程云龙, *凌晓*, 陈贵海, 2023-12-12

+ 一种存储池的热点处理方法及装置, No.: CN202011562831.X, 李春光, 曾永强, 叶松, *凌晓*, 井淑明, 杜雷鸣, 2022-06-28


== #copyright 软著
+ 智核苑一站式AI教学平台, No.: 2024SR2114374, 深圳核韬科技有限公司, 2024-12-18

+ 智核苑数字人创作平台DigitalAvatar, No.: 2024SR1155409, 深圳核韬科技有限公司, 2024-08-09

+ 爱画之城软件, No.: 2023SR0651719, 深圳核韬科技有限公司, 2023-06-14

+ 基于云计算的AI医学影像辅助诊断系统CoreMI, No.: 2022SR1507070, 深圳核韬科技有限公司, 2022-11-16

+ 清华云IaaS管理平台, No.: 2014SR0651374, 杨家海, 徐聪, 凌晓, 俞荟, 翁剑平, 2014-01-27


== #faBuildingColumns 工作经历
#item(
  [ *福建师范大学人工智能学院* ],
  [客座教授],
  date[2025-至今]
)

#item(
  [ *核韬科技（温州）有限公司* ],
  [联合创始人],
  date[2025-至今]
)

#item(
  [ *广州核韬科技有限公司* ],
  [创始人 CEO],
  date[2024-至今]
)

#item(
  [ *深圳市南山区退役军人创新中心* ],
  [创业导师],
  date[2024-至今]
)

#item(
  [ *深圳核韬科技有限公司* ],
  [创始人 CEO],
  date[2022-至今]
)

#item(
  [ *华为北京研究所* ],
  [技术专家 19级],
  date[2017-2022]
)

#item(
  [ *香港理工大学电子计算学院* ],
  [助理研究员],
  date[2014-2016]
)


#item(
  [ *清华大学计算机系* ],
  [网络所助理],
  date[2012-2014]
)

== #faAward 荣誉奖项
#item(
  [- *华为金牌团队*],
  [Top 1%],
  date[2020.12]
)

#item(
  [- *华为金牌个人*],
  [Top 1%],
  date[2019.12]
)

#item(
  [- *清华大学优秀毕业生*],
  [Top 1%],
  date[2017.07]
)

#item(
  [- *清华大学博士国家奖学金*],
  [Top 1%],
  date[2016.12]
)

// #item(
//   [- *北京邮电大学国家励志奖学金*],
//   [Top 1%],
//   date[2011.10]
// )

#item(
  [- *美国大学生数学建模竞赛*],
  [一等奖],
  date[2010.07]
)

#item(
  [- *全国大学生数学建模竞赛*],
  [一等奖],
  date[2009.07]
)

== #faWrench 专业技能
#sidebar(withLine: false, sideWidth: 15%)[
  *实践技能*
][
  熟练掌握DeepSeek、ChatGPT等大模型技术，具备Transformer架构级优化与工业级落地能力，熟练应用LoRA/P-Tuning等参数高效微调方法，精通RAG增强检索技术，能快速构建企业级智库，提升数据安全性与领域知识精准问答
]

#sidebar(withLine: false, sideWidth: 15%)[
  *咨询能力*
][
  具备企业AI战略规划、技术选型、ROI评估及落地实施全流程咨询经验，深耕制造业、新能源、金融、医疗等行业AI应用场景，擅长将复杂技术转化为商业语言，客座教授与创业导师经历赋予出色的方案呈现与培训授课能力
]

#sidebar(withLine: false, sideWidth: 15%)[
  *编程语言*
][
  熟练掌握 *Python*、*C++*、*Golang*、*Matlab*，有深厚的 *Linux* 和 *Windows* 平台开发经验
]

#sidebar(withLine: false, sideWidth: 15%)[
  *语言水平*
][
  英语CET-6，能够流利阅读和书写科技文献
]

== #attachment 附件
#item(
  [- *清华大学博士学位证书*],
  [#image("certificates/学位证书.jpg", width: 100%)],
  date[]
)

#item(
  [- *清华大学优秀毕业生*],
  [#image("certificates/优秀毕业生.jpg", width: 100%)],
  date[]
)

#item(
  [- *博士研究生国家奖学金*],
  [#image("certificates/国家奖学金.png", width: 100%)],
  date[]
)

#item(
  [- *华为金牌个人*],
  [#image("certificates/金牌个人奖2019.png", width: 100%)],
  date[]
)

#item(
  [- *华为金牌团队*],
  [#image("certificates/金牌团队奖2020.png", width: 100%)],
  date[]
)

#item(
  [- *深圳市南山区退役军人创业导师*],
  [#image("certificates/创业导师.png", width: 100%)],
  date[]
)
