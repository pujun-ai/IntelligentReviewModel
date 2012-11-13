<?php
/*=====================================================================//					
Author(s): Gregory Krudysz	 
Last Revision: Aug-24-2012
//=====================================================================*/
//echo $status.'  '.$role;
?>
<!-- FOOTER -->
<div id="footerContainer">		
    <ul id="navlist" class="navlist">
        <li><code>ITS v.<?php echo $ITS_version;?></code></li>
        <?php 
if ($status == 'admin' OR $status == 'instructor') {
	$spacer = '&nbsp;<b><font color="silver"> &diams; </font></b>&nbsp;';
    switch ($status) {
        case 'admin':
            $opt_arr = array(
                $status,
                'instructor',
                'student'
            );
            break;
        case 'instructor':
            $opt_arr = array(
                $status,
                'student'
            );
            break;
    }
    //---------//
    $option = '';
    for ($o = 0; $o < count($opt_arr); $o++) {
        if ($role == $opt_arr[$o]) {
            $sel = 'selected="selected"';
        } else {
            $sel = '';
        }
        $option .= '<option value="' . $opt_arr[$o] . '" ' . $sel . '>' . $opt_arr[$o] . '</option>';
    }
    //---------//
    $user = '<li><form id="role" name="role" action="screen.php" method="post">' . '<select class="ITS_select" name="role" id="myselectid" onchange="javascript:this.form.submit();">' . $option . '</select>' . '</form></li>';
    
    switch ($role) {
        case 'admin':
            $footer_list = '<div id="footer_admin"><div id="footer_list" class="ITS_ADMIN"><div class="footer_col"><ul class="footer">' . '<li><a href="docs/">Documentation</a></li>' . '<li><a href="Tags.php">Tags</a></li>' . '</ul></div>' . '<div class="footer_col"><ul class="footer">' . '<li><a href="FILES/DATA/DATA.php">DATA</a></li> ' . '<li><a href="dSPFirst.php">eDSPFirst</a></li>' . '<li><a href="search/search.php">Search Tool</a></li>' . '</ul></div>' . '<div class="footer_col"><ul class="footer">' . '<li><a href="survey1.php?survey=Fall_2011">Survey - Fall 2011</a></li>' . '<li><a href="survey1.php?survey=Spring_2011">Survey - Spring 2011</a></li>' . '<li><a href="survey1.php?survey=BMED6787">Survey - BMED6787</a></li> ' . '</ul></div>' . '<div class="footer_col" style="float:right;width:auto;"><div id="navcontainer"><ul class="ITS_navlist">' . '<li><a class="silver" href="Profile.php">Profile</a></li>' . '<li><a class="silver" href="Question.php">Question</a></li>' . '</ul><div id="ur"></div></div></div></div>' .
                '</div>';
            break;
        case 'instructor':
            $footer_list = '<div id="footer_admin"><div id="footer_list" class="ITS_ADMIN">' . '<div class="footer_col"><ul class="footer">' . '<li><a href="survey1.php?survey=Fall_2011">Survey - Fall 2011</a></li>' . '<li><a href="survey1.php?survey=Spring_2011">Survey - Spring 2011</a></li>' . '</ul></div>' . '<div class="footer_col" style="float:right;width:auto;"><div id="navcontainer"><ul class="ITS_navlist">' . '<li><a class="silver" href="Profile.php">Profile</a></li>' . '<li><a class="silver" href="Question.php">Questions</a></li>' . '</ul><div id="ur"></div></div></div></div>' . '</div>';
            break;
        default:
            $footer_list = '';
            break;
    }
} else {
	$spacer = '&nbsp;<b><font color="silver"> | </font></b>&nbsp;';
    $user = preg_replace('/_/', ' ', $status);
}
//echo $footer_list; die();
echo '<li>'.$spacer.$user.'</li><li>'.$spacer.' <a href="http://its.vip.gatech.edu/faq/" target="_blank" class="ITS">ITS &ndash; FAQ</a></li></ul>'.$footer_list;
//echo '<li>'.$spacer.'</li>'.$user.'<li>'.$spacer.'</li><li><a href="http://its.vip.gatech.edu/faq/" target="_blank" class="ITS">ITS &ndash; FAQ</a></li></ul>'.$footer_list;

$footer = new ITS_footer($status, $LAST_UPDATE, '');
echo $footer->main();
/*
<a href="#test" class="fancybox">Open</a>
<div id="test" style="display:none;width:300px;">
<p>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque blandit, mi sed sollicitudin hendrerit, elit elit tristique velit, ut sagittis urna dolor non metus. Fusce viverra lacus sit amet urna porttitor eu mollis massa hendrerit.
</p>
</div>
	<ul>
		<li><a id="fancybox-manual-a" href="javascript:;">Open single item</a></li>
		<li><a id="fancybox-manual-b" href="javascript:;">Open single item, custom options</a></li>
		<li><a id="fancybox-manual-c" href="javascript:;">Open gallery</a></li>
	</ul>
*/
?>
</div>
<!-- end div#footerContainer -->