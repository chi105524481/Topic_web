<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="T_index.aspx.cs" Inherits="Topic_10.T_index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>&#23541;&#27611;&#32178;</title>
<link rel="stylesheet" type="text/css" href="style.css" />

</head>
<body>
    <form id="form1" runat="server">
<div id="wrap">

       <div class="header">
       		<div class="logo"><a href="T_index.aspx"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>            
        <div id="menu">
            <ul>
            <li><a href="T_S_dogCan.aspx">&#29399;&#29399;</a></li>
            <li><a href="T_S_catCan.aspx">&#35987;&#35987;</a></li>
            <li><a href="T_register.aspx">&#35387;&#20874;</a></li>
            <li><a href="logout.ashx"><asp:Literal ID="logInOut" runat="server"></asp:Literal></a></li>
            </ul>
        </div>     
            
            
       </div> 
       
       
       <div class="center_content">
       	<div class="left_content">
        	
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>熱銷產品</div>
<%--        	<div class="feat_prod_box">
            
              	<div class="prod_img"><a href="details.html"><img src="images/prod1.gif" alt="" title="" border="0" /></a></div>
                
              <div class="prod_det_box">
                	<div class="box_top"></div>
                    <div class="box_center">
                    <div class="prod_title">product name</div>
                    <p class="details">lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ut enim ad minim veniam, quis nostrud exercitation.</p>
                    <a href="details.html" class="more">&#26356;&#22810;</a>
                    <div class="clear"></div>
                    </div>
                    
                    <div class="box_bottom"></div>
            </div>    
            <div class="clear"></div>
            </div>	--%>
            
            
<%--        	<div class="feat_prod_box">
            
            	<div class="prod_img"><a href="details.html"><img src="images/prod2.gif" alt="" title="" border="0" /></a></div>
                
                <div class="prod_det_box">
                	<div class="box_top"></div>
                    <div class="box_center">
                    <div class="prod_title">Product name</div>
                    <p class="details">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
                    <a href="details.html" class="more">- more details -</a>
                    <div class="clear"></div>
                    </div>
                    
                    <div class="box_bottom"></div>
                </div>    
            <div class="clear"></div>
            </div>    --%>  
            
            
           <%--<div class="title"><span class="title_icon"><img src="images/bullet2.gif" alt="" title="" /></span></div> --%>
           
           <div class="new_products">
           
<%--                    <div class="new_prod_box">
New pets</div> 
           
           <div class="new_products">
           
<%--                    <div class="new_prod_box">
                        <a href="details.html">product name</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span>
                        <a href="details.html"><img src="images/thumb1.gif" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>
                    
                    <div class="new_prod_box">
                        <a href="details.html">product name</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span>
                        <a href="details.html"><img src="images/thumb2.gif" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>                    
                    
                    <div class="new_prod_box">
                        <a href="details.html">product name</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span>
                        <a href="details.html"><img src="images/thumb3.gif" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>   --%>       
            
               <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            
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
                  <asp:Label ID="index_status" runat="server" Text="index_status"></asp:Label>
                  </div>
                  <asp:Literal ID="cartKink" runat="server"></asp:Literal>
              
              </div>
                       
            	
        
        
             <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>毛孩們的飲食需注意</div> 
             <div class="about">
             <p>
             <img src="images/about.gif" alt="" title="" class="right" />
             你知道嗎？ 有些"愛"可能會是"害"，你所認為的美食，對毛孩們來說可能是有毒，甚至有致命危險性的。常常食用人吃的食物，可能造成毛孩消化不良、胰臟炎、腎臟損傷等問題呢～
             </p>
             
             </div>
             
             <div class="right_box">

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
             	<div class="title"><span class="title_icon"></span></div>
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
