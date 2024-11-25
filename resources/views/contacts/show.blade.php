@extends('layouts.app')
@section('extracss')
  <style>
        
        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #f9f9f9;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f7f7f7;
        }

        tr:hover {
            background-color: #eaeaea;
        }

        td:first-child {
            font-weight: bold;
        }
    </style>
@endsection
@section('content')
 <div class="container">
    <h6>Contact Details</h6>
    <table>
        <thead>
            <tr>
                <th>Item</th>
                <th>Value</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Name</td>
                <td>{{ $contact->first_name }} {{ $contact->last_name }}</td>
            </tr>
            <tr>
                <td>Email</td>
                <td>{{ $contact->email }}</td>
            </tr>
            <tr>
                <td>Phone</td>
                <td>{{ $contact->phone }}</td>
            </tr>
            <tr>
                <td>Address</td>
                <td>{{ $contact->address }}</td>
            </tr>
            <tr>
                <td>City</td>
                <td>{{ $contact->city }}</td>
            </tr>
            <tr>
                <td>State</td>
                <td>{{ $contact->state }}</td>
            </tr>
            <tr>
                <td>Zipcode</td>
                <td>{{ $contact->zipcode }}</td>
            </tr>
        </tbody>
    </table>
</div>
 

@endsection
@section('extrajs')
@endsection