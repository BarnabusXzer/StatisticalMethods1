question3_1 <- function() {
    slices <- c(612,852,821,253,562,532)
    lbls <- c("National Defense","Social Security","Medicare & Medicaid","National Debt Interest","Major Social-Aid Programs","Other")

    pie(slices,labels=lbls,main="U.S. Government Spending - 2014")
    barplot(slices,names.arg=lbls,las=2,ylab="Billions of Dollars",xlab="Federal Program",main="U.S. Government Spending - 2014")

    pct <- round(slices/sum(slices)*100)
    lbls2 <- paste(lbls,pct,"%")
    pie(slices,labels=lbls2,main="U.S. Government Spending Percentages - 2014")
    barplot(pct,names.arg=lbls,las=2,ylab="Percent of Spending",xlab="Federal Program",main="U.S. Government Spending - 2014")
}   

question3_15 <- function() {

    getmode <- function(v) {
    uniqv <- unique(v)
    uniqv[which.max(tabulate(match(v, uniqv)))]
    }

    data <- c(35,81,96,45,109,126,71,15,8,79,56,73,58,17,82,29,58,68,24,5,24)
    mean <- mean(data)
    median <- median(data)
    mode <- getmode(data)
    stdv <- sd(data)

    tabdata <- c(mean,median,mode,stdv)
    tab <- matrix(tabdata,ncol=4,byrow=TRUE)
    colnames(tab) <- c("Mean","Median","Mode","Standard Deviation")
    rownames(tab) <- c("Value")
    finaltab <- as.table(tab)

    print(finaltab)
}

question3_29 <- function() {
    treatment_time <- c(21,20,31,24,15,21,24,18,33,8,26,17,27,29,24,14,29,41,15,11,13,28,22,16,12,
                        15,11,16,18,17,29,16,24,21,19,7,16,12,45,24,21,12,10,13,20,35,32,22,12,10)
    result <- quantile(treatment_time,prob=c(.25,.9),type=1)
    
    print(result)
    print("Yes, the statement is true. 90% of the patient are treated in 31 minutes")
}

question3_35 <- function() {

    drydata <- c(1.4,1.6,2.3)
    candata <- c(.5,.6,.8)

    dry <- matrix(drydata,ncol=3,byrow=TRUE)
    can <- matrix(candata,ncol=3,byrow=TRUE)


    cols <- c("Lower Quartile","Median","Upper Quartile")

    colnames(dry) <- cols
    colnames(can) <- cols
    rownames(dry) <- c("Value")
    rownames(can) <- c("Value")

    dryfood <- as.table(dry)
    cannedfood <- as.table(can)

    print(dryfood)
    print(cannedfood)
    print("The canned dog food has a much wider distribution whereas the dry food is very tight and close one another")

}

question3_41 <- function() {

    M2 <- c(2.25,2.27,2.28,2.29,2.31,2.32,2.35,2.37,2.40,2.42,2.43,2.42,2.44,2.47,2.49,2.51,2.53,2.53,2.54,2.55)
    M3 <- c(2.81,2.84,2.86,2.88,2.90,2.92,2.96,2.99,3.02,3.04,3.05,3.05,3.08,3.1,3.1,3.13,3.17,3.18,3.19,3.2)
    months <- c(1:20)
    months2 <- c(1:20)
    print("A scatter plot would show a relation between the two sets of data")
    plot(months,M2)
    points(months2,M3,col='green',pch=12)
    print("There is a fairly direct linear relation between the two datasets, when one increases the other also increases by a similar amount")
}


question3_1()
question3_15()
question3_29()
question3_35()
question3_41()