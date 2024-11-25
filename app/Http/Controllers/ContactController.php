<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Contact;
use Yajra\DataTables\Facades\DataTables;
use DB;
class ContactController extends Controller
{
    #using Database Query
    public function index()
    {
    	$allstates = Contact::orderBy('id','DESC')->pluck('state','state');
        return view('contacts.index',compact('allstates'));
    }

    #Method:Post
    #Dattable Load
    public function contactList(Request $request)
    {   
       	$dob = date('Y-m-d',strtotime($request->dob));
        $query = Contact::orderBy('id', 'DESC');
        if(!empty($request->first_name))
        {
            $query->where('first_name', 'like', '%' . $request->first_name . '%');
        }
       	if(!empty($request->last_name))
        {
            $query->where('last_name', 'like', '%' . $request->last_name . '%');
        }
       
        if(!empty($request->email))
        {
            $query->where('email', 'like', '%' . $request->email . '%');
        }
        if(!empty($request->phone))
        {
            $query->where('phone', 'like', '%' . $request->phone . '%');
        }
        if(!empty($request->address))
        {
            $query->where('address', 'like', '%' . $request->address . '%');
        }
        if(!empty($request->state))
        {
            $query->where('state', 'like', '%' . $request->state . '%');
        }
        if(!empty($request->city))
        {
            $query->where('city', 'like', '%' . $request->city . '%');
        }
        if(!empty($request->zipcode))
        {
            $query->where('zipcode', 'like', '%' . $request->zipcode . '%');
        }
        if(!empty($request->dob))
        {
            $query->whereDate('dob',$dob);
        }
        if(!empty($request->checkboxvalue))
        {
        	$explodeIds= explode(',',$request->checkboxvalue);
            $query->whereIn('id',$explodeIds);
        }
        return datatables($query)
        	->addColumn('name', function ($query)
            {

                return '<a class="button" target="_blank" href="'.route('view-contact', $query->id) .'">'.$query->first_name.' '.$query->last_name.'</a>' ;
            })
           
             ->editColumn('dob', function ($query)
            {

                return date('Y-m-d',strtotime($query->dob));
            })
            ->editColumn('status', function ($query)
            {
                if ($query->status == 1)
                {
                    $status = 'Active';
                  
                }
                else
                {
                    $status = 'Inactive';
                   
                }

                return $status;
            })

            ->addColumn('check', function ($query)
            {
                return '<label class="custom-control custom-checkbox">
                       <input type="checkbox" name="boxchecked[]" onclick="checkboxClicked(this)"  value="' . $query->id . '"  class ="colorinput-input custom-control-input allChecked"  id="boxchecked-'.$query->id.'">
                         <span class="custom-control-label"></span>
                        </label>';
            })
            ->addColumn('action', function ($query)
            {

                $view =' <a class="button" href="'.route('view-contact', $query->id) .'" >View</a>';
                return '<div class="btn-group btn-group-xs">'.$view.'</div>';
            })

        ->escapeColumns(['action'])
        ->addIndexColumn()
        ->make(true);
    }

    public function viewContact($id)
    {
        $contact = Contact::where('id',$id)->orderBy('id','DESC')->first();
        if($contact){
            return view('contacts.show',compact('contact'));
        } else{
            abort(404);
        }
        
    }

    #contact action
    #method:post

    public function contactAction(Request $request)
    {
        $data  = $request->all();
        foreach($request->input('boxchecked') as $action)
        {
            if($request->input('cmbaction') == 'Active')
            {
                Contact::where('id', $action)->update(array('status' => '1'));
            }
            else
            {
                Contact::where('id', $action)->update(array('status' => '0'));
            }
        }
        return redirect()->route('index')->with('success', __('Action successfully done .'));
      
    }

    # using json data

    public function contacts()
    {
        $allstates = Contact::orderBy('id','DESC')->pluck('state','state');
        return view('contacts.contacts',compact('allstates'));
    }


    public function contactListJson(Request $request)
    {
        $jsonData = [
            [
                "id" => 1,
                "first_name" => "Rajiv",
                "last_name" => "Sharma",
                "dob" => "1990-01-01",
                "address" => "123 Main St Delhi",
                "city" => "Delhi",
                "state" => "Delhi",
                "zipcode" => "10001",
                "email" => "rajivsharma@gmail.com",
                "phone" => "1234567890"
            ],
            [
                "id" => 2,
                "first_name" => "Eesha",
                "last_name" => "sharma",
                "dob" => "1992-02-02",
                "address" => "456 macky street Bhopal",
                "city" => "Bhopal",
                "state" => "Madhya Pradesh",
                "zipcode" => "90001",
                "email" => "eesah@gmail.com",
                "phone" => "9876543210"
            ]
        ];

        $query = collect($jsonData);

        if ($request->filled('first_name')) {
            $query = $query->filter(fn($item) => stripos($item['first_name'], $request->first_name) !== false);
        }
        if ($request->filled('last_name')) {
            $query = $query->filter(fn($item) => stripos($item['last_name'], $request->last_name) !== false);
        }
        if ($request->filled('email')) {
            $query = $query->filter(fn($item) => stripos($item['email'], $request->email) !== false);
        }
        if ($request->filled('phone')) {
            $query = $query->filter(fn($item) => stripos($item['phone'], $request->phone) !== false);
        }
        if ($request->filled('address')) {
            $query = $query->filter(fn($item) => stripos($item['address'], $request->address) !== false);
        }
        if ($request->filled('state')) {
            $query = $query->filter(fn($item) => stripos($item['state'], $request->state) !== false);
        }
        if ($request->filled('city')) {
            $query = $query->filter(fn($item) => stripos($item['city'], $request->city) !== false);
        }
        if ($request->filled('zipcode')) {
            $query = $query->filter(fn($item) => stripos($item['zipcode'], $request->zipcode) !== false);
        }
        if ($request->filled('dob')) {
            $dob = date('Y-m-d', strtotime($request->dob));
            $query = $query->filter(fn($item) => $item['dob'] === $dob);
        }
        if ($request->filled('checkboxvalue')) {
            $ids = explode(',', $request->checkboxvalue);
            $query = $query->whereIn('id', $ids);
        }

        return DataTables::of($query)
            ->addColumn('name', fn($row) => $row['first_name'] . ' ' . $row['last_name'])
            ->editColumn('dob', fn($row) => date('Y-m-d', strtotime($row['dob'])))
            ->addColumn('check', fn($row) =>
                '<label class="custom-control custom-checkbox">
                    <input type="checkbox" name="boxchecked[]" onclick="checkboxClicked(this)" value="' . $row['id'] . '" class="custom-control-input">
                    <span class="custom-control-label"></span>
                </label>'
            )
            ->escapeColumns([])
            ->make(true);
        }

   
}
