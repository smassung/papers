d = read.table('nli-shared-features.dat', header = T)
png('ngram-comp.png', width = 800, height = 800, res = 150, units = 'px')
plot(d$ngram, d$Word, xlim = c(1, 9), ylim = c(1, 20), xlab = 'ngram value',
     ylab = 'count of teams using', main = 'ngram feature types used',
     col = 'black', axes = FALSE)
axis(side = 1, at = c(1, 2, 3, 4, 5, 6, 7, 8, 9))
axis(side = 2, at = c(2, 4, 6, 8, 10, 12, 14, 16, 18, 20))
lines(d$ngram, d$Word, col = 'black')
points(d$ngram, d$POS, col = 'blue')
lines(d$ngram, d$POS, col = 'blue')
points(d$ngram, d$Character, col = 'green')
lines(d$ngram, d$Character, col = 'green')
points(d$ngram, d$Function, col = 'red')
lines(d$ngram, d$Function, col = 'red')
legend('topright', lty = 1, names(d)[-1],
       col = c('black', 'blue', 'green', 'red'))
dev.off()
