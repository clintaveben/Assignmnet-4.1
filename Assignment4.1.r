# This is given

df1 = data.frame(CustId = c(1:6), Product = c(rep("TV", 3), rep("Radio", 3)))
df2 = data.frame(CustId = c(2, 4, 6), State = c(rep("Texas", 2), rep("NYC", 1)))
df1 #left table
df2 #right table

## Return only the rows in which the left table have match.

df<-merge(x=df1,y=df2,by="CustId")
df

### . Returns all rows from both tables, join records from 
the left which have matching keys in the right table

Ans : 
df<-merge(x=df1,y=df2,by="CustId",all=TRUE)
df

###. Return all rows from the right table, and any rows with matching keys from the left
table.
df<-merge(x=df1,y=df2,by="CustId",all=FALSE)
df

#### Q 2. Perform the below operations on above given data 
frames and tables:
  
# . Return a long format of the datasets without matching key.

df<-merge(x=df1,y=df2,by="CustId",all=TRUE)
df_2<- df[c(1,3,5),]
df_2

#Keep only observations in df1 that match in df2.
df<-merge(x=df1,y=df2,by="CustId",all=FALSE)
df

# . Drop all observations in df1 that match in df2.
df<-merge(x=df1,y=df2,by="CustId",all=TRUE)
df_2<- df[c(1,3,5),]
df_2

