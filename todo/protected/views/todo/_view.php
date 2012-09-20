<div class="view">

		<?php // echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
		<?php echo CHtml::link(CHtml::encode($data->added), array('view', 'id'=>$data->id)); ?>
		<br/>
		<br/>
		<?php echo CHtml::encode($data->description); ?>
		<br/>
		<br/>
		<br/>
		<?php 
			echo CHtml::ajaxButton("Done",CController::createUrl("todo/ajaxSetDone/?id={$data->id}"),
			array('type' => 'POST','success' => 'function(){
	        $.fn.yiiListView.update("todoList");}'),array('class'=>'setDoneButton'));
		?>
		
</div>
	