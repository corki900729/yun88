<td class="menubox">
	<div class="menu-header">
		<i class="icon icon-user"></i>
		您好, {$username}
	</div>
	<ul>
		<li>
			<a href="{:U('User/profile')}" <eq name="action" value="profile">class="active"</eq>>
				<i class="icon icon-info"></i>
				个人资料管理
				<i class="icon icon-arrow f-r"></i>
			</a>
		</li>
		<li>
			<a href="{:U('User/invoice')}" <eq name="action" value="invoice">class="active"</eq>>
				<i class="icon icon-invoice"></i>
				发票管理
				<i class="icon icon-arrow f-r"></i>
			</a>
		</li>
		<li>
			<a href="{:U('User/order')}" <eq name="action" value="order">class="active"</eq>>
				<i class="icon icon-order"></i>
				订单管理
				<i class="icon icon-arrow f-r"></i>
			</a>
		</li>		
		<li>
			<a href="{:U('User/cart')}" <eq name="action" value="cart">class="active"</eq>>
				<i class="icon icon-cart"></i>
				我的购物车
				<i class="icon icon-arrow f-r"></i>
			</a>
		</li>
		<li>
			<a href="{:U('User/account')}" <eq name="action" value="account">class="active"</eq>>
				<i class="icon icon-security"></i>
				账户安全
				<i class="icon icon-arrow f-r"></i>
			</a>
		</li>
	</ul>
</td>