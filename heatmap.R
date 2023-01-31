
rm(list=ls()) # �����������
setwd("F:/02Radiomics/00_Radiomics_features/02���ظ�������/01��ͼ/") 
setwd("F:/02Radiomics/00_Radiomics_features/05��ģ/��������/") 
setwd("F:/����/��2����/00DATA/01_ICC/") 


getwd() 

#install.packages("pheatmap") 
#install.packages("xlsx") 
library(pheatmap)  
library(xlsx)  




# #����׼�� -------------------------------------------------------------------



data1 <- read.csv("SETB.csv",
              header = TRUE,sep = ",",stringsAsFactors = FALSE,
              na.strings = c("NA",""))

#View(data1)


rownames(data1) = data1[,1]����
data1 <- data1[,-1]����������
data1 <- as.matrix(data1)

dim(data1)




# #ȫ�����ݵ���ͼ���� -------------------------------------------------------------



#pheatmap(data1, cluster_cols = FALSE, cluster_rows = FALSE, filename = "Radiomics Features of lasso.tiff")��#���ƻ�����ͼ


#ע��Feature_Class��Image_type��Weighted_Image(ȫ������)
annotation_col = data.frame(Feature_Class=factor(c(rep("shape",14), rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5),  
                                                    rep("shape",14), rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5), 
                                                    rep("firstorder",18), rep("glcm",24), rep("gldm",14), rep("glrlm",16), rep("glszm",16), rep("ngtdm",5))),
                             Image_Type=factor(c(rep("original",107), rep("exponential",93), rep("gradient",93), rep("lbp-2D",93), 
                                                rep("lbp-3D-m1",93), rep("lbp-3D-m2",93), rep("lbp-3D-k",93), rep("log",93), 
                                                rep("logarithm",93), rep("square",93), rep("squareroot",93), rep("wavelet-LLH",93), 
                                                rep("wavelet-LHL",93), rep("wavelet-LHH",93), rep("wavelet-HLL",93), rep("wavelet-HLH",93), 
                                                rep("wavelet-HHL",93), rep("wavelet-HHH",93), rep("wavelet-LLL",93), rep("original",107), 
                                                rep("exponential",93), rep("gradient",93), rep("lbp-2D",93), rep("lbp-3D-m1",93), rep("lbp-3D-m2",93), 
                                                rep("lbp-3D-k",93), rep("log",93), rep("logarithm",93), rep("square",93), rep("squareroot",93), 
                                                rep("wavelet-LLH",93), rep("wavelet-LHL",93), rep("wavelet-LHH",93), rep("wavelet-HLL",93), 
                                                rep("wavelet-HLH",93), rep("wavelet-HHL",93), rep("wavelet-HHH",93), rep("wavelet-LLL",93))),
                            Weighted_Image=factor(c(rep("T1WI",1781),rep("T2WI",1781))))#��������

annotation_row = data.frame( Species=factor(c(rep("Human",575),rep("Monkey",323))))#��������

ann_colors <- list(
   Feature_Class = c(shape = "orange", firstorder = "purple", glcm = "yellow", gldm = "blue", glrlm = "red", glszm = "green", ngtdm = "black"),
  Weighted_Image = c(T1WI = "blue", T2WI = "red"),
  Species = c(Human = "purple", Monkey = "green")
)



row.names(annotation_col) = colnames(data1) 


pheatmap(data1,
         cluster_cols = TRUE, cluster_rows = FALSE,   
         show_rownames = FALSE,show_colnames = FALSE, 
        # main = "Radiomics Features of Human",   
         clustering_method = "complete" ,   #��ʾ���෽������������ward��, ��ward.D��, ��ward.D2��, ��single��, ��complete��, ��average��, ��mcquitty��, ��median��, ��centroid��
         
         annotation_col = annotation_col, 
         annotation_colors = ann_colors, 
         annotation_row = annotation_row, 
         
         width = 16 ,
         height = 9 ,
        filename = "Radiomics Features of all_complete.tiff",
         )           


#df = df[apply(df, 1, function(x) sd(x)!=0),] 
#data1 = data1[,apply(data1, 2, function(x) sd(x)!=0)] 

pheatmap(mat, color = colorRampPalette(rev(brewer.pal(n = 7, name ="RdYlBu")))(100), 
         kmeans_k = NA, breaks = NA, border_color = "grey60",
         cellwidth = NA, cellheight = NA, scale = "none", 
         cluster_rows = TRUE, cluster_cols = TRUE, clustering_distance_rows = "euclidean",
         clustering_distance_cols = "euclidean", clustering_method = "complete",
         clustering_callback = identity2, cutree_rows = NA, cutree_cols = NA,
         treeheight_row = ifelse((class(cluster_rows) == "hclust") || cluster_rows,
                                 50, 0), treeheight_col = ifelse((class(cluster_cols) == "hclust") ||
                                                                   cluster_cols, 50, 0), legend = TRUE, legend_breaks = NA,
         legend_labels = NA, annotation_row = NA, annotation_col = NA,
         annotation = NA, annotation_colors = NA, annotation_legend = TRUE,
         annotation_names_row = TRUE, annotation_names_col = TRUE,
         drop_levels = TRUE, show_rownames = T, show_colnames = T, main = NA,
         fontsize = 10, fontsize_row = fontsize, fontsize_col = fontsize,
         angle_col = c("270", "0", "45", "90", "315"), display_numbers = F,
         number_format = "%.2f", number_color = "grey30", fontsize_number = 0.8
         * fontsize, gaps_row = NULL, gaps_col = NULL, labels_row = NULL,
         labels_col = NULL, filename = NA, width = NA, height = NA,
         silent = FALSE, na_col = "#DDDDDD", ...)



# t����ɸѡ����������ͼ -------------------------------------------------------------



annotation_col = data.frame(Feature_Class=factor(c(rep("shape",2), rep("firstorder",3), rep("firstorder",4), rep("glcm",6), rep("gldm",3), 
                                                   rep("glrlm",1), rep("ngtdm",1), rep("firstorder",1), rep("glcm",2), rep("gldm",4), 
                                                   rep("glrlm",3), rep("glszm",2), rep("firstorder",1), rep("glszm",4), rep("glszm",4), 
                                                   rep("glszm",4), rep("firstorder",1), rep("glcm",2), rep("ngtdm",1), rep("firstorder",2), 
                                                   rep("glcm",4), rep("gldm",1), rep("glrlm",1), rep("glszm",3), rep("glcm",1), 
                                                   rep("gldm",3), rep("glrlm",7), rep("glszm",6), rep("firstorder",2), rep("glcm",1), 
                                                   rep("glszm",1), rep("ngtdm",1), rep("firstorder",1), rep("firstorder",2), rep("glrlm",1), 
                                                   rep("glszm",2), rep("firstorder",1), rep("gldm",1), rep("glszm",3), rep("firstorder",1), 
                                                   rep("glcm",1), rep("gldm",1), rep("glrlm",1), rep("firstorder",4), rep("glcm",3), 
                                                   rep("gldm",2), rep("glrlm",4), rep("glszm",4), rep("ngtdm",1), rep("firstorder",8), 
                                                   rep("glcm",8), rep("gldm",1), rep("glrlm",1), rep("glszm",4), rep("firstorder",1), 
                                                   rep("glcm",1), rep("glszm",1), rep("shape",2), rep("firstorder",1), rep("glcm",2), 
                                                   rep("gldm",1), rep("glszm",4), rep("ngtdm",1), rep("firstorder",8), rep("glcm",7), 
                                                   rep("gldm",2), rep("glrlm",3), rep("glszm",2), rep("ngtdm",4), rep("firstorder",3), 
                                                   rep("glcm",1), rep("gldm",1), rep("glrlm",4), rep("glszm",5), rep("ngtdm",1), 
                                                   rep("firstorder",2), rep("glszm",4), rep("glszm",4), rep("glszm",4), rep("ngtdm",1), 
                                                   rep("firstorder",2), rep("glcm",1), rep("gldm",2), rep("glrlm",6), rep("glszm",6), 
                                                   rep("ngtdm",1), rep("firstorder",1), rep("gldm",2), rep("glszm",3), rep("firstorder",2), 
                                                   rep("glcm",1), rep("glrlm",1), rep("firstorder",4), rep("glcm",3), rep("gldm",1), 
                                                   rep("glszm",1), rep("ngtdm",2), rep("firstorder",3), rep("glcm",2), rep("gldm",2), 
                                                   rep("glrlm",4), rep("glszm",4), rep("ngtdm",1), rep("firstorder",1), rep("glcm",2), 
                                                   rep("gldm",2), rep("glrlm",5), rep("glszm",5), rep("ngtdm",2), rep("firstorder",1), 
                                                   rep("glcm",2), rep("gldm",1), rep("glrlm",4), rep("glszm",4), rep("ngtdm",2), 
                                                   rep("firstorder",1), rep("glcm",2), rep("gldm",2), rep("glrlm",4), rep("glszm",4), 
                                                   rep("ngtdm",2), rep("firstorder",5), rep("glcm",2), rep("gldm",2), rep("glrlm",4), 
                                                   rep("glszm",6), rep("ngtdm",1), rep("gldm",2), rep("glrlm",1), rep("glszm",3), 
                                                   rep("firstorder",1), rep("glcm",1), rep("gldm",2), rep("glrlm",1), rep("glszm",4), 
                                                   rep("glcm",1), rep("gldm",2), rep("glrlm",3), rep("glszm",2), rep("ngtdm",1))),
                            Image_Type=factor(c(rep("original",5), rep("exponential",15), rep("gradient",12), rep("lbp-2D",5), rep("lbp-3D-m1",4), 
                                                rep("lbp-3D-m2",4), rep("lbp-3D-k",4), rep("log",11), rep("logarithm",17), rep("square",5), 
                                                rep("squareroot",1), rep("wavelet-LLH",5), rep("wavelet-LHL",1), rep("wavelet-LHH",4), rep("wavelet-HLL",4), 
                                                rep("wavelet-HLH",18), rep("wavelet-HHH",22), rep("wavelet-LLL",3), rep("original",11), rep("exponential",26), 
                                                rep("gradient",15), rep("lbp-2D",6), rep("lbp-3D-m1",4), rep("lbp-3D-m2",4), rep("lbp-3D-k",1), 
                                                rep("log",18), rep("logarithm",6), rep("square",4), rep("squareroot",11), rep("wavelet-LLH",16), 
                                                rep("wavelet-LHL",17), rep("wavelet-LHH",14), rep("wavelet-HLL",15), rep("wavelet-HLH",20), rep("wavelet-HHL",6), 
                                                rep("wavelet-HHH",9), rep("wavelet-LLL",9))),
                            Weighted_Image=factor(c(rep("T1WI",140),rep("T2WI",212))))#��������


annotation_row = data.frame( Species=factor(c(rep("Human",575),rep("Monkey",275))))#��������

ann_colors <- list(
  Feature_Class = c(shape = "orange", firstorder = "purple", glcm = "yellow", gldm = "blue", glrlm = "red", glszm = "green", ngtdm = "black"),
  Weighted_Image = c(T1WI = "blue", T2WI = "red"),
  Species = c(Human = "purple", Monkey = "green")
)



row.names(annotation_col) = colnames(data1)


pheatmap(data1,
         cluster_cols = TRUE, cluster_rows = TRUE,   # ȡ�����о���
         show_rownames = FALSE,show_colnames = FALSE, # �������б�ǩ����ʾ
         # main = "Radiomics Features of Human",   #���ӱ���
         clustering_method = "complete" ,   #��ʾ���෽������������ward��, ��ward.D��, ��ward.D2��, ��single��, ��complete��, ��average��, ��mcquitty��, ��median��, ��centroid��
         
         annotation_col = annotation_col, #��ʾ��Ʒ�еķ�����Ϣ��ͼ��
         annotation_colors = ann_colors, #ʹ��annotation_colors�����趨��Ʒ�з������ɫ
         annotation_row = annotation_row, 
         
         width = 16 ,
         height = 9 ,
         filename = "t����ɸѡ��ȫ������(���о���).tiff" # �Զ����浽����·����,
)           







# �������� --------------------------------------------------------------------


pheatmap(data1, cluster_cols = FALSE, cluster_rows = FALSE, filename = "SETB.tiff",
         fontsize = 50,   #��ʾ��ͼ�������С
         display_numbers = T ,  #��ʾ�Ƿ��ڵ�Ԫ������ʾԭʼ��ֵ�������������������ֱ��
         fontsize_number = 50	,  #��ʾ��ͼ����ʾ���ֵ������С
         number_format = "%.0f"  , #��ʾ��ͼ��Ԫ������ʾ�����ݸ�ʽ���� ��%.2f�� ��ʾ��λС���� "%.1e" ��ʾ��ѧ������
         
         cellwidth = 250 , #��ʾ������Ԫ��Ŀ��ȣ�Ĭ��Ϊ ��NA���������ݴ����Զ�����
         cellheight = 250 , #��ʾ������Ԫ��ĸ߶ȣ�Ĭ��Ϊ ��NA���������ݴ����Զ�����
         #width = 600, height = 600,
         
         legend = F ,#��ʾ�Ƿ���ʾͼ����ֵΪTRUE��FALSE
         #legend_breaks=c(10,250,500) ,# ����ͼ���ķ�Χ
         
         show_rownames = TRUE,#��ʾ�Ƿ���ʾ����
         show_colnames = TRUE	,#��ʾ�Ƿ���ʾ����

         border="white", # ���ñ߿�Ϊ��ɫ
         
         fontsize_row = 40, # �ֱ��������б�ǩ�����С
         fontsize_col = 40,
         angle_col = 0, # ���ñ�ǩ��ʾ�Ƕ�
         
         

         #colorRampPalette(c("gray", "black"))(4)
         )��





# #ICC����ͼ --------------------------------------------------------------


pheatmap(data1, cluster_cols = FALSE, cluster_rows = F, filename = "SETcδ����.tiff",
         show_rownames = F,  #��ʾ�Ƿ���ʾ����
         show_colnames = TRUE,  #��ʾ�Ƿ���ʾ����
         angle_col = 90, # ���ñ�ǩ��ʾ�Ƕ�
         treeheight_row = 10, # �����о�������
         #display_numbers = matrix(ifelse(data1 >= 0.75, "~", ""), nrow(data1)), #������ͼ��Ԫ�����ֵ���б�ǣ����õ�Ԫ��ԭʼ��ֵ����0.75����Ϊ ��***��������Ϊ " "
         cellwidth = 77 , #��ʾ������Ԫ��Ŀ��ȣ�Ĭ��Ϊ ��NA���������ݴ����Զ�����
         #cellheight = 280 , #��ʾ������Ԫ��ĸ߶ȣ�Ĭ��Ϊ ��NA���������ݴ����Զ�����
         fontsize_col = 10, # �ֱ��������б�ǩ�����С
         
         #legend_breaks=c(0,0.25,0.5,0.75,1) # ����ͼ���ķ�Χ
)��