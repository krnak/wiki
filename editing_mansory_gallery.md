#Editing Mansory gallery

```html
excerpt removed
<div class="sm-grid-boxes-quote">

date removed
<span class="sm-meta-date"> <i class="sm-icon-date">

archive totalne rozkopan na
<main id="main" class="site-main" role="main">
	<?php if ( have_posts() ) : ?>
		<?php 
			$cat_name = single_cat_title('',false);
			echo do_shortcode('[simple_masonry sm_category_name="' . $cat_name . '"]');
				?>
	<?php else : ?>
		<?php get_template_part( 'template-parts/content', 'none' ); ?>
	<?php endif; ?>
			
</main><!-- #main --> 


.grid-sm-border{
    border: 1px solid rgb(0, 0, 0); 
}

.smblog_masonry_numcol .sm-grid-boxes-caption {
   padding-top: 20px;
   /*padding-left: 15px;*/
}
.sm-grid-boxes-caption {
    text-align: center;
}

in frnt-page.php
<!-- agi remove class="content-area" -->
<div id="primary">
```
