


<section >
  <div class="container profileCard py-5">
  <!--   <div class="row">
      <div class="col">
        <nav aria-label="breadcrumb" class="bg-body-tertiary rounded-3 p-3 mb-4">
          <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item"><a href="#">User</a></li>
            <li class="breadcrumb-item active" aria-current="page">User Profile</li>
          </ol>
        </nav>
      </div>
    </div>
--> 

<!--AVATAR  https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp -->
<c:if test="${not empty alumniObj}" >
    <div class="row fs-5">
      <div class="col-lg-4">
        <div class="card mb-4">
          <div class="card-body text-center">
            <img src="${alumniObj.profile_img }" alt="avatar"
              class="rounded-circle img-fluid" style="width: 150px;">
            <h5 class="my-3 fs-4">${alumniObj.fullname}
            	<c:if test="${not empty alumniObj.status}">
    <i class='bx bxs-badge-check'></i>
</c:if>
                                  
            
            </h5>
            <p class="text-muted mb-1">${alumniObj.work }, ${alumniObj.company}</p>
            <p class="text-muted mb-4"></p>
            <div class="d-flex justify-content-center mb-2">
              <button  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-primary">Follow</button>
              <button  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-primary ms-1">Message</button>
            </div>
          </div>
        </div>
        <div class="card card-links fs-5 mb-4 mb-lg-0">
          <div class="card-body p-0">
            <ul class="list-group list-group-flush rounded-3">
              <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                <i class='bx bxl-linkedin-square bx-tada bx-rotate-90 fs-3' ></i>
                <p class="mb-0">${alumniObj.linkdnLink}</p>
              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                <i class='bx bxl-github bx-tada bx-rotate-90 fs-3' ></i>
                <p class="mb-0">${alumniObj.githubLink}</p>
              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                <i class='bx bxl-instagram-alt bx-tada bx-rotate-90 fs-3' ></i>
                <p class="mb-0">@mdbootstrap</p>
              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center p-3">
               <i class='bx bxl-twitter bx-tada bx-rotate-90 fs-3' ></i>
                <p class="mb-0">mdbootstrap</p>
              </li>
             
            </ul>
          </div>
        </div>
      </div>
      <div class="col-lg-8">
        <div class="card mb-4">
          <div class="card-body">
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Full Name</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0">${alumniObj.fullname}</p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Email</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0">${alumniObj.email}</p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Batch</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0">${alumniObj.batch}</p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Branch</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0">${alumniObj.branch}</p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Work</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0">${alumniObj.work }, ${ alumniObj.company}</p>
              </div>
            </div>
            <hr>
            
          </div>
        </div>
        <div class="row">
          <div class="col-md-6">
            <div class="card mb-4 mb-md-0">
              <div class="card-body">
                <p class="mb-4 fs-3">Skills
                </p>
                <p class="mb-1" >Web Design</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 80%" aria-valuenow="80"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" >Website Markup</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 72%" aria-valuenow="72"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1">One Page</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 89%" aria-valuenow="89"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1">Mobile Template</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 55%" aria-valuenow="55"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" >Backend API</p>
                <div class="progress rounded mb-2" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 66%" aria-valuenow="66"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="card mb-4 mb-md-0">
              <div class="card-body">
                <p class="mb-4 fs-3"><span class="text-primary font-italic me-1 fs-6">New</span> Project Status
                </p>
                <p class="mb-1">Web Design</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 80%" aria-valuenow="80"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1">Website Markup</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 72%" aria-valuenow="72"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1">One Page</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 89%" aria-valuenow="89"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1">Mobile Template</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 55%" aria-valuenow="55"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1">Backend API</p>
                <div class="progress rounded mb-2" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 66%" aria-valuenow="66"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="d-flex justify-content-center gap-5">
        
        <form action="../verify-alumni" method="post">
 <input required name="id" type="hidden" class="form-control" value="${alumni.id }">
 	 <button type="submit" class="btn google-btn px-5 py-2 "><i class='bx bx-badge-check mx-1'></i>Verify</button>
      
        
 </form>
         
          <form action="../verify-alumni" method="post">
 <input required name="id" type="hidden" class="form-control" value="${alumni.id }">
 	 <button type="submit" class="btn google-btn px-5 py-2 "><i class='bx bx-badge-check mx-1'></i>Verify</button>
      
        
 </form>
           </div>
      
      </div>
      
    </div>
    
  </div>
  </c:if> 
</section>
