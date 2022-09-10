<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="T_login.aspx.cs" Inherits="Topic_10.T_login" %>

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
                <%--<li><a href="T_index.aspx">&#39318;&#38913;</a></li>--%>            <%--<li><a href="about.html">&#38364;&#26044;&#25105;&#20497;</a></li>--%>
            <li><a href="T_S_dogCan.aspx">&#29399;&#29399;</a></li>
            <li><a href="T_S_catCan.aspx">&#35987;&#35987;</a></li>
            <li class="selected"><a href="T_login.aspx">&#30331;&#20837;</a></li>
            <li><a href="T_register.aspx">&#35387;&#20874;</a></li>
            </ul>
        </div>     
            
            
       </div> 
       
       
       <div class="center_content">
       	<div class="left_content">
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>&#30331;&#20837;</div>
        
        	<div class="feat_prod_box_details">
            <p class="details">
                <%-- Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.--%>
            </p>
            
              	<div class="contact_form">
                <div class="form_subtitle">&#36664;&#20837;&#24115;&#34399;&#23494;&#30908;&#30331;&#20837;</div>
                    <div class="form_row">
                    <label class="contact"><strong>Username:</strong></label>
                    <asp:TextBox ID="username" runat="server"></asp:TextBox>
                        <%--<input type="text" id="username" class="contact_input" />--%>
                    </div>  


                    <div class="form_row">
                    <label class="contact"><strong>Password:</strong></label>
                    <asp:TextBox ID="userpasswd" runat="server"></asp:TextBox>
                        <%--<input type="text" id="userpasswd" class="contact_input" />--%>
                    </div>                     

                    <div class="form_row">
                        <%--                        <div class="terms">
                        <input type="checkbox" name="terms" />
                        Remember me
                        </div>--%>
                    </div> 

                    
                    <div class="form_row">
                        <%--<input type="submit" class="register" value="login" />--%>
                        <asp:Button ID="login" class="register" runat="server" Text="login" OnClick="login_Click" />
                        <asp:Label ID="login_status" runat="server"></asp:Label>
                    </div>   
                    
                </div>  
            
            </div>	
            
              

            

            
        <div class="clear"></div>
        </div><!--end of left content-->
        
        <div class="right_content">
        
                	<div class="languages_box">
            <span class="red"></span>
                        <%--            <a href="#"><img src="images/gb.gif" alt="" title="" border="0" /></a>
            <a href="#"><img src="images/fr.gif" alt="" title="" border="0" /></a>
            <a href="#"><img src="images/de.gif" alt="" title="" border="0" /></a>--%>
            </div>
                <div class="currency">
                    <%--                <span class="red">Currency: </span>
                <a href="#">GBP</a>
                <a href="#">EUR</a>
                <a href="#"><strong>USD</strong></a>--%>
                </div>
                
                
              <div class="cart">
                  <div class="title"><span class="title_icon"><img src="images/cart.gif" alt="" title="" /></span></div>
                  <%--                  <div class="home_cart_content">
                  3 x items | <span class="red">TOTAL: 100$</span>
                  </div>--%><%--<a href="cart.html" class="view_cart">view cart</a>--%>
              
              </div>
        
             <%--<div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>About Our Shop</div> --%>
             <div class="about">
             <p>
             <img src="images/about.gif" alt="" title="" class="right" />
             
             </p>
             
             </div>
             
             <div class="right_box">
             
             	<div class="title"><span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span></div> 
                 <%--                    <div class="new_prod_box">
                        <a href="details.html">product name</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span>
                        <a href="details.html"><img src="images/thumb1.gif" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>
                    
                    <div class="new_prod_box">
                        <a href="details.html">product name</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span>
                        <a href="details.html"><img src="images/thumb2.gif" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>                    
                    
                    <div class="new_prod_box">
                        <a href="details.html">product name</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span>
                        <a href="details.html"><img src="images/thumb3.gif" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>   --%>            
             
             </div>
             
             <div class="right_box">
             
             	<div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span></div> 
                `
                <ul class="list">
                    <%--                <li><a href="#">accesories</a></li>
                <li><a href="#">pets gifts</a></li>
                <li><a href="#">specials</a></li>
                <li><a href="#">hollidays gifts</a></li>
                <li><a href="#">accesories</a></li>
                <li><a href="#">pets gifts</a></li>
                <li><a href="#">specials</a></li>
                <li><a href="#">hollidays gifts</a></li>
                <li><a href="#">accesories</a></li>
                <li><a href="#">pets gifts</a></li>
                <li><a href="#">specials</a></li>       --%>                                       
                </ul>
                
             	<div class="title"><span class="title_icon"><img src="images/bullet6.gif" alt="" title="" /></span></div> 
                
                <ul class="list">
                    <%--                <li><a href="#">accesories</a></li>
                <li><a href="#">pets gifts</a></li>
                <li><a href="#">specials</a></li>
                <li><a href="#">hollidays gifts</a></li>
                <li><a href="#">accesories</a></li>
                <li><a href="#">pets gifts</a></li>
                <li><a href="#">specials</a></li>
                <li><a href="#">hollidays gifts</a></li>
                <li><a href="#">accesories</a></li>     --%>                         
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