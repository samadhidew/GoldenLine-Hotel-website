
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Page title -->
    <title>Product Portal</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/datatables.net-bs/css/dataTables.bootstrap.min.css" />
 
    
   

</head>
<body class="fixed-navbar sidebar-scroll">
       <jsp:include page="dashboard.jsp"/>
       
<div id="wrapper">

<div class="small-header">
    <div class="hpanel">
        <div class="panel-body">
            <div id="hbreadcrumb" class="pull-right">
                <ol class="hbreadcrumb breadcrumb">
                    <li><a href="#">Dashboard</a></li>
                    
                    <li class="active">
                        <span>Room Portal</span>
                    </li>
                </ol>
            </div>
            <h2 class="font-light m-b-xs">
                Room Portal
            </h2>
            
        </div>
    </div>
</div>

<div class="content">
<div>
    
 <!-- content -->

<div class="row">
    
    <!--tab component -->
    <div class="col-lg-10">
        <div class="hpanel">
            <div class="nav nav-tabs">
                <ul class="nav nav-tabs">
                    <li class="active"><a data-toggle="tab" href="#tab-8">Rooms</a></li>
                    <li ><a data-toggle="tab" href="#tab-9">Halls</a></li>
                    </ul>
                <div class="tab-content ">
                    <div id="tab-8" class="tab-pane active">
                        <div class="panel-body">
                            
                         <div class="row " style="padding-bottom:20px;">
                            <div class="col-md-12 text-right">
                                <button class="btn btn-primary " id="CreateCustomer" type="button"><i class="fa fa-plus"></i> New</button>
                            </div>
                        </div>
                          
                    <table id="tblTypes" class="table table-striped table-bordered table-hover" width="100%">
                        <thead>
                        <tr>
                            <th>Index</th>
                            <th>Room Number</th>
                            <th>Room Type</th>
                            <th>Meal Plan</th>
                            <th>Price/ Per Unit</th>                          
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        
                        <c:forEach items="${Rooms}" var="item" varStatus="loop">
                                    <tr>
                                        <td>${loop.index+1}</td>
                                        <td>${item.getRoomNo()}</td>
                                        <td>${item.getrTypeStr()}</td>
                                        <td>${item.getMealType()}</td>
                                        <td>${item.getPrice()}</td>
                                        <td>
                                            <button class="btn btn-primary btn-circle EditCustomer" type="button" data-type='${item.getJson()}'><i class="fa fa-edit"></i></button>
                                            <button class="btn btn-danger btn-circle DeleteRoom" type="button" id="" data-type='${item.getJson()}'><i class="fa fa-times"  ></i></button>
                  
                                        </td>                                
                                    </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                     
                        </div>
                    </div>
                    
                    <div id="tab-9" class="tab-pane">
                        <div class="panel-body">
                            
                         <div class="row " style="padding-bottom:20px;">
                            <div class="col-md-12 text-right">
                                <button class="btn btn-primary " id="CreateHall" type="button"><i class="fa fa-plus"></i> New</button>
                            </div>
                        </div>
                          
                    <table id="tblHalls" class="table table-striped table-bordered table-hover" width="100%">
                        <thead>
                        <tr>
                            <th>Index</th>
                            <th>Hall Number</th>
                            <th>Hall Type</th>
                            <th>Volume</th>
                            <th>Charge</th>                          
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        
                        <c:forEach items="${Halls}" var="item" varStatus="loop">
                                    <tr>
                                        <td>${loop.index+1}</td>
                                        <td>${item.getHallNumber()}</td>
                                        <td>${item.getHallTypeStr()}</td>
                                        <td>${item.getVolume()}</td>
                                        <td>${item.getRate()}</td>
                                        <td>
                                            <button class="btn btn-primary btn-circle EditHall" type="button" data-type='${item.getJson()}'><i class="fa fa-edit"></i></button>
                                            <button class="btn btn-danger btn-circle DeleteHall" type="button" id="" data-type='${item.getJson()}'><i class="fa fa-times"  ></i></button>
                  
                                        </td>                                
                                    </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                     
                        </div>
                    </div>
                    
                </div>

            </div>
        </div>
    </div>
    
   <!--End of tab component -->
    </div>
    
    <!--Create Model Component -->
   <div class="modal fade" id="myModalCreateCustomer" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="color-line"></div>
                                <div class="modal-header text-center">
                                    <h4 class="modal-title">Create Room </h4>
                                    <small class="font-bold">Room specifications could be defined here.!</small>
                                </div>
                                <div class="modal-body">
                                    
                                        
                                     <!--     -->
                                       <form role="form" id="form_createcustomer" class="form-horizontal" action="${pageContext.request.contextPath}/Room.admin"  enctype="multipart/form-data" method="post">
                                            
                                           <input type="text" value="CreateRoom" name="action"  hidden >       
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Room # <span class="text-danger">(*)</span></label>
                                            <input type="text" class="form-control input-md" name="Number" v-model="customerCreate.name" autocomplete="off">
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Room Type<span class="text-danger">(*)</span></label>
                                            
                                            <select class="form-control m-b" name="RType">
                                                    <option></option>
                                                    <option value="1">Family Room</option>								
						    <option value="2">Classic Room</option>
						    <option value="4">Superior Room</option>
						    <option value="3">Luxury Room</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Meal Plan<span class="text-danger">(*)</span></label>
                                            <select class="form-control m-b" name="Meal">
                                                    <option></option>
                                                    <option value="1">Bed & Breakfast</option>
                                                    <option value="2">Half Board</option>
                                                    <option value="3">Full Board</option>
                                                    <option value="4">None</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Price <span class="text-danger">(*)</span></label>
                                            <input type="number" class="form-control input-md" name="Price" v-model="customerCreate.email" autocomplete="off">
                                        </div>
                                    </div>
                                  
                                </div>

                                
                                <div class="form-group">
                                                <div class="col-sm-8 col-sm-offset-2">
                                                    <button class="btn btn-default" type="button" data-dismiss="modal">Cancel</button>
                                                    <button class="btn btn-primary" type="submit">Save</button>
                                                </div>
                                            </div>
                                        </form>
                                </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
   <!-- End of model -->

   <!--Edit Model Component -->
   <div class="modal fade" id="myModalEditCustomer" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="color-line"></div>
                                <div class="modal-header text-center">
                                    <h4 class="modal-title">Update Room Details </h4>
                                    <small class="font-bold">Helps in Room Details Management!</small>
                                </div>
                                <div class="modal-body">
                                      <form role="form" id="form_editRoom" class="form-horizontal" method="POST" action="${pageContext.request.contextPath}/Room.admin">
                                            
                                           <input type="text" value="UpdateRoom" name="action"  hidden >
                                           <input type="text" id="rid" name="id"  hidden >
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Room # <span class="text-danger">(*)</span></label>
                                            <input type="text" class="form-control input-md" name="Number" id="rno" v-model="customerCreate.name" autocomplete="off">
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Room Type<span class="text-danger">(*)</span></label>
                                            
                                            <select class="form-control m-b" id="rtype" name="RType">
                                                    <option></option>
                                                    
                                                    <option value="1">Family Room</option>								
						    <option value="2">Classic Room</option>
						    <option value="4">Superior Room</option>
						    <option value="3">Luxury Room</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Meal Plan<span class="text-danger">(*)</span></label>
                                            <select class="form-control m-b" id="rmeal" name="Meal">
                                                    <option></option>
                                                    <option value="1">Bed & Breakfast</option>
                                                    <option value="2">Half Board</option>
                                                    <option value="3">Full Board</option>
                                                    <option value="4">None</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Price <span class="text-danger">(*)</span></label>
                                            <input type="number" id="rprice" class="form-control input-md" name="Price" v-model="customerCreate.email" autocomplete="off">
                                        </div>
                                    </div>
                                </div>

                                
                                <div class="form-group">
                                                <div class="col-sm-8 col-sm-offset-2">
                                                    <button class="btn btn-default" type="button" data-dismiss="modal">Cancel</button>
                                                    <button class="btn btn-primary" type="submit">Save</button>
                                                </div>
                                            </div>
                                        </form>
                                </div>
                                
                            </div>
                        </div>
                    </div>
   <!-- End of model -->
    
   <!--View Model Component -->
   <div class="modal fade" id="myModalViewCustomer" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="color-line"></div>
                                <div class="modal-header text-center">
                                    <h4 class="modal-title">View Customer Profile</h4>
                                    <small class="font-bold">Helps in Sales Management !</small>
                                </div>
                                <div class="modal-body">
                                    <form role="form" id="" class="form-horizontal"  method="POST" action="${pageContext.request.contextPath}/CustomerServlet.sales">
                                           
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Customer Name <span class="text-danger">(*)</span></label>
                                            <input type="text" class="form-control input-md" id="vname" name="name" v-model="customerCreate.name" autocomplete="off" disabled="">
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>NIC Number <span class="text-danger">(*)</span></label>
                                            <input type="text" class="form-control input-md" id="vnic" name="nic" v-model="customerCreate.nic" autocomplete="off" disabled="">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Phone</label>
                                            <input type="text" class="form-control input-md" id="vphone" name="phone" v-model="customerCreate.phone" autocomplete="off" disabled="">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Email <span class="text-danger">(*)</span></label>
                                            <input type="text" class="form-control input-md" id="vemail" name="email" v-model="customerCreate.email" autocomplete="off" disabled="">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Address</label>
                                            <input type="text" class="form-control input-md" id="vaddress" name="address" v-model="customerCreate.address" autocomplete="off" disabled="">
                                        </div>
                                    </div>
                                </div>
                                            <div class="form-group">
                                                <div class="col-sm-8 col-sm-offset-2">
                                                    <button class="btn btn-default" type="button" data-dismiss="modal">Cancel</button>
                                                    
                                                </div>
                                            </div>
                                        </form>
                                </div>
                                
                            </div>
                        </div>
                    </div>
   <!-- End of model -->
   
   <!-- Hall models start from here -->
    <!--Create Model Component -->
   <div class="modal fade" id="myModalCreateHall" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="color-line"></div>
                                <div class="modal-header text-center">
                                    <h4 class="modal-title">Create Hall </h4>
                                    <small class="font-bold">Hall specifications could be defined here.!</small>
                                </div>
                                <div class="modal-body">
                                    
                                        
                                     <!--     -->
                                       <form role="form" id="form_createhall" class="form-horizontal" action="${pageContext.request.contextPath}/Room.admin"  enctype="multipart/form-data" method="post">
                                            
                                           <input type="text" value="CreateHall" name="action"  hidden >       
                                <div class="row">
                                    
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Hall Type<span class="text-danger">(*)</span></label>
                                            
                                            <select class="form-control m-b" name="HType" required>
                                                    <option></option>
                                                    <option value="1">Classic Type</option>
                                                    <option value="2">Luxury Type</option>
                                                    
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Volume<span class="text-danger">(*)</span></label>
                                            <input type="number" class="form-control input-md" name="Vol"  autocomplete="off">
                                        
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Rate <span class="text-danger">(*)</span></label>
                                            <input type="number" class="form-control input-md" name="Rate" autocomplete="off">
                                        </div>
                                    </div>
                                  
                                </div>

                                
                                <div class="form-group">
                                                <div class="col-sm-8 col-sm-offset-2">
                                                    <button class="btn btn-default" type="button" data-dismiss="modal">Cancel</button>
                                                    <button class="btn btn-primary" type="submit">Save</button>
                                                </div>
                                            </div>
                                        </form>
                                </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
   <!-- End of model -->

   <!--Edit Model Component -->
   <div class="modal fade" id="myModalEditHall" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="color-line"></div>
                                <div class="modal-header text-center">
                                    <h4 class="modal-title">Update Hall Details </h4>
                                    <small class="font-bold">Helps in Hall Details Management!</small>
                                </div>
                                <div class="modal-body">
                                      <form role="form" id="form_editHall" class="form-horizontal" method="POST" action="${pageContext.request.contextPath}/Room.admin">
                                            
                                           <input type="text" value="UpdateHall" name="action"  hidden >
                                           <input type="text" id="hid" name="id"  hidden >
                                <div class="row">
                                    
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Room Type<span class="text-danger">(*)</span></label>
                                            
                                            <select class="form-control m-b" id="htype" name="HType">
                                                    <option></option>
                                                    <option value="1">Classic Type</option>
                                                    <option value="2">Luxury Type</option>
                                                    
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Volume <span class="text-danger">(*)</span></label>
                                            <input type="number" class="form-control input-md" name="Vol" id="vol" v-model="customerCreate.name" autocomplete="off">
                                        </div>
                                    </div>

                                </div>

                                <div class="row">
                                    
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Rate <span class="text-danger">(*)</span></label>
                                            <input type="number" id="hprice" class="form-control input-md" name="Rate"  autocomplete="off">
                                        </div>
                                    </div>
                                </div>

                                
                                <div class="form-group">
                                                <div class="col-sm-8 col-sm-offset-2">
                                                    <button class="btn btn-default" type="button" data-dismiss="modal">Cancel</button>
                                                    <button class="btn btn-primary" type="submit">Save</button>
                                                </div>
                                            </div>
                                        </form>
                                </div>
                                
                            </div>
                        </div>
                    </div>
   <!-- End of model -->
    
</div>
</div>
</div> 
       
<script src="${pageContext.request.contextPath}/css/jquery-validation/jquery.validate.min.js"></script> 
 <!-- DataTables -->
<script src="${pageContext.request.contextPath}/css/datatables/media/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/css/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- DataTables buttons scripts -->
<script src="${pageContext.request.contextPath}/css/pdfmake/build/pdfmake.min.js"></script>
<script src="${pageContext.request.contextPath}/css/pdfmake/build/vfs_fonts.js"></script>
<script src="${pageContext.request.contextPath}/css/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="${pageContext.request.contextPath}/css/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="${pageContext.request.contextPath}/css/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="${pageContext.request.contextPath}/css/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
 

 <script>

    $(document).ready(function () {
        //$('#myModal').modal('show');
        
        
        
         
        var currentType;
        $(document).on("submit", "#form_createcustomer", function(event) {
                var $form = $(this);
                $.post($form.attr("action"), $form.serialize(), function(response) {
                    $('#myModalCreate').modal('hide');
                    
                    if(response.IsSuccess)
                    {
                        
                      swal({ title: "Created!",
                      text: "Room has been created!.",
                      type: "success" }, function() {
                            window.location.href = window.location.href
                     });
                      
                    }
                    else
                    {
                       swal("Cancelled", "Something Went Wrong", "error"); 
                    }
                });

                event.preventDefault();
                 // Important! Prevents submitting the form.
        });
        
        
        $(document).on("submit", "#form_editRoom", function(event) {
                var $form = $(this);

                $.post($form.attr("action"), $form.serialize(), function(response) {
                    $('#myModalEdit').modal('hide');
                    
                    if(response.IsSuccess)
                    {
                        
                      swal({title: "Logged!",
                      text: "Room Details Updated Successfully!.",
                      type: "success"}, function() {
                            window.location.href = window.location.href
                     });
           
                    }
                    else
                    {
                       swal("Cancelled", "Something Went Wrong", "error"); 
                    }
                });

                event.preventDefault(); // Important! Prevents submitting the form.
        });
        
        
       $(document).on("submit", "#form_createhall", function(event) {
                var $form = $(this);
                $.post($form.attr("action"), $form.serialize(), function(response) {
                    $('#myModalCreateHall').modal('hide');
                    
                    if(response.IsSuccess)
                    {
                        
                      swal({ title: "Created!",
                      text: "Hall has been created!.",
                      type: "success" }, function() {
                            window.location.href = window.location.href
                     });
                      
                    }
                    else
                    {
                       swal("Cancelled", "Something Went Wrong", "error"); 
                    }
                });

                event.preventDefault();
                 // Important! Prevents submitting the form.
        });
        
        
        $(document).on("submit", "#form_editHall", function(event) {
                var $form = $(this);

                $.post($form.attr("action"), $form.serialize(), function(response) {
                    $('#myModalEditHall').modal('hide');
                    
                    if(response.IsSuccess)
                    {
                        
                      swal({title: "Logged!",
                      text: "Hall Details Updated Successfully!.",
                      type: "success"}, function() {
                            window.location.href = window.location.href
                     });
           
                    }
                    else
                    {
                       swal("Cancelled", "Something Went Wrong", "error"); 
                    }
                });

                event.preventDefault(); // Important! Prevents submitting the form.
        });
        
      
        
        
        $("#form_createcustomer").validate({
            rules: {
                Number: {
                    required: true,                   
                },
                Meal: {
                    required: true
                },
                RType: {
                    required: true,                   
                },
                Price: {
                    required: true,
                    number:true
                },
                email: {
                    required: true, 
                    email: true
                }
            }
            
                //form.submit();
                
            
        });
      
        
        $("#form_editRoom").validate({
            rules: {
                Number: {
                    required: true,                   
                },
                Meal: {
                    required: true
                },
                RType: {
                    required: true,                   
                },
                Price: {
                    required: true,
                    number:true
                },
                email: {
                    required: true, 
                    email: true
                }
            }
            
        });
    
    $("#form_createhall").validate({
            rules: {
                Rate: {
                    required: true, 
                    number:true
                },
                Vol: {
                    required: true,
                    number:true
                },
                HType: {
                    required: true,                   
                }
            }
            
                //form.submit();
                
            
        });
      
        
        $("#form_editHall").validate({
            rules: {
                Rate: {
                    required: true, 
                    number:true
                },
                Vol: {
                    required: true,
                    number:true
                },
                HType: {
                    required: true,                   
                }
            }
            
        });
      
        
       // Attach Button click event listener 
         $('.DeleteRoom').click(function () {
             var imageObj = $(this).data('type');
             // set modal values
             currentType = imageObj.id;
            swal({
                        title: "Are you sure?",
                        text: "You will not be able to recover this Room Details!",
                        type: "warning",
                        showCancelButton: true,
                        confirmButtonColor: "#DD6B55",
                        confirmButtonText: "Yes, delete it!",
                        cancelButtonText: "No, cancel!",
                        closeOnConfirm: false,
                        closeOnCancel: false },
                    function (isConfirm) 
                    {
                            
                           if (isConfirm)  {
                            var form = $(this).closest('form');
                            form = form.serializeArray();
                            form = form.concat([
                                {name: "id", value:currentType } ,
                                {name: "action", value:"DeleteRoom" }

                            ]);
                            $.post('${pageContext.request.contextPath}/Room.admin', form, function(d) {
                                
                                if (d.IsSuccess) {
                                    swal({title: "Deleted!",
                      text: "Room details has been deleted.",
                      type: "success"}, function() {
                            window.location.href = window.location.href
                     });
                                } else {
                                    swal("Cancelled", "Deletion Failed!", "error");
                                }
                             });
                            
                        } else 
                        {
                            swal("Cancelled", "Room details Saved!", "error");
                        }
                    });
        });
         
         $('.DeleteHall').click(function () {
             var imageObj = $(this).data('type');
             // set modal values
             currentType = imageObj.id;
            swal({
                        title: "Are you sure?",
                        text: "You will not be able to recover this Hall Details!",
                        type: "warning",
                        showCancelButton: true,
                        confirmButtonColor: "#DD6B55",
                        confirmButtonText: "Yes, delete it!",
                        cancelButtonText: "No, cancel!",
                        closeOnConfirm: false,
                        closeOnCancel: false },
                    function (isConfirm) 
                    {
                            
                           if (isConfirm)  {
                            var form = $(this).closest('form');
                            form = form.serializeArray();
                            form = form.concat([
                                {name: "id", value:currentType } ,
                                {name: "action", value:"DeleteHall" }

                            ]);
                            $.post('${pageContext.request.contextPath}/Room.admin', form, function(d) {
                                
                                if (d.IsSuccess) {
                                    swal({title: "Deleted!",
                      text: "Hall details has been deleted.",
                      type: "success"}, function() {
                            window.location.href = window.location.href
                     });
                                } else {
                                    swal("Cancelled", "Deletion Failed!", "error");
                                }
                             });
                            
                        } else 
                        {
                            swal("Cancelled", "Hall details Saved!", "error");
                        }
                    });
        });
        
        
       
        $(".ViewCustomer").click(function(){
             var imageObj = $(this).data('type');
             // set modal values
             $("#vphone").val(imageObj.phone);
             $("#vemail").val(imageObj.email);
             $("#vid").val(imageObj.id);
             $("#vaddress").val(imageObj.address);
             $("#vname").val(imageObj.name);
             $("#vnic").val(imageObj.nic);
             // show Modal
             $('#myModalViewCustomer').modal('show');
        });
        
        
        $("#CreateCustomer").click(function(){
             // show Modal
             $('#myModalCreateCustomer').modal('show');
        });
        
        $(".EditCustomer").click(function(){
             var imageObj = $(this).data('type');
             // set modal values
             $("#rno").val(imageObj.roomNo);
             $("#rprice").val(imageObj.price);
             $("#rmeal").val(imageObj.mealType);
             $("#rtype").val(imageObj.rType);
             $("#rid").val(imageObj.id);
             
             // show Modal
             $('#myModalEditCustomer').modal('show');
        });
        
        $("#CreateHall").click(function(){
             // show Modal
             $('#myModalCreateHall').modal('show');
        });
        
        $(".EditHall").click(function(){
             var imageObj = $(this).data('type');
             // set modal values
             $("#hprice").val(imageObj.rate);
             $("#vol").val(imageObj.volume);
             $("#htype").val(imageObj.type);
             $("#hid").val(imageObj.id);
             
             // show Modal
             $('#myModalEditHall').modal('show');
        });
        
        
        $(function () {

      

        // Initialize Example 1
        $('#tblHalls').dataTable( {
         //   "ajax": '${pageContext.request.contextPath}/api/datatables.json',
            
            dom: "<'row'<'col-sm-4'l><'col-sm-4 text-center'B><'col-sm-4'f>>tp",
            "lengthMenu": [ [10, 25, 50, -1], [10, 25, 50, "All"] ],
            buttons: [
                {extend: 'copy',className: 'btn-sm'},
                {extend: 'csv',title: 'ExampleFile', className: 'btn-sm'},
                {extend: 'pdf', title: 'ExampleFile', className: 'btn-sm'},
                {extend: 'print',className: 'btn-sm'}
            ]
           
        });


          $('#tblTypes').dataTable( {
         //   "ajax": '${pageContext.request.contextPath}/api/datatables.json',
            
            dom: "<'row'<'col-sm-4'l><'col-sm-4 text-center'B><'col-sm-4'f>>tp",
            "lengthMenu": [ [10, 25, 50, -1], [10, 25, 50, "All"] ],
            buttons: [
                {extend: 'copy',className: 'btn-sm'},
                {extend: 'csv',title: 'ExampleFile', className: 'btn-sm'},
                {extend: 'pdf', title: 'ExampleFile', className: 'btn-sm'},
                {extend: 'print',className: 'btn-sm'}
            ]
           
        });
        // Initialize Example 2
        $('#example2').dataTable();
        
        


    });
    
        
    });
    


</script>     
       
</body>
</html>
