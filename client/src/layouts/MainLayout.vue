<!-- MainLayout.vue -->
<template>
  <div>
    <header>
      <nav class="navbar navbar-expand-lg" style="background-color: #e3f2fd;">
        <div class="container-fluid ps-5">
          <router-link class="navbar-brand" to="/">Namefeeder</router-link>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <router-link to="/merchant_users/signup" class="nav-link" aria-current="page">Merchant Registration</router-link>
              </li>
              <li class="nav-item">
                <router-link to="/merchant_users/signin" class="nav-link" aria-current="page">Merchant Sign In</router-link>
              </li>
              <!--<li class="nav-item">
                <a class="nav-link" href="#">Link</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Dropdown
                </a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="#">Action</a></li>
                  <li><a class="dropdown-item" href="#">Another action</a></li>
                  <li><hr class="dropdown-divider"></li>
                  <li><a class="dropdown-item" href="#">Something else here</a></li>
                </ul>
              </li> -->
            </ul>
            <!-- <form class="d-flex" role="search">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success" type="submit">Search</button>
            </form> -->
          </div>
        </div>
      </nav>
    </header>

    <router-view></router-view>

    <footer class="text-center text-lg-start bg-body-tertiary text-muted">
      <!-- Section:  Social media -->
      <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
        <!-- Left -->
        <div class="me-5 d-none d-lg-block">
          <!-- <span>Get connected with us on social networks:</span> -->
        </div>
        <!-- Left -->

        <!-- Right -->
        <div>
          <a href="" class="me-4 text-reset">
            <i class="fab fa-facebook-f"></i>
          </a>
          <a href="" class="me-4 text-reset">
            <i class="fab fa-twitter"></i>
          </a>
          <a href="" class="me-4 text-reset">
            <i class="fab fa-google"></i>
          </a>
          <a href="" class="me-4 text-reset">
            <i class="fab fa-instagram"></i>
          </a>
          <a href="" class="me-4 text-reset">
            <i class="fab fa-linkedin"></i>
          </a>
          <a href="" class="me-4 text-reset">
            <i class="fab fa-github"></i>
          </a>
        </div>
        <!-- Right -->
      </section>
      <!-- Section: Social media -->

      <!-- Section: Links  -->
      <section class="">
        <div class="container text-center text-md-start mt-5">
          <!-- Grid row -->
          <div class="row mt-3">
            <!-- Grid column -->
            <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
              <!-- Content -->
              <h6 class="text-uppercase fw-bold mb-4">
                <i class="fas fa-gem me-3"></i>Namefeeder Technologies
              </h6>
              <p>
                This is still work in progress application
              </p>
            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
              <!-- Links -->
              <!-- <h6 class="text-uppercase fw-bold mb-4">
                Products
              </h6>
              <p>
                <a href="#!" class="text-reset">Link</a>
              </p>
              <p>
                <a href="#!" class="text-reset">Link</a>
              </p>
              <p>
                <a href="#!" class="text-reset">Link</a>
              </p>
              <p>
                <a href="#!" class="text-reset">Link</a>
              </p> -->
            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
              <!-- Links -->
              <!-- <h6 class="text-uppercase fw-bold mb-4">
                Link
              </h6>
              <p>
                <a href="#!" class="text-reset">Link</a>
              </p>
              <p>
                <a href="#!" class="text-reset">Link</a>
              </p>
              <p>
                <a href="#!" class="text-reset">Link</a>
              </p>
              <p>
                <a href="#!" class="text-reset">Link</a>
              </p> -->
            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
              <!-- Links -->
              <h6 class="text-uppercase fw-bold mb-4">Contact</h6>
              <p><i class="fas fa-home me-3"></i>Chamith L Jayaweera</p>
              <p>
                <i class="fas fa-envelope me-3"></i>
                chamith@namefeeder.com
              </p>
              <p><i class="fas fa-phone me-3"></i> +44 7393 773834</p>
            </div>
            <!-- Grid column -->
          </div>
          <!-- Grid row -->
        </div>
      </section>
      <!-- Section: Links  -->

      <!-- Copyright -->
      <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
        © 2024 Copyright:
        <a class="text-reset fw-bold" href="/">namefeeder.com</a>
      </div>
      <!-- Copyright -->
    </footer>
  </div>
</template>

<script setup>
</script>

<style>
/* Your common styles go here */
</style>