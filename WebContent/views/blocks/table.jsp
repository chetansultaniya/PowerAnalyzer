<div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs--> 
    <div class="form-group" style="width:25%;">
      <label for="sel1">Select state to show data</label>
      <select class="form-control" id="stateList" onchange="demo()">
      	<option value="">------------Select State------------</option>
		<option value="Andaman_and_Nicobar_Islands">Andaman and Nicobar Islands</option>
		<option value="Andhra_Pradesh">Andhra Pradesh</option>
		<option value="Arunachal_Pradesh">Arunachal Pradesh</option>
		<option value="Assam">Assam</option>
		<option value="Bihar">Bihar</option>
		<option value="Chandigarh">Chhattisgarh</option>
		<option value="Goa">Goa</option>
		<option value="Gujarat">Gujarat</option>
		<option value="Haryana">Haryana</option>
		<option value="Himachal_Pradesh">Himachal Pradesh</option>
		<option value="Jammu_and_Kashmir">Jammu and Kashmir</option>
		<option value="Jharkhand">Jharkhand</option>
		<option value="Karnataka">Karnataka</option>
		<option value="Kerala">Kerala</option>
		<option value="mp">Madhya Pradesh</option>
		<option value="Maharashtra">Maharashtra</option>
		<option value="Manipur">Manipur</option>
		<option value="Meghalaya">Meghalaya</option>
		<option value="Nagaland">Nagaland</option>
		<option value="Orissa">Orissa</option>
		<option value="Punjab">Punjab</option>
		<option value="Rajasthan">Rajasthan</option>
		<option value="Tamil_Nadu">Tamil Nadu</option>
		<option value="Tripura">Tripura</option>
		<option value="Uttaranchal">Uttaranchal</option>
		<option value="Uttar_Pradesh">Uttar Pradesh</option>
		<option value="West_Bengal">West Bengal</option>
      </select><br>
      <button style="" class="btn btn-primary" id="load_data">Load Data</button>
    </div>
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Tables</li>
      </ol>
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Data Table Example</div>
        <div class="card-body">
          <div class="table-responsive" id="stateDataTable">
           
          </div>
        </div>
        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
      </div>
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
<script>
var selectedState;
var baseURL="${baseURL}";
function demo()
{
	var e = document.getElementById("stateList");
	selectedState = e.options[e.selectedIndex].value;
	return selectedState;
}
$(document).ready(function(){
 $('#load_data').click(function(){
  $.ajax({
   url:"${baseURL}/assets/csvfiles/"+selectedState+".csv",
   dataType:"text",
   success:function(data)
   {
    var employee_data = data.split(/\r?\n|\r/);
    var table_data = ' <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">';
    for(var count = 0; count<employee_data.length; count++)
    {
     var cell_data = employee_data[count].split(",");
     table_data += '<tr>';
     for(var cell_count=0; cell_count<cell_data.length; cell_count++)
     {
      if(count === 0)
      {
       table_data += '<th>'+cell_data[cell_count]+'</th>';
      }
      else
      {
       table_data += '<td>'+cell_data[cell_count]+'</td>';
      }
     }
     table_data += '</tr>';
    }
    table_data += '</table>';
    $('#stateDataTable').html(table_data);
   }
  });
 });
});
</script>
