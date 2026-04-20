<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use App\Models\Wallet;
use Illuminate\View\View;
use Illuminate\Http\Request;
use Illuminate\Validation\Rules;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\RedirectResponse;
use Illuminate\Auth\Events\Registered;

class RegisteredUserController extends Controller
{
    /**
     * Display the registration view.
     */
    public function create(): View
    {
        return view('auth.register');
    }

    /**
     * Handle an incoming registration request.
     *
     * @throws \Illuminate\Validation\ValidationException
     */
    public function store(Request $request): RedirectResponse
    {
        /** 
         * Membuat validasi untuk data yang diinputkan oleh user pada form register dengan menggunakan Laravel Validation Rules 
         */
        $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'avatar' => ['required', 'image', 'mimes    :png,jpg,jpeg,gif,svg,webp'],
            'occupation' => ['required', 'string', 'max:255'],
            'role' => ['required', 'string', 'in:project_freelancer,project_client'],
            'email' => ['required', 'string', 'lowercase', 'email', 'max:255', 'unique:' . User::class],
            'password' => ['required', 'confirmed', Rules\Password::defaults()],
        ]);

        // Jika file avatar ada, maka simpan file tersebut ke dalam folder public/avatars dengan nama yang unik dan return pathnya sebagai $avatarPath
        if ($request->hasFile('avatar')) {
            $avatarPath = $request->file('avatar')->store('avatars', 'public');
        }

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'avatar' => $avatarPath,
            'occupation' => $request->occupation,
            'connect' => 10,
            'password' => Hash::make($request->password),
        ]);

        $user->assignRole($request->role); // Assign role ke user yang baru terdaftar dengan menggunakan method assignRole dari package Spatie Permission 

        $wallet = new Wallet([
            'balance' => 0
        ]);
        $user->wallet()->save($wallet);

        event(new Registered($user));

        Auth::login($user);

        return redirect(route('dashboard', absolute: false));
    }
}
