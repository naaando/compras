<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class NfceRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'url' => 'required_without:chave_acesso|string',
            'chave_acesso' => 'required_without:url|string',
            'estado' => 'required_with:chave_acesso|string|size:2|in:ac,al,ap,am,bh,ce,df,es,go,ma,mt,ms,mg,pa,pb,pr,pe,pi,rj,rn,rs,ro,rr,sc,sp,se,to',
        ];
    }
}
