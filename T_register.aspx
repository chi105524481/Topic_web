<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="T_register.aspx.cs" Inherits="Topic_10.T_register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Pet Shop</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
<div id="wrap">

       <div class="header">
       		<div class="logo"><a href="T_index.aspx"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>            
        <div id="menu">
            <ul>                                                                       
<%--            <li><a href="index.html">&#39318;&#38913;</a></li>
            <li><a href="about.html">&#38364;&#26044;</a></li>--%>
            <li><a href="category.html">&#29399;&#29399;</a></li>
            <li><a href="specials.html">&#35987;&#35987;</a></li>
            <li><a href="T_login.aspx">&#30331;&#20837;</a></li>
            <li class="selected"><a href="T_register.aspx">&#35387;&#20874;</a></li>
            </ul>
        </div>     
            
            
       </div> 
       
       
       <div class="center_content">
       	<div class="left_content">
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>會員註冊</div>
        
        	<div class="feat_prod_box_details">
            <p class="details">
             
            </p>
            
              	<div class="contact_form">
                <div class="form_subtitle">必填資料</div>
                 <form name="register" action="#">          
                    <div class="form_row">
                    <label class="contact"><strong>用戶名:</strong></label>
                    <asp:TextBox ID="R_name" runat="server"></asp:TextBox>
                    <%--<input type="text" class="contact_input" />--%>
                    </div>  


                    <div class="form_row">
                    <label class="contact"><strong>密碼:</strong></label>
                        <asp:TextBox ID="R_passwd" runat="server"></asp:TextBox>
                    <%--<input type="text" class="contact_input" />--%>
                    </div> 

                    <div class="form_row">
                    <label class="contact"><strong>信箱:</strong></label>
                        <asp:TextBox ID="R_email" runat="server"></asp:TextBox>
                    <%--<input type="text" class="contact_input" />--%>
                    </div>


                    <div class="form_row">
                    <label class="contact"><strong>電話:</strong></label>
                        <asp:TextBox ID="R_tel" runat="server"></asp:TextBox>
                    <%--<input type="text" class="contact_input" />--%>
                    </div>
                    
                    <div class="form_row">
                    <label class="contact"><strong>地址:</strong></label>
                        <asp:TextBox ID="R_address" runat="server"></asp:TextBox>
                    <%--<input type="text" class="contact_input" />--%>
                    </div>                    

                    <div class="form_row">
<%--                        <div class="terms">
                        <input type="checkbox" name="terms" />
                        I agree to the <a href="#">terms &amp; conditions</a>                        </div>--%>
                    </div> 

                    
                    <div class="form_row">
                    <asp:Label ID="check" runat="server" Text="結果檢查"></asp:Label>
                    <asp:Button ID="register" runat="server" Text="register" class="register" OnClick="register_Click" />
                    </div>   
                  </form>     
                </div>  
            
          </div>	
            
              

            

            
        <div class="clear"></div>
        </div><!--end of left content-->
        
        <div class="right_content">
        
            <div class="languages_box">

            </div>
            <div class="currency">

            </div>
                
                
              <div class="cart">
                  <div class="title" id="cart"><span class="title_icon"><img src="images/cart.gif" alt="" title="" /></span>
                  <asp:Label ID="register_status" runat="server" Text=""></asp:Label>
                  </div>
                  <asp:Literal ID="CartLink" runat="server"></asp:Literal>
              
              </div>
        
             <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>毛孩們的飲食需注意</div> 
             <div class="about">
             <p>
             <img src="images/about.gif" alt="" title="" class="right" />
             你知道嗎？ 有些"愛"可能會是"害"，你所認為的美食，對毛孩們來說可能是有毒，甚至有致命危險性的。常常食用人吃的食物，可能造成毛孩消化不良、胰臟炎、腎臟損傷等問題呢～
             </p>
             
             </div>
             
             <div class="right_box">
<%--             
             	<div class="title"><span class="title_icon"><img src="images/bullet6.gif" alt="" title="" /></span>Partners</div> 
                
                <ul class="list">
                <li><a href="#">accesories</a></li>
                <li><a href="#">pets gifts</a></li>
                <li><a href="#">specials</a></li>                            
                </ul>  --%>             
             </div>
             
             <div class="right_box">
             
<%--             	<div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>Categories</div> 
                
                <ul class="list">
                <li><a href="#">accesories</a></li>
                <li><a href="#">pets gifts</a></li>
                <li><a href="#">specials</a></li>
                                           
                </ul>--%>
             </div>         
             
        
        </div><!--end of right content-->
        
        
       
       
       <div class="clear"></div>
       </div><!--end of center content-->
       
              
       <div class="footer">
       	<div class="left_footer"><img src="images/footer_logo.gif" alt="" title="" /><br /> <a href="https://www.webmoban.net" title="free css templates">webmoban.net  <a href="#">about us</a>
        <a href="#">services</a>
        <a href="#">privacy policy</a>
        <a href="#">contact us</a>
       
        </div>
        
       
       </div>
    

</div>
    </form>

</body>
</html>