<?php
$this->breadcrumbs=array(
	'Todos'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Todo', 'url'=>array('index')),
	array('label'=>'Manage Todo', 'url'=>array('admin')),
);
?>

<h1>Create Todo</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>