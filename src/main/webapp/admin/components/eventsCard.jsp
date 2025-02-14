<style>
	.card  {
    margin-bottom: 20px;
   
}
 
.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: var(--sidebar-color);
    background-clip: border-box;
    border: 0 solid transparent;
    border-radius: 0;
    color:var(--text-color);
}
 .el-element-overlay .white-box {
     padding: 0
 }
 
 .el-element-overlay .el-card-item {
     position: relative;
     padding-bottom: 20px
 }
 
 .el-element-overlay .el-card-item .el-card-avatar {
     margin-bottom: 20px
 }
 
 .el-element-overlay .el-card-item .el-card-content {
     text-align: center
 }
 
 .el-element-overlay .el-card-item .el-overlay-1 {
     width: 100%;
     overflow: hidden;
     position: relative;
     text-align: center;
     cursor: default
 }
 
 .el-element-overlay .el-card-item .el-overlay-1 img {
     display: block;
     position: relative;
     -webkit-transition: all .4s linear;
     transition: all .4s linear;
     width: 100%;
     height: auto
     border-radius:5px;
     
 }
 
 .el-element-overlay .el-card-item .el-overlay-1:hover img {
     -ms-transform: scale(1.2) translateZ(0);
     -webkit-transform: scale(1.2) translateZ(0)
 }
 
 .el-element-overlay .el-card-item .el-overlay-1 .el-info {
     text-decoration: none;
     display: inline-block;
     text-transform: uppercase;
     color: #fff;
     background-color: transparent;
     filter: alpha(opacity=0);
     -webkit-transition: all .2s ease-in-out;
     transition: all .2s ease-in-out;
     padding: 0;
     margin: auto;
     position: absolute;
     top: 50%;
     left: 0;
     right: 0;
     transform: translateY(-50%) translateZ(0);
     -webkit-transform: translateY(-50%) translateZ(0);
     -ms-transform: translateY(-50%) translateZ(0)
 }
 
 .el-element-overlay .el-card-item .el-overlay-1 .el-info .el-item {
     list-style: none;
     display: inline-block;
     margin: 0 3px
 }
 
 .el-element-overlay .el-card-item .el-overlay-1 .el-info .el-item .el-link {
     border-color: #fff;
     color: #fff;
     padding: 12px 15px 10px
 }
 
 .el-element-overlay .el-card-item .el-overlay-1 .el-info .el-item .el-link:hover {
     background: #2962FF;
     border-color: #2962FF
 }
 
 .gmaps-overlay_arrow.above,
 .gmaps-overlay_arrow.below {
     border-left: 16px solid transparent;
     border-right: 16px solid transparent
 }
 
 .el-element-overlay .el-card-item .el-overlay {
     width: 100%;
     height: 100%;
     position: absolute;
     overflow: hidden;
     top: 0;
     left: 0;
     opacity: 0;
     background-color: rgba(0, 0, 0, .7);
     -webkit-transition: all .4s ease-in-out;
     transition: all .4s ease-in-out
 }
 
 .el-element-overlay .el-card-item .el-overlay-1:hover .el-overlay {
     opacity: 1;
     filter: alpha(opacity=100);
     -webkit-transform: translateZ(0);
     -ms-transform: translateZ(0);
     transform: translateZ(0)
 }
 
 .el-element-overlay .el-card-item .el-overlay-1 .scrl-dwn {
     top: -100%
 }
 
 .el-element-overlay .el-card-item .el-overlay-1 .scrl-up {
     top: 100%;
     height: 0
 }
 
 .el-element-overlay .el-card-item .el-overlay-1:hover .scrl-dwn {
     top: 0
 }
 
 .el-element-overlay .el-card-item .el-overlay-1:hover .scrl-up {
     top: 0;
     height: 100%
 }








.search-container {
      max-width: 90vw;
      margin: 0 auto;
      
    }

    .search-wrapper {
      background: var(--sidebar-color);
      border-radius: 15px;
      box-shadow: 0 5px 20px rgba(0,0,0,0.08);
      transition: all 0.3s ease;
      color:var(--text-color);
    }

    .search-header {
      padding: 20px;
     /*  border-bottom: 1px solid #eee; */
    }

    .search-input-group {
      position: relative;
      display: flex;
      align-items: center;
    }

    .search-input {
      border: 2px solid #eee;
      border-radius: 30px;
      padding: 10px 20px;
      padding-right: 50px;
      width: 100%;
      transition: all 0.3s ease;
    }

    .search-input:focus {
      border-color: #007bff;
      box-shadow: none;
    }

    .search-icon {
      position: absolute;
      right: 20px;
      color: #666;
    }

   
  


   

  

.alumni-filter{
 
     padding: 1rem 0;
    & select{
        background: var(--body-color);
        width: 80%;
       
        margin: 1rem 0;
        padding: 1rem 0.5rem ;
        border-radius: 6px;
 	
        border:0px solid;
        color:var(--text-color);
			
    }
    
    & .search-btn{
    	height:3.5rem;
    	background-color:var(--primary-color);
    	border:none;
    	outline:none;
    }
}







</style>



  <div class="search-containers">
  </div>
    <div class="search-container  my-5 ">
      <div class="search-wrapper mx-5">
        <div class="search-header">
          <div class="search-input-group">
            <input type="text" class="search-input form-control fs-5" placeholder="Search Events..">
            <i class=" fs-4 bx bx-search search-icon"></i>
          </div>

        

        <div class="category-filters my-3">
   
            <div class="filter-chip px-2">
<div class="alumni-filter d-flex gap-5 fs-5 ">
            
              <select name="course" id="courses">
                <option value="JEE/NEET">Organized by</option>
                <option value="IIC">IIC</option>
                <option value="TPC">TPC</option>
                <option value="TDL">TDL</option>
                <option value="LSC">LSC</option>
               
                
              </select>
               <select name="course" id="courses">
                <option value="JEE/NEET">Posted by</option>
                <option value="Programming">Faculty</option>
                <option value="Gate">Admin</option>
                
              </select>
              
            
              	<button class="btn my-3 search-btn btn-primary px-5 w-25" type="submit">Add Event</button>
                 <button class="btn my-3 search-btn btn-primary px-5 w-25" type="submit">Search</button>
                

            </div> 
               
          </div>
          
         
    </div>
  </div>
</div>












<div class="user-container my-5 mx-3">
<div class="border d-flex" >
<div class="row flex-wrap">

-     <c:if test="${not empty eventsList}">
        <c:forEach var="event" items="${eventsList}"> 
      
                        <div class="col-lg-3 col-md-5 ">
                       
                   
                        
                            <div class="card rounded">
                            
                                <div class="el-card-item px-4">
                                    <div class="el-card-avatar el-overlay-1 d-flex justify-content-center py-3"> <img class="w-25" rounded src="${event.eventImg }" alt="user">
                                        
                                    </div>
                                    <div class="el-card-content">
                                        <h4 class="m-b-0 fs-3">${event.eventName } <span class="text-muted fs-5">(${event.eventDate })</span>
                                
                                         
                                         
                                         
                                         </h4> 
                                       
										<span class="text-muted fs-5">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse.</span><br>
										<div class="d-flex justify-content-center gap-3">
											 <button type="button" class="btn google-btn  mx-0 my-1 px-3 py-1 "><a href="editProfile.jsp" class="text-decoration-none" style="color:inherit;"><i class='bx bxs-school px-1'></i>Organized by ${event.eventOrganizer }</a></button>
      										<!--   <button type="button" class="btn google-btn  mx-0 my-1 px-3 py-1 "><a href="editProfile.jsp" class="text-decoration-none" style="color:inherit;"><i class='bx bxl-github px-1' ></i>Github</a></button>
       -->
										
										</div>
										 
                                    </div>
                                </div>
             
                            </div>
                                                             
                            
                         
        </div>
      
       
           </c:forEach>
    </c:if>    
        </div>
                
                       
                        
                        
                       
                        
                   
                        
 	</div>
</div>
</div>
