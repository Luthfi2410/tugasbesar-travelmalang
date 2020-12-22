<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>


    <link href="{{ asset('css/travelmalang/style.css') }}" rel="stylesheet">
    <link href="{{ asset('css/travelmalang/komponen.css') }}" rel="stylesheet">
   <!--  <link rel="stylesheet" href="style.css" /> -->
    <!-- <link rel="stylesheet" href="komponen.css" /> -->

    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.0.8/css/all.css"
    />

    <title>Travel Malang</title>
  </head>

  <body>
    <!-- Bagian Navbar -->

    <div class="navbar">
      <div class="container flex">
        <h1 class="logo">Travel Malang</h1>

        <nav>
          <ul>

          	<li class="nav-item">
                    <a class="nav-link" href="{{ url('/') }}">Beranda</a>
            </li>

            <li class="nav-item">
                    <a class="nav-link" href="{{ route('index') }}">Blog</a>
            </li>

            <!-- <li><a href="#">Beranda</a></li>
            <li><a href="#">Layanan</a></li>
            <li><a href="#">Testimoni</a></li>
            <li><a href="#">Kontak</a></li> -->

            @php($pages = getPages())
                @foreach($pages as $page)
                    <li class="nav-item">
                        <a class="nav-link" href="{{ url('page/' . $page->slug) }}">{{ $page->title }}</a>
                    </li>
                @endforeach

            <li class="nav-item">
                    <a class="nav-link" href="{{ route('contact.show') }}">Contact</a>
            </li>
          </ul>
        </nav>
      </div>
    </div>

    <!-- Menampilkan   -->

    <section class="showcase">
      <div class="container grid">
        <div class="showcase-text">
          <h1>Selamat Datang,</h1>
          <h2>Web Wisata Travel Malang</h2><br>
          

          <a href="{{ url('/index') }}" class="btn btn-outline">Klik Selengkapnya</a>
        </div>

        <div class="showcase-form card">
         <!--  <h2>Lakukan Pemesanan</h2> -->
         <div class="alert alert-success" role="alert">
          Reservasi Sekarang !
          </div>

          <!-- <form>
            <div class="form-control">
              <input type="text" name="name" placeholder="name" required />
            </div>

            <div class="form-control">
              <input type="text" name="company" placeholder="Company Name" />
            </div>

            <div class="form-control">
              <input type="email" name="email" placeholder="Email" />
            </div>

            <input type="submit" value="Send" class="btn btn-primary" />
          </form> -->

           <form>
                  <!--   <div class="form-control">
                        <input type="text" name="name" placeholder="Name" required>
                    </div>
                    <div class="form-control">
                        <input type="text" name="company" placeholder="Company Name" required>
                    </div>
                    <div class="form-control">
                        <input type="email" name="email" placeholder="Email" required>
                    </div> -->

                    <a href="https://api.whatsapp.com/send?phone=+628123456789&text=Halo Admin,Saya Ingin Melakukan Reservasi Sekarang." class="btn btn-outline">Kirim &nbsp<i class="fab fa-whatsapp"></i></a>
                    <!-- <input type="submit" value="Send" class="btn btn-primary"> -->
          </form>


        </div>
      </div>
    </section>

    <!-- layanan -->

    <section class="stats">
      <div class="container">
        <h3 class="stats-heading text-center my-1">Layanan Kami<br>

        Selamat Datang, temukan keindahan disetiap perjalananmu bersama Travel Malang
  

        </h3>

        <div class="grid grid-3 text-center my-4">
          <div>
            <i class="fas fa-server fa-3x"></i>
            <h3>Paket Wisata</h3>
            <a href="http://127.0.0.1:8000/category/paket-wisata">Klik Disini</a>
          </div>
          <div>
            <i class="fa fa-suitcase fa-3x"></i>
            <h3>Sewa Alat</h3>
            <a href="http://127.0.0.1:8000/category/sewa">Klik Disini</a>
          </div>
          <div>
           <i class="fa fa-comment fa-3x"></i>
            <h3>Porter Tour Guide</h3>
            <a href="http://127.0.0.1:8000/category/porter-guide">Klik Disini</a>
          </div>
        </div>
      </div>
    </section>

    <!-- cloud -->

<!--     <section class="cloud bg-primary my-2 py-2">
      <div class="container grid">
        <div class="text-center">
          <h2 class="lg">Extreme CLoud Hosting</h2>
          <p class="lead my-1">Cloud mania mantab</p>
          <a href="hhh.html" class="btn btn-outline">Readmore</a>
        </div>
        <img src="images/cloud.png" alt="" />
      </div>
    </section> -->

        <!-- Cloud -->
    <section class="cloud bg-primary my-2 py-2">
        <div class="container grid">
            <div class="text-center">
                <h2 class="lg">Travel Malang</h2>
                <p class="lead my-1">Wes Wayahe Mbolang Lurd</p>
                <p class="lead my-1"><b>Lihat Informasi Terbaru</b></p>
                <a href="http://127.0.0.1:8000/category/pengumuman" class="btn btn-dark">Klik Disini</a>
            </div>
            <img src="{{asset('gambar/holiyay.jpg')}}">
            <!-- <img src="images/cloud.png" alt=""> -->
        </div>
    </section>


    <!-- supported by -->

    <section class="languages">

      <h2 class="md text-center my-2">
          Supported By 
      </h2>

      <div class="container flex">

          <div class="card">
              <h4>Ads Free</h4>
              <img src="https://raw.githubusercontent.com/bradtraversy/loruki-website/master/images/logos/scala.png" alt="">
          </div>

          <div class="card">
            <h4>Info Malang</h4>
            <img src="{{asset('gambar/info.png')}}">
            <!-- <img src="logo/info.png" alt=""> -->
          </div>

          <div class="card">
            <h4>MalangKota</h4>
            <img src="{{asset('gambar/malang.png')}}">
            <!-- <img src="logo/malang.png" alt=""> -->
          </div>


      </div>


    </section>



    <!-- footer  -->


    <div class="footer bg-dark py-5">
          <div class="container grid grid-3">

            <div>

              <h1>
                Travel Malang
              </h1>
                <p>Copyright &copy; 2020</p>
            </div>

              <nav>
                <ul>
                  <li><a href="#">Beranda</a></li>
                  <li><a href="#">Galeri</a></li>
                  <li><a href="#">Layanan</a></li>
                </ul>
              </nav>

              <div class="social">
                    <a href="https://facebook.com">Facebook</a>
                    <a href="https://www.instagram.com/">Instagram</a>                 
              </div>

          </div>


    </div>


  </body>
</html>
