<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ContactController;

/*Route::get('/', function () {
    return view('welcome');
});
*/


Route::get('/', [ContactController::class, 'index'])->name('index');
Route::post('conatact-list', [ContactController::class, 'contactList'])->name('conatact-list');
Route::get('view-contact/{id}', [ContactController::class, 'viewContact'])->name('view-contact');
Route::post('contact-action', [ContactController::class, 'contactAction'])->name('contact-action');

Route::get('/contacts', [ContactController::class, 'contacts']);
Route::post('conatact-list-json', [ContactController::class, 'contactListJson'])->name('conatact-list-json');

