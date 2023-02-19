<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Admob extends Model
{
	protected $fillable = ['admob_native', 'admob_banner', 'admob_video', 'admob_interstitial', 'fb_native', 'fb_banner', 'fb_interstitial', 'bottom_banner_type', 'fb_video', 'adcolony_app_id', 'adcolony_banner', 'adcolony_interstitial', 'adcolony_reward', 'startapp_app_id', 'interstitial_type', 'video_type', 'admob_app_id'];
}
