      <?php require_once("navigation.php"); ?>
      <?php require_once("slider.php"); ?>
      <br />
      <style>
            .card-body {
                  flex: 1 1 auto;
                  padding: 1rem 1rem;
                  margin-top: -60px !important;
                  background-color: white;
                  width: 80%;
                  align-self: center;
            }

            .card {
                  border: 0;
            }
      </style>
      <div class="row container">
            <div class="col-md-9 text-justify">
                  <article>
                        <header>
                              <h6 class="display-6">About us</h6>
                        </header>
                        <p>
                              <?php
                              $string = strip_tags($business->getBusinessAboutBusiness());
                              if (strlen($string) > 500) {

                                    // truncate string
                                    $stringCut = substr($string, 0, 500);
                                    $endPoint = strrpos($stringCut, ' ');

                                    //if the string doesn't contain any space then it will cut without word basis.
                                    $string = $endPoint ? substr($stringCut, 0, $endPoint) : substr($stringCut, 0);
                                    $string .= '...';
                              }
                              echo $string;
                              ?>
                        </p>
                  </article>
                  <br />
                  <a class="btn btn-info btn-sm" href="/dharwadhubballitutor/about/">Read More</a>
            </div>
            <div class="col-md-3">

            </div>
      </div>
      </br>
      <div class="row container-fluid">
            <?php
            $postOnHomeList = DBpost::getPostOnHome();
            foreach ($postOnHomeList as $postOnHome) {
                  echo '<div class="col-md-4">
                  <div class="card">
                        <img src="/dharwadhubballitutor/blogadmin/img/Post/' . $postOnHome->getImage() . '" class="card-img-top" alt="' . $postOnHome->getAltTextImage() . '">
                        <div class="card-body">
                              <p class="card-text">';
                  $string = strip_tags($postOnHome->getPostDescription());
                  if (strlen($string) > 500) {

                        // truncate string
                        $stringCut = substr($string, 0, 200);
                        $endPoint = strrpos($stringCut, ' ');

                        //if the string doesn't contain any space then it will cut without word basis.
                        $string = $endPoint ? substr($stringCut, 0, $endPoint) : substr($stringCut, 0);
                        $string .= '...';
                  }
                  echo $string;
                  echo '</p>
                  <a class="btn btn-info btn-sm" href="';
                  echo $postOnHome->getPostUrl();
                  echo '">Read More</a>
                        </div>
                  </div>
            </div>';
            }
            ?>
      </div>
      <?php require_once("footer.php"); ?>