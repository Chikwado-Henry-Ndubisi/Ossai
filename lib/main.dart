import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(MaterialApp(debugShowCheckedModeBanner:false, home:SplashScreen()));
}

class SplashScreen extends StatelessWidget{
  @override Widget build(BuildContext c){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors:[Color(0xFF6A1B9A), Color(0xFF9C27B0)])),
        child: Center(child: Column(mainAxisAlignment:MainAxisAlignment.center, children:[
          Text('ossai75', style:TextStyle(fontSize:50, color:Colors.white, fontWeight:FontWeight.bold)),
          SizedBox(height:20),
          ElevatedButton(onPressed:()=>Navigator.push(c, MaterialPageRoute(builder:(_)=>Dashboard())), child:Text('Enter App - Phase 1 Test')),
        ])),
      ),
    );
  }
}

class Dashboard extends StatefulWidget{ @override State<Dashboard> createState()=>_Dash(); }
class _Dash extends State<Dashboard>{
  BannerAd? banner;
  int points=0;
  @override void initState(){ super.initState(); banner=BannerAd(size:AdSize.banner, adUnitId:'ca-app-pub-3940256099942544/6300978111', listener:BannerAdListener(), request:AdRequest())..load(); }
  @override Widget build(BuildContext c){
    return Scaffold(
      appBar: AppBar(title:Text('ossai75 - Mamacoin: ${points~/2000}'), backgroundColor:Color(0xFF6A1B9A)),
      body: Stack(children:[
        Opacity(opacity:0.08, child:Center(child:Text('ossai75', style:TextStyle(fontSize:100)))),
        Column(children:[
          ListTile(title:Text('Mamacoin: 2000pts = N7000'), subtitle:Text('Max 10 coins')),
          ListTile(title:Text('Babycoin: Locked'), subtitle:Text('3000pts')),
          ListTile(title:Text('Cheerscoin: Bonus Coin Only'), subtitle:Text('After 3 years + new pregnancy')),
          ElevatedButton(onPressed:(){ setState(()=>points+=3); }, child:Text('Watch 3 Ads = 1 Point [Pregnant]')),
          ElevatedButton(onPressed:(){ setState(()=>points+=1); }, child:Text('Watch 6 Ads = 1 Point [Ordinary]')),
          Spacer(),
          if(banner!=null) Container(height:50, child:AdWidget(ad:banner!)),
        ]),
      ]),
    );
  }
}
