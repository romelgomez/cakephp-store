<!-- css temporal -->
<style type="text/css">
    /* Categorías */

    .error {
        border: 1px solid red;
    }

    .ulMenu {
        float: left;
        overflow: auto;
        height: 250px; /* 170 */
        width: 250px;
        border-right: 1px solid;
        background-color: aliceblue;
    }

    .li-selected{
        background: #ACEAFF;
    }

    .ul-parent-selected{
        background: #9DE7FF;
    }

    .li-parent-selected{
        background: #6FDBFF;
    }

    .liMenu{
        padding: 5px;
        padding-left: 10px;
        cursor: pointer;
    }

    .class-all-menu-container{
        overflow: hidden;
        border: 1px solid black;
        padding: 10px;
        background-color: whitesmoke;
        border-top-left-radius: 6px 6px;
        border-top-right-radius: 6px 6px;
        border-bottom-left-radius: 6px 6px;
        border-bottom-right-radius: 6px 6px;
    }

    .menu-container{
        overflow: hidden;
        border: 1px solid black;
    }

    .category-selected{
        width: 300px;
        float: left;
        height: 250px;
        border-right: 1px solid;
        background-color: aliceBlue;

    }

    .category-selected-text{
        background-color: aliceBlue;
        color: #E32;
        font-family: 'Gill Sans','lucida grande', helvetica, arial, sans-serif;
        font-size: 190%;
    }


    #path span{
        cursor: pointer;
    }


    form .required {
        font-weight: bold;
    }
    form .required label:after {
        color: #e32;
        content: '*';
        display:inline;
    }

    .required h3:after {
        color: #e32;
        content: '*';
        display:inline;
    }

    .requiredInput{
        background-color: #FFD1D1;
        border: 1px solid red;
    }
</style>

<?php //debug($this->request);  ?>

<div class="container-fluid" style="padding-top: 18px;">
    <div class="row">
        <div class="col-xs-12">


            <section id="add-product">
                <div  class="panel panel-primary" style="border: 1px solid black;">
                    <div class="panel-heading" style="background: url(/resources/app/img/escheresque_ste.png); border-bottom: 1px solid gold;">
                        <h3 class="panel-title">New publication</h3>
                    </div>
                    <div class="panel-body">

                        <div class="row">
                            <div class="col-xs-12">

                                <?php
                                    echo $this->Form->create('Product',  array('url' => "#",'role'=>'form'));
                                    echo $this->Form->hidden('Product.id');
                                ?>

                                <!-- Actions -->
                                <div class="row" style="margin-bottom: 10px;">
                                    <div class="col-xs-12">
                                        <?php
                                        /*
                                            when URL IS:

                                            /publicar           -> $url_action = false
                                            /editar             -> $url_action = 'editar'
                                            /editar_borrador    -> $url_action = 'editar_borrador'

                                        */
                                        if(isset($url_action)){
                                            // edit
                                            if($url_action =='edit'){
                                                $status = $this->request->data['Product']['status'];
                                                ?>
                                                <button id="update" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-refresh" aria-hidden="true"></span> Update</button>
                                                <?php if($status){  // esta publicado,  por lo tanto el elemento activate_container debe esta oculto. ?>
                                                    <button type="button" class="btn btn-default publication-status-button"><span class="glyphicon glyphicon-pause" aria-hidden="true"></span> Pause</button>
                                                <?php }else{        // esta pausado,    por lo tanto el elemento pause_container debe esta oculto. ?>
													<button type="button" class="btn btn-default publication-status-button"><span class="glyphicon glyphicon-play"></span> Enable</button>
                                                <?php } ?>
                                                <button id="delete" class="btn btn-danger" type="button"><span class="glyphicon glyphicon-remove-sign" aria-hidden="true"></span> Delete</button>
                                                <div id="debugTime" style="padding-top: 10px; display:none;">The publication was updated at <span id="lastTimeSave"></span> (Minutes <span id="minutesElapsed">0</span> ago)</div>
                                            <?php
                                            }
                                            // newProduct, editDraft
                                            if($url_action =='edit-draft' || $url_action == false){
                                                ?>
                                                <button id="publish"	class="btn btn-primary"	type="submit"   >Publish</button>
                                                <button id="save-now" 	class="btn btn-success"	type="button" style="margin-left: 4px;"  >Save Now</button>
                                                <button id="discard"	class="btn btn-warning"	type="button" style="margin-left: 4px;"  >Discard</button>
                                                <div id="debugTime" style="padding-top: 10px; display:none;">The draft was updated at <span id="lastTimeSave"></span> (Minutes <span id="minutesElapsed">0</span> ago)</div>
                                            <?php
                                            }
                                        }
                                        ?>
                                    </div>
                                </div>

                                <hr>

                                <!-- Form ProductTitle -->
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="form-group">
                                            <label class="control-label" for="ProductTitle"><span class="glyphicon glyphicon-bookmark"></span> Title</label>
                                            <?php echo $this->Form->input('Product.title',array('label'=>false,'div'=>false,'class'=>'form-control','name'=>'ProductTitle','placeholder'=>'')); ?>
                                            <span class="help-block" style="display: none;">Required</span>
                                        </div>
                                    </div>
                                </div>

                                <!-- Form ProductBody -->
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="form-group">
                                            <label class="control-label" for="ProductBody"><span class="glyphicon glyphicon-book"></span> Description</label>
                                            <?php echo $this->Form->textarea('Product.body',array('label'=>false,'div'=>false,'rows'=>7,'class'=>'form-control','name'=>'ProductBody')); ?>
                                            <span class="help-block" style="display: none;"><p class="text-danger">The description is required</p></span>
                                        </div>
                                    </div>
                                </div>

                                <!-- Form ProductPrice -->
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="form-group">
                                            <label class="control-label" for="ProductPrice"><span class="glyphicon glyphicon-tag"></span> Price</label>
                                            <div class="input-group col-xs-4">
                                                <div class="input-group-addon">$</div>
                                                <?php echo $this->Form->input('Product.price',array('label'=>false,'div'=>false,'type'=>'number','class'=>'form-control','name'=>'ProductPrice','placeholder'=>'Eje: 1000')); ?>
                                            </div>
                                            <span class="help-block" style="display: none;">Required</span>
                                        </div>
                                    </div>
                                </div>

                                <!-- Form ProductQuantity -->
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="form-group">
                                            <label class="control-label" for="ProductQuantity"><span class="glyphicon glyphicon-th"></span> Quantity in stock</label>
                                            <div class="input-group col-xs-4">
                                                <div class="input-group-addon">Units</div>
                                                <?php echo $this->Form->input('Product.quantity',array('label'=>false,'div'=>false,'type'=>'number','class'=>'form-control','name'=>'ProductQuantity','placeholder'=>'Eje: 100')); ?>
                                            </div>
                                            <span class="help-block" style="display: none;">Required</span>
                                        </div>
                                    </div>
                                </div>

                                <?php
                                echo $this->Form->end();
                                ?>


                            </div>
                        </div><!-- End .row -->
                    </div><!-- End .panel-body -->
                    <!-- Images -->
                    <div id="images" style="display: none"><!--<?php
                        if(isset($this->request->data['Image'])){
                            echo json_encode($this->request->data['Image']);
                        }
                    ?>--></div>
                    <ul class="list-group">
                        <li class="list-group-item" >
                            <h3 id="panels" class="page-header" style="margin-top: 10px;">Images  <small><button id="continue-upload" type="button" class="btn btn-link clickable" style="display: none;">Add more pictures!</button> <button id="upload-all" type="button" class="btn btn-link" style="display: none;">Upload images!</button></small></h3>
                            <div id="previews" class="well dropzone-previews" style="margin-bottom: 10px;">
                                <button id="first-files" class="btn btn-primary clickable">Select the images from the computer</button>
                            </div>
                        </li>
                    </ul>
                </div>

                <div class="alert alert-warning" role="alert">
                    <ul>
                        <li>When writing the title please follow this convention: Brand - Name - Relevant Features - Part Number or Model.</li>
                        <li>The images are obligatory. Without at least one image loaded, the system not displayed the publication to customers.</li>
                    </ul>
                </div>
            </section><!-- End #add-product -->


        </div>
    </div>
</div>


<!-- Modal para borrar la publicación -->
<div id="delete-product-modal" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				<h4 class="modal-title" id="myModalLabel">Do you really want to delete this post?</h4>
			</div>
			<div class="modal-body">
				A better alternative is to pause the publication and activate when the inventory it normalized.
			</div>
			<div class="modal-footer">
				<button id="delete-product-button" type="button" class="btn btn-danger">Confirm</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
			</div>
		</div>
	</div>
</div>

<!-- light box para visualizar mejor la imagen cargada de la publicación o borrador.
--------------------------------------------------------------------------------------------------------------->
<a href="" id="image-product"  style="display: none;"></a>


<?php

    // CSS
    $css = array();

    //  lightbox https://github.com/ashleydw/lightbox
//    array_push($css,'https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/3.0.3a/ekko-lightbox.min.css');
array_push($css,'/resources/bower_components/ekko-lightbox/dist/ekko-lightbox.min.css');

// dropzone - https://github.com/enyo/dropzone
//		array_push($css,'https://cdnjs.cloudflare.com/ajax/libs/dropzone/3.12.0/css/dropzone.css');
array_push($css,'/resources/bower_components/dropzone/downloads/css/dropzone.css');

    array_push($css,'/resources/app/css/base.css');

    $this->Html->css($css, null, array('inline' => false));

    // JS
    $scripts = array();

//  WYSIWYG ckeditor - http://ckeditor.com/
    array_push($scripts,'//cdn.ckeditor.com/4.4.6/standard/ckeditor.js');

//  Ekko Lightbox  - https://github.com/ashleydw/lightbox
//    array_push($scripts,'https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/3.0.3a/ekko-lightbox.min.js');
array_push($scripts,'/resources/bower_components/ekko-lightbox/dist/ekko-lightbox.min.js');

    //  jQuery Validation Plugin - https://github.com/jzaefferer/jquery-validation
//  array_push($scripts,'http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/jquery.validate.min.js');
//  array_push($scripts,'http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/additional-methods.min.js');
array_push($scripts,'/resources/bower_components/jquery-validation/dist/jquery.validate.js');
array_push($scripts,'/resources/bower_components/jquery-validation/dist/additional-methods.js');


    //  Purl - https://github.com/allmarkedup/purl
//  array_push($scripts,'https://cdnjs.cloudflare.com/ajax/libs/purl/2.3.1/purl.min.js');
array_push($scripts,'/resources/bower_components/purl/purl.js');


//  dropzone
//  array_push($scripts,'https://cdnjs.cloudflare.com/ajax/libs/dropzone/3.12.0/dropzone.min.js');
array_push($scripts,'/resources/bower_components/dropzone/downloads/dropzone.min.js');

    array_push($scripts,'/resources/app/js/base.publications.js');

    echo $this->Html->script($scripts,array('inline' => false));

?>
