#Generate sample data

#Generate Impacted Product Ids
n <- 1000000
impIds <- stringi::stri_rand_strings(n, 10)

#Generate Impacted Product Quantity
impQty <- sample(c(0:10), n, replace = TRUE)

#Generate sample Product Names
x <- c('X Ray 1.0', 'X Ray 1.1', 'Pacemaker 30', 'Pacemaker 31', 'Pacemaker 32', 'Pacemaker 22', 
       'ECG Display 199XT', 'ECG Display 201XN')
impProdNames <- sample(x, n, replace = TRUE)

#Generate sample Manufacturing Location
Y <- c('Nashville', 'New Jersey', 'Africa', 'Manchester')
impML <- sample(Y, n, replace = TRUE)

#Generate Product locations (U.S Only)
z <- read.csv('sample zipcodes.csv')
zip <- stringr::str_pad(as.character(z$zip), width = 5, pad ="0")
impProdLoc <- sample(zip, n, replace = TRUE)

#Generate PC IDs
p <- 500000 #Number of complaints
pcIds <- stringi::stri_rand_strings(p, 8)
impPcIds <- sample(pcIds, n, replace = TRUE)

data <- data.frame(`Product Complaint Id` = impPcIds, 
                   `Impacted Product Name` = impIds,
                   `Product Name` = impProdNames, 
                   `Quantity Involved` = impQty,
                   `Manufacturing Location` = impML,
                   `Product Location` = impProdLoc, stringsAsFactors = FALSE)

write.csv(data,'sample data.csv')

rm(impPcIds,impIds, impProdNames, impQty,impML,impProdLoc,z,pcIds,zip)
#rm(impIds)






