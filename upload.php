<?php 
require_once("includes/header.php"); 
require_once("includes/classes/VideoDetailsFromProvider.php"); 
?>

<div class="column">
    <?php
    $formProvider = new VideoDetailsFromProvider($con);
    echo $formProvider->createUploadForm();
    ?>
</div>
<script>
$("form").submit(function(){
    $("#loadingModal").modal("show");
});
</script>

<div class="modal fade modalColor" id="loadingModal" tabindex="-1" role="dialog" aria-labelledby="loadingModal" aria-hidden="true" data-backdrop="static" data-keyboard="false">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-body">
        Please wait. This might take a while.
        <img src="assets/images/icons/loading-spinner.gif" alt="Loading">
      </div>
  </div>
</div>

<?php require_once("includes/footer.php"); ?>
                