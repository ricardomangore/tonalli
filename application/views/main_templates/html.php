<!DOCTYPE html>
<html>
	<head>
		<?php if(isset($head)) echo $head;?>
	</head>
	<body>
		<div class="container-fluid">
			<?php if(isset($navbar)) echo $navbar; ?>
			<div class="row">
				<?php if(isset($sidebar)) echo $sidebar ?>
				<?php if(isset($content)) echo $content; ?>
				<?php if(isset($footer)) echo $footer; ?>
			</div>
		</div>
	</body>
</html>