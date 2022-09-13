<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="T_select.aspx.cs" Inherits="Topic_10.T_select" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Pet Shop</title>
<link rel="stylesheet" type="text/css" href="style.css" />
	<link rel="stylesheet" href="lightbox.css" type="text/css" media="screen" />
	
	<script src="js/prototype.js" type="text/javascript"></script>
	<script src="js/scriptaculous.js?load=effects" type="text/javascript"></script>
	<script src="js/lightbox.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/java.js"></script>
</head>
<body>
    <form id="form1" runat="server">
<div id="wrap">

       <div class="header">
       		<div class="logo"><a href="index.html"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>            
        <div id="menu">
            <ul>                                                                       
                <asp:AdRotator ID="AdRotator1" runat="server" />
            <li><a href="T_S_dogCan.aspx">&#29399;&#29399;</a></li>
            <li><a href="T_S_catCan.aspx">&#35987;&#35987;</a></li>
            <li><a href="T_register.aspx">&#35387;&#20874;</a></li>
            <li><a href="logout.ashx"><asp:Literal ID="logInOut" runat="server"></asp:Literal></a></li>
            </ul>
        </div>     
            
            
       </div> 
       
       
       <div class="center_content">
       	<div class="left_content">
        	<div class="crumb_nav">
            <a href="index.aspx">home</a>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </div>
            <div class="title"><span class="title_icon"></span>Product name</div>
        
        	<div class="feat_prod_box_details">
                
            	<div class="prod_img">
                    <a href="">
                    <%--                        <img src="images/prod1.gif" alt="" title="" border="0" />--%>
                        <asp:Literal ID="L_image" runat="server"></asp:Literal>
                    </a>
                <br /><br />
                
                </div>
                
                <div class="prod_det_box">
                	<div class="box_top"></div>
                    <div class="box_center">
                    <div class="prod_title">Details</div>
                    <p class="details">
                        <asp:Literal ID="L_content" runat="server"></asp:Literal>
                    </p>
                    
                        <div class="price"><strong>PRICE:</strong> 
                        <span class="red">
                        <asp:Literal ID="L_price" runat="server"></asp:Literal>元
                        </span></div>
                        <asp:Button ID="OnCart" runat="server" Text="&#21152;&#20837;&#36092;&#29289;&#36554;" OnClick="OnCart_Click" />
                        <asp:DropDownList ID="amountIN" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                        </asp:DropDownList>
                    <div class="clear"></div>
                    </div>
                    
                    <div class="box_bottom"></div>
                </div>    
            <div class="clear"></div>
            </div>	
            
              
            <div id="demo" class="demolayout">
            <div class="tabs-container"> 
                 <div style="display: none;" class="tab" id="tab2">
                    <div class="clear"></div>
                </div>	
            </div>
			</div>
            

            
        <div class="clear"></div>
        </div><!--end of left content-->
        
        <div class="right_content">
        
                	<div class="languages_box">
            <span class="red"></span>

            </div>
                <div class="currency">
                <span class="red"></span>

                </div>
                
                
              <div class="cart">
                  <div class="title" id="cart"><span class="title_icon"><img src="images/cart.gif" alt="" title="" /></span>
                  <asp:Label ID="status" runat="server" Text="index_status"></asp:Label>
                  </div>
                  <asp:Literal ID="cartLink" runat="server"></asp:Literal>
              
              </div>
        
             <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>&#27611;&#23401;&#20497;&#30340;&#39154;&#39135;&#38656;&#27880;&#24847;</div> 
             <div class="about">
             <p>
             <img src="images/about.gif" alt="" title="" class="right" />
             &#20320;&#30693;&#36947;&#21966;&#65311; &#26377;&#20123;"&#24859;"&#21487;&#33021;&#26371;&#26159;"&#23475;"&#65292;&#20320;&#25152;&#35469;&#28858;&#30340;&#32654;&#39135;&#65292;&#23565;&#27611;&#23401;&#20497;&#20358;&#35498;&#21487;&#33021;&#26159;&#26377;&#27602;&#65292;&#29978;&#33267;&#26377;&#33268;&#21629;&#21361;&#38570;&#24615;&#30340;&#12290;&#24120;&#24120;&#39135;&#29992;&#20154;&#21507;&#30340;&#39135;&#29289;&#65292;&#21487;&#33021;&#36896;&#25104;&#27611;&#23401;&#28040;&#21270;&#19981;&#33391;&#12289;&#33008;&#33247;&#28814;&#12289;&#33102;&#33247;&#25613;&#20663;&#31561;&#21839;&#38988;&#21602;&#65374;
             </p>
             
             </div>
             
             <div class="right_box">

             <div class="title"><span class="title_icon"></span>&#35987;&#35987;</div> 
                
                <ul class="list">
                <li><a href="T_S_catWetFood.aspx">&#35987;&#35987;-&#32905;&#27877;</a></li>
                <li><a href="T_S_catCan.aspx">&#35987;&#35987;-&#32592;&#38957;</a></li>
                <li><a href="T_S_catDryFood.aspx">&#35987;&#35987;-&#39164;&#26009;</a></li>
                </ul>  
             
             </div>
             <div class="right_box">

             	<div class="title"><span class="title_icon"></span>&#29399;&#29399;</div> 
                
                <ul class="list">
                <li><a href="T_S_dogCookie.aspx">&#29399;&#29399;-&#39173;&#20094;</a></li>
                <li><a href="T_S_dogCan.aspx">&#29399;&#29399;-&#32592;&#38957;</a></li>
                <li><a href="T_S_dogFeed.aspx">&#29399;&#29399;-&#39164;&#26009;</a></li>
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
<script type="text/javascript">

var tabber1 = new Yetii({
id: 'demo'
});

</script>
</html>