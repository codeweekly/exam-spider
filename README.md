
- 类型
  - 'type': 'single'
  - 'type': 'multiple'
  - 'type': 'text'
  - 'type': 'input'

https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxcd4f752a72694478&redirect_uri=https%3A//sdjrzk.xuanyun.tech/api/wechat/mp/login/%3Fnext%3D%252Fmobile%252Fexam%252F&response_type=code&scope=snsapi_userinfo&state=WEIXIN_LOGIN


```
SELECT a.poolid,a.title,SUM(a.判断题) AS `判断题`,SUM(a.单选题) AS `单选题`,SUM(a.多选题) AS `多选题`,SUM(a.填空题) AS `填空题`
FROM
(
SELECT q.poolid,p.title,
CASE `type` 
WHEN 1 THEN 1 
ELSE 0 END AS `判断题`, 
CASE `type` 
WHEN 2 THEN 1 
ELSE 0 END AS `单选题`, 
CASE `type` 
WHEN 3 THEN 1 
ELSE 0 END AS `多选题`, 
CASE `type` 
WHEN 4 THEN 1 
ELSE 0 END AS `填空题` 
FROM ims_goouc_practice_question q
LEFT JOIN ims_goouc_practice_pool p
ON q.poolid=p.id
) a
GROUP BY a.poolid,a.title
```

