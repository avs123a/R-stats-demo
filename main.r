# 1. Згенеруйте послідовність випадкових 100 чисел, які мають біноміальний закон розподілення ймовірностей.
v_binomial = rbinom(100, 10, 0.5)
print('sequence of numbers')
print(v_binomial)

# 2. Для отриманої послідовності виконайте наступне:
# – побудуйте інтервальний варіаційний ряд;
# – обчислить вибіркове середнє, дисперсію, середнє квадратичне відхилення;
# – побудуйте гістограму розподілу ймовірностей та кругову діаграму;
# – обчисліть та побудуйте графічно емпіричну функцію розподілу.

var_row = cut(v_binomial, 3, labels=c("A","B","C"))
print('variation interval row')
print(var_row)

print(paste('variable mean => ', mean(v_binomial, na.rm = TRUE)))
print(paste('dispersion => ', var(v_binomial, na.rm = TRUE)))
print(paste('avg square => ', sd(v_binomial, na.rm = TRUE)))


hist(v_binomial)

empir_fn = ecdf(v_binomial)
summary(empir_fn)
#вивід значень
#емпіричного розподілу
#у вигляді графіку
par(mfrow=c(2,2))
plot(empir_fn)
plot.ecdf(empir_fn)
plot.ecdf(v_binomial)
plot(empir_fn, verticals=TRUE, col.points="blue",
col.hor="red", col.vert="bisque")


