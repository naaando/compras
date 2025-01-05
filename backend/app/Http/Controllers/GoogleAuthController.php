<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class GoogleAuthController extends Controller
{
    public function __invoke(Request $request)
    {
        abort_unless($request->bearerToken() !== null, 422, 'Missing id_token');

        $res = Http::get("https://oauth2.googleapis.com/tokeninfo", [
            'id_token' => $request->bearerToken(),
        ])->throw();

        [
            'iss' => $iss,
            'sub' => $sub,
            'name' => $name,
            'email' => $email,
            'picture' => $picture,
        ] = $res->json();

        $user = User::query()
            ->where('email', $email)
            ->where('iss', $iss)
            ->where('sub', $sub)
            ->firstOrNew();

        $user->fill([
            'name' => $name,
            'email' => $email,
            'iss' => $iss,
            'sub' => $sub,
            'picture' => $picture,
        ]);

        $user->save();

        return [
            'user' => $user,
            'token' => $user->createToken('auth_token')->plainTextToken
        ];
    }
}
