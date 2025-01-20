#p163 LAB 
#(1)
burger <- matrix(c(514, 917, 11,
                   533, 853, 13,
                   566, 888, 10),
                 nrow = 3, ncol = 3, byrow = T
)
burger

#(2)
rownames(burger) <- c('M', 'L', 'B')
colnames(burger) <- c('열량(kcal)', '나트륨(na)', '포화지방(fat)')
burger

#(3)
burger['M', '나트륨(na)']
burger['M',]
burger[, '열량(kcal)']