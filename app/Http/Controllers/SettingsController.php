<?php

namespace App\Http\Controllers;

use App\Ad;
use App\Admob;
use App\Http\Resources\Admob\AdmobCollection;
use App\Http\Resources\Payments\PaymentsCollection;
use App\Http\Resources\Settings\SettingsCollection;
use App\PaymentMethod;
use App\Setting;
use Illuminate\Http\Request;

class SettingsController extends Controller
{
    public function getSettingsApi($key) {
        $WebKey = Setting::find(1)->api_secret_key;
        if ($key==$WebKey) {
            return SettingsCollection::collection(Setting::find(1)->get());
        } else {
            echo "You are not allowed to do that!";
        }
    }

    public function getPaymentMethods() {
    	return PaymentsCollection::collection(PaymentMethod::all());
    }

    public function getAdsApi($key) {
    	$webKey=Setting::find(1)->api_secret_key;
    	if ($webKey==$key) {
    		return AdmobCollection::collection(Admob::find(1)->get());
    	} else {
    		echo "You are not allowed to do that!";
    	}
   }

}
