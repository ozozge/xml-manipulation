library(XML)


setwd("folder")

listF <- list.files(path = ".", pattern = "*.xml")

for (j in 1:(length(listF))){
  namef<-listF[j]
  input<-xmlInternalTreeParse(file = namef)
  orders2<-getNodeSet(input, "/folder1/subfolder/parent node name")
  top<-newXMLNode("a",attrs = c(b="c",d="e"),newXMLNode("f","g"),parent = orders2)
  #output under parent node: 
          #      <a b="c" d="e">
          #        <f>g</f>
          #      </a>
  saveXML(input,namef)
  
}



#rm(list = ls())
