<?php
class GlobalFactory {
	public static function GetGlobalData()
	{
		$retval = null;
		$select_sql = "SELECT id FROM pbglobal";
		if ($result = $GLOBALS['mysqli']->query($select_sql)) {
			$retval = new PbGlobal($result->fetch_assoc()['id']);
		}
		return $retval;
	}	
}

class PbGlobal {
	public function __construct() {
		$select_sql = "SELECT * from pbglobal";
		if ($result = $GLOBALS['mysqli']->query($select_sql)) {
			$row = $result->fetch_assoc();
			$this->TemplateFolder = $row['templatefolder'];
			$this->PostTemplateName = $row['posttemplatename'];
			$this->PostFolder = $row['postfolder'];
			$this->PostUrl = $row['posturl'];
			$this->CategoryTemplateName = $row['categorytemplatename'];
			$this->IndexTemplateName = $row['indextemplatename'];
			$this->IndexFolder = $row['indexfolder'];
			$this->IndexFileName = $row['indexfilename'];
			$this->LightCarousel = $row['lightcarousel'];
			$this->DarkCarousel = $row['darkcarousel'];
		}
		else {
			glogg('something happened:' . $GLOBALS['mysqli']->error);
			glogg($insert_sql);
		}
	}
	public function Publish()
	{
		$publishedBlogs = PostFactory::GetPublishedBlogs();
		//but only if there is at least one post in the category
		$numofblogs = sizeof($publishedBlogs);
		$post_rows = '';
		for ($x=0; $x<$numofblogs; $x++) {
			$post_row = '<div class=row>';
			$blogPost = $publishedBlogs[$x++];
			$post_row .=  Post::blog_snippet($blogPost);
			if ($x<$numofblogs) {
				$blogPost = $publishedBlogs[$x++];
				$post_row .=  Post::blog_snippet($blogPost);
				if ($x<$numofblogs) {
					$blogPost = $publishedBlogs[$x];
					$post_row .=  Post::blog_snippet($blogPost);
				}
			}
			$post_row .= '</div>' . "\n";
			$post_rows .= $post_row;
		}
		
		$file_contents_string = file_get_contents($this->TemplateFolder . $this->IndexTemplateName);
		//create create the category carousel
		$categories = CategoryFactory::GetCategories();
		$category_carousel_indicators = '';
		$category_carousel = '';
		for ($i=0;$i<sizeof($categories);$i++) {
			$category = $categories[$i];
			if (CategoryFactory::HasPosts($category->ID)) {
				$loc = $i+2;
				$category_carousel_indicators .= '<li data-target="#pbdotcomCarousel" data-slide-to="' . $loc . '" class="" title="' . $category->CarouselTitle . '"></li>';				
				$category_carousel .= '<div class="item">';
				$category_carousel .= '<img data-src="holder.js/900x500/auto/#555:' . $category->BackgroundTitleColor . '/text:' . $category->BackgroundTitle . '" alt="Second slide" src="data:image/svg+xml;base64,' . $this->LightCarousel . '">';
				$category_carousel .= '<div class="container"><div class="carousel-caption">';
				$category_carousel .= '<h1 style="color:' . $category->Color . '">' . $category->CarouselTitle . '</h1>';
				$category_carousel .= '<p>' . $category->CarouselSubTitle . '</p>';
				$category_carousel .= '<p><a class="btn btn-lg btn-primary" href="' . $category->Url . '" role="button">Go to my blog &raquo;</a></p>';
				$category_carousel .= '</div></div></div>';
			}
		}
		$file_contents_string = str_replace("<category_carousel_indicators>",$category_carousel_indicators,$file_contents_string);
		$file_contents_string = str_replace("<category_carousel>",$category_carousel,$file_contents_string);
		
		$file_contents_string = str_replace("<headline-placeholders>",$post_rows,$file_contents_string);
		$category_dropdown = Category::getcategorydropdown();
		$file_contents_string = str_replace('<category-dropdown>',$category_dropdown,$file_contents_string);
		file_put_contents($this->IndexFolder . $this->IndexFileName , $file_contents_string);
	}
	function __toString() {
		$retval = '';
		$object_vars = get_object_vars ($this);
		while ( list ($key, $value) = each ($object_vars) ) {	//nice hash iterator code
			$print_val = $value;
			if (isset($print_val)) {
				$print_val = is_array ($value) ? sizeof($value) : $value;
			
			}
			else {
				$print_val = 'NULL';
			}
			$retval .= $key . '>> ' . $print_val . "\n";
		}
		return $retval;
	}
	//public properties
	public $TemplateFolder = '';
	public $PostTemplateName = '';
	public $PostFolder = '';
	public $PostUrl = '';
	public $CategoryTemplateName = '';
	public $IndexTemplateName = '';
	public $IndexFolder = '';
	public $IndexFileName = '';
	public $LightCarousel = '';
	public $DarkCarousel = '';
}

?>