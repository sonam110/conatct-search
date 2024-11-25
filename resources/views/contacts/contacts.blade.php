@extends('layouts.app')
@section('content')
 <div class="container">
    <h2>Assignment: Contact Search Feature </h2>
    <form>

        <div class="row">
            <div class="form-group col-3">
                <label for="first_name">First Name</label>
                <input type="text" id="first_name" placeholder="Enter first name">
            </div>
            <div class="form-group col-3">
                <label for="last_name">Last Name</label>
                <input type="text" id="last_name" placeholder="Enter last name">
            </div>
            <div class="form-group col-3">
                <label for="dob">Date of Birth</label>
                <input type="date" id="dob">
            </div>
            <div class="form-group col-9">
                <label for="address">Street Address</label>
                <input type="text" id="address" placeholder="Enter street address">
            </div>
        </div>


        <div class="row">
            <div class="form-group col-3">
              <label for="email">Email Address</label>
              <input type="email" id="email" placeholder="Enter email">
            </div>
            <div class="form-group col-3">
                <label for="phone">Phone Number</label>
                <input type="text" id="phone" placeholder="Enter phone number">
            </div>
            <div class="form-group col-3">
               
            </div>
            <div class="form-group col-3">
                <label for="city">City</label>
                <input type="text" id="city" placeholder="Enter city">
            </div>
            <div class="form-group col-3">
                <label for="state">State</label>
                <select id="state">
                    <option value="">Select State</option>
                    @foreach($allstates as $key => $state)
                        <option value="{{ $state }}">{{ $state }}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group col-3">
                <label for="zip">Zip Code</label>
                <input type="text" id="zipcode" placeholder="Enter zip code">
            </div>
            <input type="hidden" id="checkboxvalue">
        </div>

        <div class="form-group">
            <button type="button" id="search">Search</button>
        </div>
    </form>
     <br>
     <h4> Using Databse Query<h4>
    <div class="table-responsive">
        <table id="exampleTable" class="table table-bordered">
            <thead>
                <tr>
                    <th>Select</th>
                    <th>Name</th>
                    <th>DOB</th>
                    <th>Address</th>
                    <th>City</th>
                    <th>State</th>
                    <th>Zip</th>
                    <th>Email</th>
                    <th>Phone</th>
                </tr>
            </thead>
            <tbody>
              
                
            </tbody>
        </table>
    </div>
    <div class="table-responsive">
        <table id="exampleTableJson" class="table table-bordered">
            <thead>
                <tr>
                    <th>Select</th>
                    <th>Name</th>
                    <th>DOB</th>
                    <th>Address</th>
                    <th>City</th>
                    <th>State</th>
                    <th>Zip</th>
                    <th>Email</th>
                    <th>Phone</th>
                </tr>
            </thead>
            <tbody>
              
                
            </tbody>
        </table>
    </div>
</div>
 

@endsection
@section('extrajs')
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>

<script type="text/javascript">
var table;
$(document).ready( function () { 
     table = $('#exampleTableJson').DataTable({
       "processing": true,
       "serverSide": true,
       searching: false,
       bSort: false,
       lengthChange: false,
       "ajax":{
           'url' : '{{ route('conatact-list-json') }}',
           'type' : 'POST',
           "data": function(d) {
            d.first_name     =  $('#first_name').val();
            d.last_name   = $('#last_name').val();
            d.dob   = $('#dob').val();
            d.address   = $('#address').val();
            d.email = $('#email').val();
            d.phone   = $('#phone').val();
            d.state   = $('#state').val();
            d.city   = $('#city').val();
            d.zipcode   = $('#zipcode').val();
            d.checkboxvalue   = $('#checkboxvalue').val();
        },
           'headers': {
            'X-CSRF-TOKEN': '{{ csrf_token() }}'
        }
    },
    "order": [["1", "DESC" ]],
    "columns": [
    { "data": 'check', orderable: false, searchable: false},
    { "data": "name" },
    { "data": "dob" },
    { "data": "address" },
    { "data": "city" },
    { "data": "state" },
    { "data": "zipcode" },
    { "data": "email" },
    { "data": "phone" },
    ],
        preDrawCallback: function(settings) {
            if ($.fn.DataTable.isDataTable('#exampleTableJson')) {
                var dt = $('#exampleTableJson').DataTable();
                var settings = dt.settings();
                if (settings[0].jqXHR) {
                    settings[0].jqXHR.abort();
                }
            }
        }
   });
  
  
    $('#search').on('click', function(e) {
        table.draw();
    });



});
   
    
    let selectedCheckIds = [];

    function checkboxClicked(checkbox) {
        const id = checkbox.value; 

        if (checkbox.checked) {

            if (!selectedCheckIds.includes(id)) {
                selectedCheckIds.push(id);
            }
        } else {

            selectedCheckIds = selectedCheckIds.filter(selectedId => selectedId !== id);
        }

       $('#checkboxvalue').val(selectedCheckIds);
       table.draw();
    }

</script>
@endsection