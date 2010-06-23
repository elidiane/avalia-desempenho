
<h2>Adicionar novo cargo</h2>

<?php echo $this->Form->create('Role'); ?> 

<?php echo $this->Form->input('Role.code'); ?> 
<?php echo $this->Form->input('Role.title'); ?> 
<?php echo $this->Form->input('Role.sumary'); ?> 
<?php echo $this->Form->input('Role.responsibilities'); ?> 
<?php echo $this->Form->end('Adicionar cargo'); ?> 

