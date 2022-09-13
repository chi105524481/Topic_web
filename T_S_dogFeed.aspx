<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="T_S_dogFeed.aspx.cs" Inherits="Topic_10.T_S_dogFeed" %>

<%@ Register Src="~/NewPage.ascx" TagPrefix="uc1" TagName="NewPage" %>


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
            <li class="selected"><a href="T_S_dogCan.aspx">狗狗</a></li>
            <li><a href="T_S_catCan.aspx">貓貓</a></li>
            <li><a href="T_register.aspx">註冊</a></li>
            <li><a href="logout.ashx"><asp:Literal ID="logInOut" runat="server"></asp:Literal></a></li>
            </ul>
        </div>     
            
            
       </div> 
       
       
       <div class="center_content">
       	<div class="left_content">
        	<div class="crumb_nav">
            <%--<a href="index.html">home</a> &gt;&gt; category name--%>
                
            </div>
               
            <div class="title">
                <span class="title_icon"><img src="images/bullet1.gif" alt="" title="" />狗飼料</span>
                

            </div>
            <div class="new_products">
  

                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>

            </div> 
               <div class="pagination">
                   <uc1:NewPage runat="server" ID="NewPage" />
          <%--<uc1:WebUserControl1 ID="WebUserControl11" runat="server" />--%>
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
                  <asp:Label ID="Status" runat="server" Text=""></asp:Label>
                  </div>
                  <asp:Literal ID="cartLink" runat="server"></asp:Literal>
              
              </div>
                       
            	
        
        
             <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>毛孩們的飲食需注意</div> 
             <div class="about">
             <p>
             <img src="images/about.gif" alt="" title="" class="right" />
             你知道嗎？ 有些"愛"可能會是"害"，你所認為的美食，對毛孩們來說可能是有毒，甚至有致命危險性的。常常食用人吃的食物，可能造成毛孩消化不良、胰臟炎、腎臟損傷等問題呢～
             </p>
             
             </div>
             
             <div class="right_box">
                 <div class="title"><span class="title_icon"></span></div> 
                <div class="title"><span class="title_icon"></span>貓貓</div> 
                
                <ul class="list">
                <li><a href="T_S_catWetFood.aspx">貓貓-肉泥</a></li>
                <li><a href="T_S_catCan.aspx">貓貓-罐頭</a></li>
                <li><a href="T_S_catDryFood.aspx">貓貓-飼料</a></li>
                </ul>
             </div>
             
             <div class="right_box">
                <div class="title"><span class="title_icon"></span>狗狗</div> 
                
                <ul class="list">
                <li><a href="T_S_dogCookie.aspx">狗狗-餅乾</a></li>
                <li><a href="T_S_dogCan.aspx">狗狗-罐頭</a></li>
                <li><a href="T_S_dogFeed.aspx">狗狗-飼料</a></li>
                </ul>
             </div>         
             
        
        </div><!--end of right content-->
        
        
       
       
       <div class="clear"></div>
       </div><!--end of center content-->
       
              
       <div class="footer">
       	<div class="left_footer"><img src="images/footer_logo.gif" alt="" title="" /><br /> <a href="https://www.webmoban.net" title="free css templates">webmoban.net</a></div>
        <div class="right_footer">
        <a href="#">home</a>
        <a href="#">about us</a>
        <a href="#">services</a>
        <a href="#">privacy policy</a>
        <a href="#">contact us</a>
       
        </div>
        
       
       </div>
    

</div>

    </form>

</body>
</html>
