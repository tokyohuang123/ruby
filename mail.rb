require 'mail'  
  
smtp = { :address => 'smtp.mxhichina.com', :port => 25, :domain => 'yingfei.onaliyun.com', \
    :user_name => 'fuwu@yingfei.onaliyun.com', :password => '*********',\
    :enable_starttls_auto => true, :openssl_verify_mode => 'none' }  
Mail.defaults { delivery_method :smtp, smtp }  
mail = Mail.new do  
  from 'fuwu@yingfei.onaliyun.com'  
  to '766548405@qq.com'  

  subject 'test html mail'  
  text_part do
    body 'This is plain text'
  end

  html_part do
    content_type 'text/html; charset=UTF-8'
    body '

<body>

<table border="1" cellspacing="0" cellpadding="0"   >
<tr bgcolor="#4179E9"  >
  <td  width="300" colspan="2" align="center" ><font color="#FFEFFF">截止目前云片信息汇总</font></td>
</tr>

<tr  >
  <td  width="300">账户剩余条数</td>
  <td  width="300">%s</td>
</tr>
<tr bgcolor="#4169E1" >
  <td > <font color="#FFFFFF">剩余条数低于该值时提醒</font></td>
  <td> <font color="#FFFFFF">%s</font></td>
</tr>
</table>
<br>
<table border="1" cellspacing="0" cellpadding="0" >
<tr bgcolor="#4169E1"  >
  <td  width="300" colspan="2" align="center" ><font color="#FFFFFF">%s账单</font></td>
</tr>
<tr >
  <td>计费条数</td>
  <td>%s</td>
</tr>
<tr bgcolor="#4169E1" >
  <td width="300"><font color="#FFFFFF">产生费用</font></td>
  <td width="300"><font color="#FFFFFF">%s</font></td>
</tr>
<tr >
  <td>发送成功条数</td>
  <td>%s</td>
</tr>
<tr bgcolor="#4169E1" >
  <td><font color="#FFFFFF">发送失败条数</font></td>
  <td><font color="#FFFFFF">%s</font></td>
</tr>
<tr>
  <td>未知短信条数</td>
  <td>%s</td>
</tr>
</table>

</body>'
  end
  add_file File.expand_path("E:\\ruby\\test.txt")  
end  
mail.deliver!  