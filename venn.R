
#install.packages("VennDiagram")
library(VennDiagram)

setwd("F:/02Radiomics/00_Radiomics_features/03ICC/VENN/") 


data <- read.csv("SETc.csv",header = T)
#



venn.diagram(x=list(Human_interobserver = data$Human_interobserver,
                    Monkey_interobserver = data$Monkey_interobserver,
                    Human_intraobserver =data$Human_intraobserver,
                    Monkey_intraobserver = data$Monkey_intraobserver),
             
                    filename = "SETc.tif" ,   #imagetype="png",   "Venn.tif"    filename = NULL
                    resolution = 300,   #设置分辨率
                    height = 4000,  #设置大小
                    width = 4000,   #设置大小
             
                    fill=c("dodgerblue", "goldenrod1", "darkorange1", "orchid3"),   #给图片填充颜色:"red","green","yellow","darkorchid1","blue","dodgerblue", "goldenrod1", "darkorange1", "seagreen3", "orchid3"
             

                    #main="Venn",   #设置图片标题
                    #main.cex = 2, main.fontface = 2,  #标题字体和大小
             
        #设置图像元素
             cex=3 ,  #图形内数字的字号
             #fontface="bold", # 加粗
             #fonrfamily="sans", # 数字字体
             #fill=rainbow(5),  # 圆圈颜色，使用rainbow函数，生成5种颜色
             lwd=2, # 圈线条的粗细：1 2 3 4 5 6
             lty=2, # 圈线条的类型：1为实线，2为虚线，blank为无线条   
             
        # 图形元素设置：标签即(category)
             cat.cex =2.2,  # 标签字体大小
             cat.fontfamily = "sans",  # 标签字体
             #cat.col = "black",  # 标签字体色  rainbow(3)
             #cat.fontface = "bold",  # 加粗： "bold"，或者是数字
             #cat.default.pos = "outer",  # 标签内外位置, 在圆圈内还是圆圈外，outer 内 text 外
             cat.pos = c(-180, 180, 0,0),  # 标签旋转位置，用圆的度数  0是正上方。
             cat.dist = c(0.35, 0.35, 0.1,0.1),  # 标签离圆圈位置,离圆的距离，如果标签与圆圈重叠，可以调整这个参数
#             rotation = 1 ,# 1 2 3 旋转确定打头数据集 适合3 set的情况
#             rotation.degree = 0  ,#旋转角度（逆时针）
             
 

             sub.just =c(0.5, 1),   #集合的字体大小位置
             alpha = 0.5,  #颜色透明度
             

             ) 

#
