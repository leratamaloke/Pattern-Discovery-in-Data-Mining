library(arules)

categories = categories

write.table(categories, "ItemLists.txt", sep = ";")

txn = read.transactions("C:/Users/Lerata Maloke/Downloads/categories.txt", format = "basket", sep = ";", cols = 1)

txn1 = read.transactions("ItemLists.txt", format="single", sep = ";", cols = c(1,2))

inspect(txn[1:5])
                                    
inspect(txn1[1:5])
                                   
A = itemFrequency(txn, type = "absolute")

B = sort(A, decreasing = TRUE)

A1=itemFrequency(txn1,type="absolute")

B1=sort(A1,decreasing = TRUE)

C = paste(B, names(B), sep = ":")

head(C)

C1=paste(B1,names(B1),sep=':');

write.table(C, file = "pattern.txt", sep = '\t', col.names = F, row.names = F, quote = F)
write.table(C1,file='pattern.txt',sep='\t',col.names = F, row.names = F,quote = F)
freq_items <- eclat(txn, parameter = list(sup = 0.01, minlen = 1, target = "frequent itemset"))
write(freq_items, 'pattern.txt', sep=";",col.names = F, row.names = F,quote = F )

