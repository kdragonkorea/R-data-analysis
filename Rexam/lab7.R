url <- "http://unico2013.dothome.co.kr/crawling/exercise_bs.html"
text <- read_html(url)
text

node1 <- html_nodes(text, "h1") # h1 태그는 1개이므로, html_node도 가능하다.
node1
title <- html_text(node1)
title

node2 <- html_nodes(text, "a")
node2
html_attr(node2, "href")

node3 <- html_nodes(text, "img")
node3
html_attr(node3, "src")

node4 <- html_nodes(text, "h2")
html_text(node4[1])

node5 <- html_nodes(text, "li")
html_text(node5[3])

node6 <- html_nodes(text, "h2")
html_text(node6[2])

# [1] "짜장면" "냉면"   "돈까스" "갈비"
node7 <- html_text(html_nodes(text, "li"))
node7[5:8]

# table
node8_1 <- html_text(html_nodes(text, "tr"))
node8_2 <- html_text(html_nodes(text, "th"))
node8_3 <- html_text(html_nodes(text, "td"))
node8 <- c(node8_1,node8_2,node8_3)

#둘리 또치 도우너
node9 <- html_nodes(text, "tr")
html_text(node9[1]) # class=name 으로 찾는 방법은?

#아프리카
node10 <- html_nodes(text, "td")
html_text(node10[5]) # id=garget 으로 찾는 방법은?

#리뷰
url <- "http://unico2013.dothome.co.kr/crawling/exercise_bs.html"
html <- read_html(url)

h1 <- html_node(html, "h1")
h1_content <- html_text(h1)
h1_content

a <- html_nodes(html, "a")
a_href <- html_attr(a, "href")
a_href

img <- html_node(html, "img")
img_src <- html_attr(img, "src")
img_src

h2_1 <- html_nodes(html, "h2:nth-of-type(1)")
h2_1_content <- html_text(h2_1)
h2_1_content

li <- html_nodes(html, "ul>li[style$='green']")
li_content <- html_text(li)
li_content

h2_2 <- html_nodes(html, "h2:nth-of-type(2)")
h2_2_content <- html_text(h2_2)
h2_2_content

ol_child <- html_nodes(html, "ol>*")
ol_child_content <- html_text(ol_child)
ol_child_content

table_child <- html_nodes(html, "table *")
table_child <- html_text(table_child)
table_child

tr_name <- html_nodes(html, "tr.name")
tr_name_content <- html_text(tr_name)
tr_name_content

td_target <- html_nodes(html, "td#target")
td_target_content <- html_text(td_target)
td_target_content

