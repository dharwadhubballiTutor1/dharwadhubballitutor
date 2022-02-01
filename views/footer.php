<footer class="container-fluid">
      <br />
      <div class="row">
            <div class="col-md-3">
                  <div class="title-text">About us</div>
                  <hr />
                  <p><?php $string = strip_tags($business->getBusinessAboutBusiness());
                        if (strlen($string) > 500) {

                              // truncate string
                              $stringCut = substr($string, 0, 400);
                              $endPoint = strrpos($stringCut, ' ');

                              //if the string doesn't contain any space then it will cut without word basis.
                              $string = $endPoint ? substr($stringCut, 0, $endPoint) : substr($stringCut, 0);
                              $string .= '...';
                        }
                        echo $string; ?></p>
            </div>
            <div class="col-md-3">
                  <div class="title-text"> Quick Link</div>
                  <hr />
                  <ul class="list-group list-group-flush">
                        <a class="list-group-item list-group-item-action" aria-current="page" href="/dharwadhubballitutor/">Home</a>
                        <a class="list-group-item list-group-item-action" aria-current="page" href="/dharwadhubballitutor/about/">About</a>
                        <a class="list-group-item list-group-item-action" aria-current="page" href="/dharwadhubballitutor/contact/">Contact</a>

                  </ul>
            </div>
            <div class="col-md-3">
                  <div class="title-text"> Quick Link</div>
                  <hr />
                  <ul class="list-group list-group-flush">
                        <a class="list-group-item list-group-item-action" aria-current="page" href="/dharwadhubballitutor/corporate-trainings">Corporate Trainings</a>
                        <a class="list-group-item list-group-item-action" aria-current="page" href="/dharwadhubballitutor/government-trainings">Goverment Trainings</a>
                        <a class="list-group-item list-group-item-action" aria-current="page" href="/dharwadhubballitutor/institutional-training">Institutional Trainings</a>
                  </ul>
            </div>
            <div class="col-md-3">
                  <div class="title-text"> Our Contact</div>
                  <hr />
                  <address>
                        <ul class="list-group list-group-flush">
                              <li class="list-group-item">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone-outbound-fill" viewBox="0 0 16 16">
                                          <path fill-rule="evenodd" d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511zM11 .5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-1 0V1.707l-4.146 4.147a.5.5 0 0 1-.708-.708L14.293 1H11.5a.5.5 0 0 1-.5-.5z" />
                                    </svg><i class="bi bi-telephone-outbound-fill"></i>
                                    <?php echo $business->getBusinessContact(); ?>
                              </li>
                              <li class="list-group-item"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope-fill" viewBox="0 0 16 16">
                                          <path d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555ZM0 4.697v7.104l5.803-3.558L0 4.697ZM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757Zm3.436-.586L16 11.801V4.697l-5.803 3.546Z" />
                                    </svg> <?php echo $business->getBusinessEmail(); ?>
                              </li>
                              <li class="list-group-item">
                                    <p><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-fill" viewBox="0 0 16 16">
                                                <path fill-rule="evenodd" d="M4 4a4 4 0 1 1 4.5 3.969V13.5a.5.5 0 0 1-1 0V7.97A4 4 0 0 1 4 3.999zm2.493 8.574a.5.5 0 0 1-.411.575c-.712.118-1.28.295-1.655.493a1.319 1.319 0 0 0-.37.265.301.301 0 0 0-.057.09V14l.002.008a.147.147 0 0 0 .016.033.617.617 0 0 0 .145.15c.165.13.435.27.813.395.751.25 1.82.414 3.024.414s2.273-.163 3.024-.414c.378-.126.648-.265.813-.395a.619.619 0 0 0 .146-.15.148.148 0 0 0 .015-.033L12 14v-.004a.301.301 0 0 0-.057-.09 1.318 1.318 0 0 0-.37-.264c-.376-.198-.943-.375-1.655-.493a.5.5 0 1 1 .164-.986c.77.127 1.452.328 1.957.594C12.5 13 13 13.4 13 14c0 .426-.26.752-.544.977-.29.228-.68.413-1.116.558-.878.293-2.059.465-3.34.465-1.281 0-2.462-.172-3.34-.465-.436-.145-.826-.33-1.116-.558C3.26 14.752 3 14.426 3 14c0-.599.5-1 .961-1.243.505-.266 1.187-.467 1.957-.594a.5.5 0 0 1 .575.411z" />
                                          </svg>
                                          <?php echo $business->getBusinessAddress(); ?></p>
                              </li>
                              <li class="list-group-item" align="center">
                                    <?php
                                    foreach ($socialMediaHandles as $handle) {
                                          echo '<a class="social-icon" href="' . $handle->getHandle() . '">' . $handle->getIcon() . '</a>';
                                    }
                                    ?>
                              </li>
                        </ul>
                  </address>
            </div>
      </div>
</footer>
<div class="row container-fluid bg-dark">

      <div class="col-md-12 text-white" align="center"><small>Designed and Developed By : <a class="nav-item text-grey" href="www.dharwadhubballitutor.com">DharwadHubballitutor</a></small>

            <br /><small> All rights reserved to : <a class="nav-item text-grey" href="www.dharwadhubballitutor.com">DharwadHubballitutor</a></small>
      </div>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>

</html>