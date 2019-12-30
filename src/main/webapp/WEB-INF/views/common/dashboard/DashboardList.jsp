<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 		uri="http://java.sun.com/jsp/jstl/core"%>

<div class="d-sm-flex align-items-center justify-content-between mb-4">
	<h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
</div>
<div class="row">
	<div class="col-xl-3 col-md-6 mb-4">
		<div class="card border-left-primary shadow h-100 py-2">
			<div class="card-body">
				<div class="row no-gutters align-items-center">
					<div class="col mr-2">
						<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">주기적인 데몬</div>
						<div class="h5 mb-0 font-weight-bold text-gray-800"><c:out value="${intervalCount }"/></div>
					</div>
					<div class="col-auto">
	          			<i class="fas fa-tasks fa-2x text-gray-300"></i>
	        		</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
    	<div class="card border-left-success shadow h-100 py-2">
        	<div class="card-body">
          		<div class="row no-gutters align-items-center">
            		<div class="col mr-2">
              			<div class="text-xs font-weight-bold text-success text-uppercase mb-1">하루에 한번 데몬</div>
              			<div class="h5 mb-0 font-weight-bold text-gray-800"><c:out value="${everydayCount }"/></div>
            		</div>
            		<div class="col-auto">
              			<i class="fas fa-tasks fa-2x text-gray-300"></i>
            		</div>
          		</div>
        	</div>
      	</div>
    </div>
    
    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
      	<div class="card border-left-info shadow h-100 py-2">
        	<div class="card-body">
          		<div class="row no-gutters align-items-center">
	            	<div class="col mr-2">
              			<div class="text-xs font-weight-bold text-info text-uppercase mb-1">데몬 성공 (1월)</div>
              			<div class="row no-gutters align-items-center">
                			<div class="col-auto">
                  				<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">100%</div>
                			</div>
                			<div class="col">
                  				<div class="progress progress-sm mr-2">
                    				<div class="progress-bar bg-info" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                  				</div>
                			</div>
              			</div>
            		</div>
            		<div class="col-auto">
              			<i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
            		</div>
          		</div>
        	</div>
      	</div>
    </div>

    <!-- Pending Requests Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
      	<div class="card border-left-danger shadow h-100 py-2">
        	<div class="card-body">
          		<div class="row no-gutters align-items-center">
	            	<div class="col mr-2">
              			<div class="text-xs font-weight-bold text-danger text-uppercase mb-1">데몬 실패 (1월) </div>
              			<div class="row no-gutters align-items-center">
                			<div class="col-auto">
                  				<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">0%</div>
                			</div>
                			<div class="col">
                  				<div class="progress progress-sm mr-2">
                    				<div class="progress-bar bg-danger" role="progressbar" style="width: 0%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                  				</div>
                			</div>
              			</div>
            		</div>
            		<div class="col-auto">
              			<i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
            		</div>
          		</div>
        	</div>
      	</div>
    </div>
</div>

<div class="row">
	<div class="col-xl-12 col-lg-7">
     	<div class="card shadow mb-4">
       	<!-- Card Header - Dropdown -->
       		<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
         		<h6 class="m-0 font-weight-bold text-primary">년간 성공률</h6>
         		<div class="dropdown no-arrow">
           <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
             <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
           </a>
         </div>
       </div>
       <!-- Card Body -->
       <div class="card-body">
         <div class="chart-area">
           <canvas id="myAreaChart"></canvas>
         </div>
       </div>
     </div>
   </div>
</div>


<!-- Page level plugins -->
<script src="<c:url value='/resources/vendor/chart.js/Chart.min.js'/>"></script>

<!-- Page level custom scripts -->
<script src="<c:url value='/resources/js/demo/chart-area-demo.js'/>"></script>
<%-- <script src="<c:url value='/resources/js/demo/chart-pie-demo.js'/>"></script> --%>