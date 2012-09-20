<?php
$this->breadcrumbs=array(
	'Todos',
);

$this->menu=array(
	array('label'=>'Create Todo', 'url'=>array('create')),
	// array('label'=>'Manage Todo', 'url'=>array('admin')),
);
?>

<h1>Todos</h1>

<?php 

$this->widget('zii.widgets.CListView', array(
		'id'=>'todoList',
		'dataProvider'=>$dataProvider,
		'itemView'=>'_view',
)); 

?>

