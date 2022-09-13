<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="T_detail.aspx.cs" Inherits="Topic_10.T_detail" %>

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
            <li><a href="T_S_dogCan.aspx">狗狗</a></li>
            <li><a href="T_S_catCan.aspx">貓貓</a></li>
            <li><a href="T_register.aspx">註冊</a></li>
            <li><a href="logout.ashx"><asp:Literal ID="logInOut" runat="server"></asp:Literal></a></li>
            </ul>
        </div>     
            
            
       </div> 
       
       
       <div class="center_content">
       	<div class="left_content">
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>訂單</div>
        
        	<div class="feat_prod_My cart</div>
        
        	<div class="feat_prod_box_details">
            
                <asp:Table ID="Table1" runat="server" class="cart_table" >
                <asp:TableHeaderRow runat="server" >
                    <asp:TableHeaderCell runat="server" class="cart_table">&#39006;&#21029;</asp:TableHeaderCell>
                    <asp:TableHeaderCell runat="server" class="cart_table">&#20839;&#23481;</asp:TableHeaderCell>
                    <asp:TableHeaderCell runat="server" class="cart_table">&#21934;&#20729;</asp:TableHeaderCell>
                    <asp:TableHeaderCell runat="server" class="cart_table">&#20491;&#25976;</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                </asp:Table>
                <%--<table class="cart_table" id="CT">
            	<tr class="cart_title">
                	<td>Item pic</td>
                	<td>Book name</td>
                    <td>Unit price</td>
                    <td>Qty</td>
                    <td>Total</td>               
                </tr>
                
            	<tr>
                	<td><a href="details.html"><img src="images/cart_thumb.gif" alt="" title="" border="0" class="cart_thumb" /></a></td>
                	<td>Books</td>
                    <td>100$</td>
                    <td>1</td>
                    <td>100$</td>               
                </tr>          
            	<tr>
                	<td><a href="details.html"><img src="images/cart_thumb.gif" alt="" title="" border="0" class="cart_thumb" /></a></td>
                	<td>Books</td>
                    <td>100$</td>
                    <td>1</td>
                    <td>100$</td>               
                </tr>                  
            	<tr>
                	<td><a href="details.html"><img src="images/cart_thumb.gif" alt="" title="" border="0" class="cart_thumb" /></a></td>
                	<td>Books</td>
                    <td>100$</td>
                    <td>1</td>
                    <td>100$</td>               
                </tr>

                <tr>
                <td colspan="4" class="cart_total"><span class="red">TOTAL SHIPPING:</span></td>
                <td> 250$</td>                
                </tr>  
                
                <tr>
                <td colspan="4" class="cart_total"><span class="red">TOTAL:</span></td>
                <td> 325$</td>                
                </tr>                  
            
            </table>--%><%--            <a href="#" class="continue">&lt; continue</a>
            <a href="#" id="func1" name="func2" class="checkout">--%>
            <%--<asp:Button ID="buy" class="checkout" runat="server" Text="&#36092;&#36023;" OnClick="buy_Click" /></a> --%>
            
            </div>	
            
        <div class="clear">
            </div>
        </div><!--end of left content-->
        
        <div class="right_content">
        
                	<div class="languages_box">
                        <%--            <span class="red">Languages:</span>
            <a href="#"><img src="images/gb.gif" alt="" title="" border="0" /></a>
            <a href="#"><img src="images/fr.gif" alt="" title="" border="0" /></a>
            <a href="#"><img src="images/de.gif" alt="" title="" border="0" /></a>--%>
            </div>
                    <%--                <div class="currency">
                <span class="red">Currency: </span>
                <a href="#">GBP</a>
                <a href="#">EUR</a>
                <a href="#"><strong>USD</strong></a>
                </div>--%>
                
                
              <div class="cart">
                  <div class="title"><span class="title_icon"><img src="images/cart.gif" alt="" title="" /></span>
                      <asp:Label ID="Cart_status" runat="server" Text="index_status"></asp:Label>
                  </div>
                  <asp:Literal ID="CartLink" runat="server"></asp:Literal>
                  
                  <div class="home_cart_content">
                   <span class="red"></span>
                  </div>
                  <a href="cart.html" class="view_cart"></a>
              
              </div>
        
             <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>&#27611;&#23401;&#20497;&#30340;&#39154;&#39135;&#38656;&#27880;&#24847;所認為的美食，對毛孩們來說可能是有毒，甚至有致命危險性的。常常食用人吃的食物，可能造成毛孩消化不良、胰臟炎、腎臟損傷等問題呢～
             </p>
             
             </div>
             
             <div class="right_box">

                <div class="title"><span class="title_icon"></span>貓貓</div> 
                
                <ul class="list">
                <li><a href="#">貓貓-肉泥</a></li>
                <li><a href="#">貓貓-罐頭</a></li>
                <li><a href="#">貓貓-飼料</a></li>
                         
                </ul>   
              
             
             </div>
             
             <div class="right_box">
             
             	<div class="title"><span class="title_icon"></span>狗狗</div> 
                
                <ul class="list">
                <li><a href="#">狗狗-餅乾</a></li>
                <li><a href="#">狗狗-罐頭</a></li>
                <li><a href="#">狗狗-飼料</a></li>                                 
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