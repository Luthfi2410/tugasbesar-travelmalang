<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
   <!--  <link rel="stylesheet" href="css/utilities.css">
    <link rel="stylesheet" href="css/style.css"> -->

    <link href="{{ asset('css/travelmalang/style.css') }}" rel="stylesheet">
    <link href="{{ asset('css/travelmalang/komponen.css') }}" rel="stylesheet">

    <title>Travel Malang</title>
</head>
<body>
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

    <section class="docs-head bg-primary py-3">
        <div class="container grid">
            <div>
                <h1 class="xl">{{ $page->title }}</h1>
            <span class="meta">Halaman Dibuat Oleh :
              <a href="#">{{ $page->user->name }}</a>
              Dibuat Tanggal {{ date('M d, Y', strtotime($page->created_at)) }}</span>

            </div>
             <img src="{{asset('gambar/docs.png')}}">
        </div>
    </section>

    <section class="docs-head py-3">

        <div class="container grid">
            

    <section>
     {!! $page->details !!}
    </section>

        </div>


        
    </section>


    <!-- footer  -->


    <div class="footer bg-dark py-5">
          <div class="container grid grid-3">

            <div>

              <h1>
                TravelMalang
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



          

    
   