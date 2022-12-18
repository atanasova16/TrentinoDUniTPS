degrees <- read.csv("C:\\Users\\User\\Documents\\UNITN\\KGE\\PROJECT\\DATASETS\\degrees_departments.csv")
degrees$degree_type <- as.factor(degrees$degree_type)
degrees$department_name <- as.factor(degrees$department_name)
degrees$department_id <- as.factor(degrees$department_id)


plot(degrees$degree_type)
library(ggplot2)

ggplot(degrees) + geom_bar(aes(x = degree_type))
ggplot(degrees) + geom_bar(aes(x = department_id)) + theme(axis.text.x = element_text(size=4, angle=45))

table(degrees$department_name)                                                             


library(rjson)
#install.packages("rjson")

files <- read.csv(file = "C:\\Users\\User\\Documents\\UNITN\\KGE\\PROJECT\\DATASETS\\files_all_data_modified_csv.csv")
head(files)
files$versione <- as.factor(files$versione)
files$formato <- as.factor(files$formato)
files$licenza <- as.factor(files$licenza)
files$openAccess <- as.factor(files$openAccess)

table(files$versione)
ggplot(files) + geom_bar(aes(x = versione))
table(files$formato)
ggplot(files) + geom_bar(aes(x = formato))



