<?php

namespace App\Http\Resources\Player;

use App\Setting;

use Illuminate\Http\Resources\Json\Resource;

class PlayerCollection extends Resource
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
        'id'=>$this->id,
        'name'=>$this->name,
        'email'=>$this->email,
        'earnings'=>Setting::find(1)->currency. " " .$this->score / Setting::find(1)->conversion_rate,
        'earnings_num'=>$this->score / Setting::find(1)->conversion_rate,
        'score'=>$this->score,
        'image'=>$this->image_url,
        'referral_code'=>$this->referral_code,
        'currency'=>Setting::find(1)->currency,
        'min_to_withdraw'=>Setting::find(1)->min_to_withdraw,
        'conversion_rate'=>Setting::find(1)->conversion_rate,
        'question_time'=>Setting::find(1)->question_time,
        'referral_register_points'=>Setting::find(1)->referral_register_points,
        'completed_option'=>Setting::find(1)->completed_option,
        'fifty_fifty'=>Setting::find(1)->fifty_fifty,
        'video_reward'=>Setting::find(1)->video_reward,
        'email_verification_option'=>Setting::find(1)->email_verification_option,
        'member_since'=>$this->created_at->format('jS F Y')];
    }
}
