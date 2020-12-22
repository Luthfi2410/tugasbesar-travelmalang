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

           <!--  <li><a href="#">Beranda</a></li>
            <li><a href="#">Layanan</a></li>
            <li><a href="#">Testimoni</a></li>
            <li><a href="#">Kontak</a></li> -->

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
                <h1 class="xl">Contact Us</h1>
                <p class="lead">
                    Have questions? I have answers.
                </p>
            </div>
            <!-- <img src="images/docs.png" alt=""> -->
             <img src="{{asset('gambar/docs.png')}}">
        </div>
    </section>

    @if(Session::has('message'))
                    <div class="alert alert-success">
                        {{Session('message')}}
                    </div>
                @endif

     <section class="docs-main my-4">
        <div class="container grid">
            <div class="card p-3">
               
               <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3951.5565608558127!2d112.60033241437819!3d-7.941292981298352!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e78821366fa1e55%3A0x97a54938b7b3e4c6!2sKomplek%20Uniga!5e0!3m2!1sid!2sid!4v1608279233097!5m2!1sid!2sid" width="450" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                
            </div>


            <div class="kontak-form card">
            {!! Form::open(['route' => 'contact.submit']) !!}    
                <form>
                    <div class="form-control">
                        <input type="text" name="name" placeholder="Name" required>
                    </div>
                    <div class="form-control">
                        <input type="text" name="company" placeholder="Company Name" required>
                    </div>
                    <div class="form-control">
                        <input type="email" name="email" placeholder="Email" required>
                    </div>
                    <div class="form-control">
                        <input type="email" name="email" placeholder="Number" required>
                    </div>
                   <!--  <input type="submit" value="Send" class="btn btn-primary"> -->
                </form>
                <br>
                <div id="success"></div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary" id="sendMessageButton">Send</button>
                </div>
                {!! Form::close() !!}
                

            </div>
        </div>
    </section>


    <!-- Footer -->
    <footer class="footer bg-dark py-5">
        <div class="container grid grid-3">
            <div>
                <h1>Travel Malang
                </h1>
                <p>Copyright &copy; 2020</p>
            </div>
            <!-- <nav>
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="features.html">Features</a></li>
                    <li><a href="docs.html">Docs</a></li>
                </ul>
            </nav>
            <div class="social">
                <a href="#"><i class="fab fa-github fa-2x"></i></a>
                <a href="#"><i class="fab fa-facebook fa-2x"></i></a>
                <a href="#"><i class="fab fa-instagram fa-2x"></i></a>
                <a href="#"><i class="fab fa-twitter fa-2x"></i></a>
            </div> -->

            <nav>
                <ul>
                  <li><a href="#">Beranda</a></li>
                  <li><a href="#">Galeri</a></li>
                  <li><a href="#">Layanan</a></li>
                </ul>
              </nav>

              <div class="social">
                    <a href="#">Facebook</a>
                    <a href="#">Instagram</a>                 
              </div>

        </div>



    </footer>
</body>
</html>