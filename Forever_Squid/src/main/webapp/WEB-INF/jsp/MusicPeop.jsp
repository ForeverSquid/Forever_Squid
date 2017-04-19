<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<link rel="stylesheet" href="css/a8ui.base.css">
<link rel="stylesheet" href="css/a8ui.common.css">
<script src="<%=request.getContextPath() %>/js/jquery-1.9.1.min.js"></script>
<link rel="stylesheet" href="css/a8index.css">
<script src="<%=request.getContextPath() %>/js/jquery.listloopscroll.js"></script>
<script type="text/javascript" language="javascript">
	$(function() {
		//	Scrolled by user interaction
		$('.musician_slider').listLoopScroll({
			auto: true,
			pagination: ".musician_snav",
			mousewheel: false,
			swipe: {
				onMouse: true,
				onTouch: true
			}
		});
	});
</script>

<div class="idx_musician idx_common_bg">
	<div class="container clearfix">
		<h1 align="center" style="color:red">以下div是音乐人介绍区↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓</h1>
		<h1 align="center" style="color:red">此处添加板块介绍之类的话</h1>
		<div class="musician_wrapper clearfix grid4">
			<ul class="musician_slider grid5">
				<li>
					<div class="musician_items">
						<div class="hover_img1">
							<a href="<%=request.getContextPath() %>/peohome/peoShowToHome.jhtml" title="徐锋"
								><img class="lazy"
								src="<%=request.getContextPath()%>/images/s5.jpg"
								data-original="<%=request.getContextPath()%>/images/s5.jpg"
								alt="徐锋" width="220" height="220" /></a>
							<div class="hover_item">
								<a href="<%=request.getContextPath() %>/peohome/peoShowToHome.jhtml" title="徐锋"></a>
							</div>
						</div>
						<h4>
							<a href="<%=request.getContextPath() %>/peohome/peoShowToHome.jhtml" title="徐锋"
							>徐锋</a><span class=" ml_10">&nbsp;</span>
						</h4>
						<span class="label label_id">身份：作曲、作词、编曲、演唱</span> <span
							class="label label_sty">风格：摇滚/民谣</span>
						<div class="musician_total clearfix">
							<div class="total_sum">
								<a href="javascript:void(0);" class="total_song">
									<div class="total_inner">
										<span class="inner_title">歌曲</span><br> <b
											class="inner_num">8</b>
									</div>
								</a>
							</div>
							<div class="total_sum">
								<a href="javascript:void(0);" class="total_ting">
									<div class="total_inner">
										<span class="inner_title">试听</span><br> <b
											class="inner_num">1.5<span style="font-size:9pt;">
												万</span></b>
									</div>
								</a>
							</div>
						</div>
					</div>
					<div class="musician_items">
						<div class="hover_img1">
							<a href="#" title="徐锋"
								><img class="lazy"
								src="<%=request.getContextPath()%>/images/s6.jpg"
								data-original="<%=request.getContextPath()%>/images/s5.jpg"
								alt="徐锋" width="220" height="220" /></a>
							<div class="hover_item">
								<a href="#" title="徐锋"></a>
							</div>
						</div>
						<h4>
							<a href="#" title="徐锋"
							>徐锋</a><span class=" ml_10">&nbsp;</span>
						</h4>
						<span class="label label_id">身份：作曲、作词、编曲、演唱</span> <span
							class="label label_sty">风格：摇滚/民谣</span>
						<div class="musician_total clearfix">
							<div class="total_sum">
								<a href="javascript:void(0);" class="total_song">
									<div class="total_inner">
										<span class="inner_title">歌曲</span><br> <b
											class="inner_num">8</b>
									</div>
								</a>
							</div>
							<div class="total_sum">
								<a href="javascript:void(0);" class="total_ting">
									<div class="total_inner">
										<span class="inner_title">试听</span><br> <b
											class="inner_num">1.5<span style="font-size:9pt;">
												万</span></b>
									</div>
								</a>
							</div>
						</div>
					</div>
					<div class="musician_items">
						<div class="hover_img1">
							<a href="#" title="徐锋"
								><img class="lazy"
								src="<%=request.getContextPath()%>/images/s6.jpg"
								data-original="<%=request.getContextPath()%>/images/s5.jpg"
								alt="徐锋" width="220" height="220" /></a>
							<div class="hover_item">
								<a href="#" title="徐锋"></a>
							</div>
						</div>
						<h4>
							<a href="#" title="徐锋"
							>徐锋</a><span class=" ml_10">&nbsp;</span>
						</h4>
						<span class="label label_id">身份：作曲、作词、编曲、演唱</span> <span
							class="label label_sty">风格：摇滚/民谣</span>
						<div class="musician_total clearfix">
							<div class="total_sum">
								<a href="javascript:void(0);" class="total_song">
									<div class="total_inner">
										<span class="inner_title">歌曲</span><br> <b
											class="inner_num">8</b>
									</div>
								</a>
							</div>
							<div class="total_sum">
								<a href="javascript:void(0);" class="total_ting">
									<div class="total_inner">
										<span class="inner_title">试听</span><br> <b
											class="inner_num">1.5<span style="font-size:9pt;">
												万</span></b>
									</div>
								</a>
							</div>
						</div>
					</div>
					<div class="musician_items">
						<div class="hover_img1">
							<a href="#" title="徐锋"
								><img class="lazy"
								src="<%=request.getContextPath()%>/images/s6.jpg"
								data-original="<%=request.getContextPath()%>/images/s5.jpg"
								alt="徐锋" width="220" height="220" /></a>
							<div class="hover_item">
								<a href="#" title="徐锋"></a>
							</div>
						</div>
						<h4>
							<a href="#" title="徐锋"
							>徐锋</a><span class=" ml_10">&nbsp;</span>
						</h4>
						<span class="label label_id">身份：作曲、作词、编曲、演唱</span> <span
							class="label label_sty">风格：摇滚/民谣</span>
						<div class="musician_total clearfix">
							<div class="total_sum">
								<a href="javascript:void(0);" class="total_song">
									<div class="total_inner">
										<span class="inner_title">歌曲</span><br> <b
											class="inner_num">8</b>
									</div>
								</a>
							</div>
							<div class="total_sum">
								<a href="javascript:void(0);" class="total_ting">
									<div class="total_inner">
										<span class="inner_title">试听</span><br> <b
											class="inner_num">1.5<span style="font-size:9pt;">
												万</span></b>
									</div>
								</a>
							</div>
						</div>
					</div>
					<div class="clear"></div>
				</li>
				<li>
					<div class="musician_items">
						<div class="hover_img1">
							<a href="#" title="徐锋"
								><img class="lazy"
								src="<%=request.getContextPath()%>/images/s6.jpg"
								data-original="<%=request.getContextPath()%>/images/s5.jpg"
								alt="徐锋" width="220" height="220" /></a>
							<div class="hover_item">
								<a href="#" title="徐锋"></a>
							</div>
						</div>
						<h4>
							<a href="#" title="徐锋"
							>徐锋</a><span class=" ml_10">&nbsp;</span>
						</h4>
						<span class="label label_id">身份：作曲、作词、编曲、演唱</span> <span
							class="label label_sty">风格：摇滚/民谣</span>
						<div class="musician_total clearfix">
							<div class="total_sum">
								<a href="javascript:void(0);" class="total_song">
									<div class="total_inner">
										<span class="inner_title">歌曲</span><br> <b
											class="inner_num">8</b>
									</div>
								</a>
							</div>
							<div class="total_sum">
								<a href="javascript:void(0);" class="total_ting">
									<div class="total_inner">
										<span class="inner_title">试听</span><br> <b
											class="inner_num">1.5<span style="font-size:9pt;">
												万</span></b>
									</div>
								</a>
							</div>
						</div>
					</div>
					<div class="musician_items">
						<div class="hover_img1">
							<a href="#" title="徐锋"
								><img class="lazy"
								src="<%=request.getContextPath()%>/images/s6.jpg"
								data-original="<%=request.getContextPath()%>/images/s5.jpg"
								alt="徐锋" width="220" height="220" /></a>
							<div class="hover_item">
								<a href="#" title="徐锋"></a>
							</div>
						</div>
						<h4>
							<a href="#" title="徐锋"
							>徐锋</a><span class=" ml_10">&nbsp;</span>
						</h4>
						<span class="label label_id">身份：作曲、作词、编曲、演唱</span> <span
							class="label label_sty">风格：摇滚/民谣</span>
						<div class="musician_total clearfix">
							<div class="total_sum">
								<a href="javascript:void(0);" class="total_song">
									<div class="total_inner">
										<span class="inner_title">歌曲</span><br> <b
											class="inner_num">8</b>
									</div>
								</a>
							</div>
							<div class="total_sum">
								<a href="javascript:void(0);" class="total_ting">
									<div class="total_inner">
										<span class="inner_title">试听</span><br> <b
											class="inner_num">1.5<span style="font-size:9pt;">
												万</span></b>
									</div>
								</a>
							</div>
						</div>
					</div>
					<div class="musician_items">
						<div class="hover_img1">
							<a href="#" title="徐锋"
								><img class="lazy"
								src="<%=request.getContextPath()%>/images/s6.jpg"
								data-original="<%=request.getContextPath()%>/images/s5.jpg"
								alt="徐锋" width="220" height="220" /></a>
							<div class="hover_item">
								<a href="#" title="徐锋"></a>
							</div>
						</div>
						<h4>
							<a href="#" title="徐锋"
							>徐锋</a><span class=" ml_10">&nbsp;</span>
						</h4>
						<span class="label label_id">身份：作曲、作词、编曲、演唱</span> <span
							class="label label_sty">风格：摇滚/民谣</span>
						<div class="musician_total clearfix">
							<div class="total_sum">
								<a href="javascript:void(0);" class="total_song">
									<div class="total_inner">
										<span class="inner_title">歌曲</span><br> <b
											class="inner_num">8</b>
									</div>
								</a>
							</div>
							<div class="total_sum">
								<a href="javascript:void(0);" class="total_ting">
									<div class="total_inner">
										<span class="inner_title">试听</span><br> <b
											class="inner_num">1.5<span style="font-size:9pt;">
												万</span></b>
									</div>
								</a>
							</div>
						</div>
					</div>
					<div class="musician_items">
						<div class="hover_img1">
							<a href="#" title="徐锋"
								><img class="lazy"
								src="<%=request.getContextPath()%>/images/s6.jpg"
								data-original="<%=request.getContextPath()%>/images/s5.jpg"
								alt="徐锋" width="220" height="220" /></a>
							<div class="hover_item">
								<a href="#" title="徐锋"></a>
							</div>
						</div>
						<h4>
							<a href="#" title="徐锋"
							>徐锋</a><span class=" ml_10">&nbsp;</span>
						</h4>
						<span class="label label_id">身份：作曲、作词、编曲、演唱</span> <span
							class="label label_sty">风格：摇滚/民谣</span>
						<div class="musician_total clearfix">
							<div class="total_sum">
								<a href="javascript:void(0);" class="total_song">
									<div class="total_inner">
										<span class="inner_title">歌曲</span><br> <b
											class="inner_num">8</b>
									</div>
								</a>
							</div>
							<div class="total_sum">
								<a href="javascript:void(0);" class="total_ting">
									<div class="total_inner">
										<span class="inner_title">试听</span><br> <b
											class="inner_num">1.5<span style="font-size:9pt;">
												万</span></b>
									</div>
								</a>
							</div>
						</div>
					</div>
					<div class="clear"></div>
				</li>
				<li>
					<div class="musician_items">
						<div class="hover_img1">
							<a href="#" title="徐锋"
								><img class="lazy"
								src="<%=request.getContextPath()%>/images/s6.jpg"
								data-original="<%=request.getContextPath()%>/images/s5.jpg"
								alt="徐锋" width="220" height="220" /></a>
							<div class="hover_item">
								<a href="#" title="徐锋"></a>
							</div>
						</div>
						<h4>
							<a href="#" title="徐锋"
							>徐锋</a><span class=" ml_10">&nbsp;</span>
						</h4>
						<span class="label label_id">身份：作曲、作词、编曲、演唱</span> <span
							class="label label_sty">风格：摇滚/民谣</span>
						<div class="musician_total clearfix">
							<div class="total_sum">
								<a href="javascript:void(0);" class="total_song">
									<div class="total_inner">
										<span class="inner_title">歌曲</span><br> <b
											class="inner_num">8</b>
									</div>
								</a>
							</div>
							<div class="total_sum">
								<a href="javascript:void(0);" class="total_ting">
									<div class="total_inner">
										<span class="inner_title">试听</span><br> <b
											class="inner_num">1.5<span style="font-size:9pt;">
												万</span></b>
									</div>
								</a>
							</div>
						</div>
					</div>
					<div class="musician_items">
						<div class="hover_img1">
							<a href="#" title="徐锋"
								><img class="lazy"
								src="<%=request.getContextPath()%>/images/s6.jpg"
								data-original="<%=request.getContextPath()%>/images/s5.jpg"
								alt="徐锋" width="220" height="220" /></a>
							<div class="hover_item">
								<a href="#" title="徐锋"></a>
							</div>
						</div>
						<h4>
							<a href="#" title="徐锋"
							>徐锋</a><span class=" ml_10">&nbsp;</span>
						</h4>
						<span class="label label_id">身份：作曲、作词、编曲、演唱</span> <span
							class="label label_sty">风格：摇滚/民谣</span>
						<div class="musician_total clearfix">
							<div class="total_sum">
								<a href="javascript:void(0);" class="total_song">
									<div class="total_inner">
										<span class="inner_title">歌曲</span><br> <b
											class="inner_num">8</b>
									</div>
								</a>
							</div>
							<div class="total_sum">
								<a href="javascript:void(0);" class="total_ting">
									<div class="total_inner">
										<span class="inner_title">试听</span><br> <b
											class="inner_num">1.5<span style="font-size:9pt;">
												万</span></b>
									</div>
								</a>
							</div>
						</div>
					</div>
					<div class="musician_items">
						<div class="hover_img1">
							<a href="#" title="徐锋"
								><img class="lazy"
								src="<%=request.getContextPath()%>/images/s6.jpg"
								data-original="<%=request.getContextPath()%>/images/s5.jpg"
								alt="徐锋" width="220" height="220" /></a>
							<div class="hover_item">
								<a href="#" title="徐锋"></a>
							</div>
						</div>
						<h4>
							<a href="#" title="徐锋"
							>徐锋</a><span class=" ml_10">&nbsp;</span>
						</h4>
						<span class="label label_id">身份：作曲、作词、编曲、演唱</span> <span
							class="label label_sty">风格：摇滚/民谣</span>
						<div class="musician_total clearfix">
							<div class="total_sum">
								<a href="javascript:void(0);" class="total_song">
									<div class="total_inner">
										<span class="inner_title">歌曲</span><br> <b
											class="inner_num">8</b>
									</div>
								</a>
							</div>
							<div class="total_sum">
								<a href="javascript:void(0);" class="total_ting">
									<div class="total_inner">
										<span class="inner_title">试听</span><br> <b
											class="inner_num">1.5<span style="font-size:9pt;">
												万</span></b>
									</div>
								</a>
							</div>
						</div>
					</div>
					<div class="musician_items">
						<div class="hover_img1">
							<a href="#" title="徐锋"
								><img class="lazy"
								src="<%=request.getContextPath()%>/images/s6.jpg"
								data-original="<%=request.getContextPath()%>/images/s5.jpg"
								alt="徐锋" width="220" height="220" /></a>
							<div class="hover_item">
								<a href="#" title="徐锋"></a>
							</div>
						</div>
						<h4>
							<a href="#" title="徐锋"
							>徐锋</a><span class=" ml_10">&nbsp;</span>
						</h4>
						<span class="label label_id">身份：作曲、作词、编曲、演唱</span> <span
							class="label label_sty">风格：摇滚/民谣</span>
						<div class="musician_total clearfix">
							<div class="total_sum">
								<a href="javascript:void(0);" class="total_song">
									<div class="total_inner">
										<span class="inner_title">歌曲</span><br> <b
											class="inner_num">8</b>
									</div>
								</a>
							</div>
							<div class="total_sum">
								<a href="javascript:void(0);" class="total_ting">
									<div class="total_inner">
										<span class="inner_title">试听</span><br> <b
											class="inner_num">1.5<span style="font-size:9pt;">
												万</span></b>
									</div>
								</a>
							</div>
						</div>
					</div>
					<div class="clear"></div>
				</li>
			</ul>
			<div class="musician_snav grid6"></div>
		</div>
	</div>
</div>
