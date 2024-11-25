<?php
namespace Database\Factories;

use App\Models\Contact;
use Illuminate\Database\Eloquent\Factories\Factory;
use Faker\Generator as Faker;

class ContactFactory extends Factory
{
    protected $model = Contact::class;

    public function definition()
    {
        return [
            'first_name' => $this->faker->firstName,                // Generates a random first name
            'last_name'  => $this->faker->lastName,                 // Generates a random last name
            'email'      => $this->faker->unique()->safeEmail,      // Generates a unique safe email
            'phone'      => $this->faker->phoneNumber,              // Generates a random phone number
            'dob'        => $this->faker->date('Y-m-d', '2000-01-01'), // Generates a random date of birth
            'city'       => $this->faker->city,                     // Generates a random city
            'state'      => $this->faker->state,                    // Generates a random state
            'zipcode'    => $this->faker->postcode,                 // Generates a random postal code
            'address'    => $this->faker->address,                  // Generates a random address
        ];
    }
}
