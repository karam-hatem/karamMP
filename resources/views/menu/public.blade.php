@extends('layouts.public_view')

@section('content')
<center><h1 style="color: aliceblue ;padding-top:2rem">{{$menu->title}}</h1></center>

{{-- print all menu --}}
<button   style= "text-align: center;margin-left:80rem" class="btn btn-dark" onclick="window.print()">
<i class="fa-solid fa-print" ></i> Print
</button>

<br>
<br>

    {{-- عرض اسم تبعت كل سكشن ل المنيو (drink/food/)--}}
    
    @foreach ($menu->sections as $section)
    <h3 style="text-align: center;color:aliceblue;border-radius:100px;">{{$section->title}}</h3>
    
    <div class="row" >
        @foreach ($section->items as $item)
          <div class="col-3 mb-3"  >
             <div class="card"  >
                
                <img src="{{asset($item->image)}}" style="width: 100%;height:250px"  alt="..." >

                <div class="card-body" style=" margin-top:20px container">
                    {{-- عرض اسم الطعام --}}
                    <h5 class="card-title" style="min-height: 48px">{{$item->title}}</h5>
                    {{--  عرض السعر الطعام--}}
                        <h6 style="color: brown;font-size:22px">{{$item->price}} JD</h6>

                    {{--  عرض الوصف تبع الطعام والحجم تبع الوصف--}}
                    @if($item->description != "...")    
                    <p class="card-text" style="color:rgb(139, 0, 0) container;min-height: 144px " >{{$item->description}}</p>
                    @else
                    <p class="card-text" style="color:rgb(139, 0, 0) container" >{{$item->description}}</p>
                        
                    @endif
                </div>

            </div>
        </div>
        @endforeach
    </div>
    @endforeach
   
    
    <br><br>
@endsection
