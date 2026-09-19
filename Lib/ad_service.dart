import 'package:google_mobile_ads/google_mobile_ads.dart';
class AdService {
  static BannerAd createBanner(){
    return BannerAd(
      size: AdSize.banner,
      adUnitId: 'ca-app-pub-3940256099942544/6300978111', // replace with yours
      listener: BannerAdListener(),
      request: AdRequest(),
    )..load();
  }
  static RewardedAd? rewardedAd;
  static void loadRewarded(){
    RewardedAd.load(adUnitId: 'ca-app-pub-3940256099942544/5224354917',
    adRequest: AdRequest(),
    rewardedAdLoadCallback: RewardedAdLoadCallback(
      onAdLoaded: (ad)=> rewardedAd=ad,
      onAdFailedToLoad: (e)=> print(e)
    ));
  }
}
