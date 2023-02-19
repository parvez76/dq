<?php

namespace App\Http\Resources\Admob;

use App\Setting;
use Illuminate\Http\Resources\Json\Resource;

class AdmobCollection extends Resource
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return 
        [
        'admob_native'=>$this->admob_native,
        'admob_interstitial'=>$this->admob_interstitial,
        'admob_banner'=>$this->admob_banner,
        'admob_video'=>$this->admob_video,
        'fb_banner'=>$this->fb_banner,
        'fb_native'=>$this->fb_native,
        'fb_interstitial'=>$this->fb_interstitial,
        'bottom_banner_type'=>$this->bottom_banner_type,
        'fb_video'=>$this->fb_video,
        'adcolony_app_id'=>$this->adcolony_app_id,
        'adcolony_banner'=>$this->adcolony_banner,
        'adcolony_interstitial'=>$this->adcolony_interstitial,
        'adcolony_reward'=>$this->adcolony_reward,
        'startapp_app_id'=>$this->startapp_app_id,
        'interstitial_type'=>$this->interstitial_type,
        'video_type'=>$this->video_type,
        'admob_app_id'=>$this->admob_app_id,
        'email_verification_option'=>Setting::find(1)->email_verification_option,
    ];
    }
}
