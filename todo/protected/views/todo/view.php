<?php
$this->breadcrumbs=array(
	'Todos'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Todo', 'url'=>array('index')),
	array('label'=>'Create Todo', 'url'=>array('create')),
	array('label'=>'Update Todo', 'url'=>array('update', 'id'=>$model->id)),
	// array('label'=>'Delete Todo', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	// array('label'=>'Manage Todo', 'url'=>array('admin')),
);
?>

<h1>View Todos <?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'added',
		'description',
		'done',
	),
)); ?>
