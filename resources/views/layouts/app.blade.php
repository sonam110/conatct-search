<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Search Feature</title>
    @yield('extracss')
     <style>
          body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f8f9fa;
            overflow-x: auto;
        }
        .container {
            max-width: 980px;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        h6 {
            margin-bottom: 20px;
            font-size: 18px;
            font-weight: bold;
        }
        form {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
        }
        .form-group {
            display: flex;
            flex-direction: column;
        }
        .form-group label {
            font-weight: bold;
            margin-bottom: 5px;
            font-size: 14px;
            color: #333;
        }
        .form-group input,
        .form-group select {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
            box-sizing: border-box;
            width: 100%;
        }
        .row {
            display: flex;
            width: 100%;
            gap: 15px;
        }
        .col-3 {
            flex: 1 1 calc(20% - 10px); 
        }
        .col-9 {
            flex: 1 1 60%; 
        }
        button {
            padding: 10px 20px;
            font-size: 14px;
            color:#4f76d2;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #0056b3;
        }
        table {
            width: 100%; 
            border-collapse: collapse; 
        }
       
        .table-responsive{
             overflow-x: auto;
        }

        table th {
            background-color: #f1f1f1;

        }

        table tr:hover {
            background-color: #f9f9f9;
        }

        
    </style>

   
</head>
<body>
@yield('content')

    @yield('extrajs')


</body>
</html>
