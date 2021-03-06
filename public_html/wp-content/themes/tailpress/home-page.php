<?php 

/**
 ** Template Name: Home Template
*/

get_header(); ?>

<?php if ( have_rows('home_page') ):?>
	<?php while( have_rows('home_page')): the_row();?>
		<?php if(get_row_layout() === 'home_page_content'):?>
			
			<!-- Top Banner Section -->
			<div class="w-full bg-center bg-cover h-screen" style="background-image: url('<?php echo get_theme_file_uri('./images/mars-bg.jpg'); ?>');">
				<div class="overlay bg-black bg-opacity-25 w-full h-screen">
					<div class="inner-wrap container mx-auto px-4 pt-56 lg:pt-80 text-center">
						<?php echo get_sub_field('top_banner_text'); ?>
					</div>
				</div>
			</div>

			<!-- About Me Section -->
			<div class="container mx-auto px-4 py-10 lg:py-32">
				<div class="grid grid-cols-1 md:grid-cols-12 space-y-8 md:space-x-10 xl:space-x-0 md:space-y-0">
					<div class="col-span-1 md:col-span-6">
						<img src="<?php echo get_sub_field('about_section_image') ?>" alt="profile picture" class="lg:max-w-[464px] mx-auto">
					</div>
					<div class="col-span-1 md:col-span-6 relative">
						<h2 class="text-red-500 text-2xl md:text-3xl lg:text-4xl font-semibold"><?php echo get_sub_field('about_red_title'); ?></h2>
						<h2 class="text-2xl md:text-3xl lg:text-4xl font-semibold mb-4"><?php echo get_sub_field('about_black_title'); ?></h2>
						<div class="text-sm lg:text-lg z-10"><?php echo get_sub_field('about_description'); ?></div>
						<img src="<?php echo get_theme_file_uri('./images/about-scribble.png') ?>" alt="about-scribble" class="hidden -z-10 xl:block absolute right-20 bottom-5 2xl:bottom-20 opacity-20 rotate-12">
					</div>
				</div>
			</div>

			<!-- Portfolio Section -->
			<div class="container mx-auto py-10 lg:py-16">
				<div class="grid grid-cols-1">
					<div class="col-span-1">
						<h1 class="text-center text-2xl md:text-3xl lg:text-4xl xl:text-5xl font-semibold">Some of My Work</h1>
					</div>
				</div>
			</div>
		<?php endif; ?>
	<?php endwhile?>
<?php endif; ?>

<div class="cursor"></div>

<?php
get_footer();