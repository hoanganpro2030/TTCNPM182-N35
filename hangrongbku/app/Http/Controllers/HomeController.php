<?php



namespace App\Http\Controllers;



use Illuminate\Http\Request;

use App\Post;



class HomeController extends Controller

{

    /**

     * Create a new controller instance.

     *

     * @return void

     */

    public function __construct()

    {

        $this->middleware('auth');

    }



    /**

     * Show the application dashboard.

     *

     * @return \Illuminate\Http\Response

     */

    public function index()

    {

        return view('home');

    }



    public function posts()

    {

        $posts = Post::all();

        return view('posts',compact('posts'));

    }



    public function show($id)

    {

        $post = Post::find($id);

        return view('postsShow',compact('post'));

    }



    public function postPost(Request $request)

    {

        request()->validate(['rate' => 'required']);

        $post = Post::find($request->id);



        $rating = new \willvincent\Rateable\Rating;

        $rating->rating = $request->rate;

        $rating->user_id = auth()->user()->id;



        $post->ratings()->save($rating);



        return redirect()->route("posts");

    }

}