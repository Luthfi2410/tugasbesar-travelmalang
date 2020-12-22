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
                <h1 class="xl">Blog</h1>
                <p class="lead">
                    Ada pertanyaan? Klik reservasi.
                </p>
            </div>
            <!-- <img src="images/docs.png" alt=""> -->
             <img src="{{asset('gambar/docs.png')}}">
        </div>
    </section>


    <div class="row">
        <div class="column">
            <h2>Update terbaru</h2>
            @foreach($posts as $post)
                    <div class="post-preview">
                        <a href="{{ url('post/' . $post->slug) }}">
                            <h2 class="post-title">
                                {{ $post->title }}
                            </h2>
                            <h3 class="post-subtitle">
                                {{ $post->sub_title }}
                            </h3>
                        </a>
                        <p class="post-meta">Posted by
                            <a href="#">{{ $post->user->name }}</a>
                            on {{ date('M d, Y', strtotime($post->created_at)) }}
                            @if(count($post->categories) > 0)
                                | <span class="post-category">
                            Category :
                                    @foreach($post->categories as $category)
                                        <a href="{{ url('category/' . $category->slug) }}">{{ $category->name }}</a>,
                                    @endforeach
                        </span>
                            @endif
                        </p>
                    </div>
                    <hr>
            @endforeach

             {{ $posts->links() }}

        </div>
        <div class="column">
            <h2 class="category-title">Category</h2>
                    <ul class="category-list">
                        @foreach($categories as $category)
                            <li><a href="{{ url('category/' . $category->slug) }}">{{ $category->name }}</a></li>
                        @endforeach
                    </ul>
        </div>
    </div>

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
                    <a href="#">Facebook</a>
                    <a href="#">Instagram</a>                 
              </div>

          </div>


    </div>


  </body>
</html>