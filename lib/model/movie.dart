import 'package:flutter_learn/model/news.dart';

class RangesData {
  CoverBean cover;
  List<RangesBean> ranges;

  static RangesData fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    RangesData data = RangesData();
    data.cover = map['cover'] != null ? CoverBean.fromMap(map['cover']) : null;
    data.ranges = List()
      ..addAll((map['ranges'] as List ?? []).map((o) => RangesBean.fromMap(o)));
    return data;
  }

  Map toJson() => {
        "cover": cover,
        "ranges": ranges,
      };
}

/// info : {"id":591,"background_img":"https://img3.doubanio.com/view/activity_page/raw/public/p2950.jpg","description":"　　多少理想主义者背负着别人的嘲讽往前走，而大他们十倍百倍的人一心想看他们笑话，多少人收到打击后一蹶不振，而只有他们十分之一百分之一的人可以触底反弹，这部电影他蒸馏你的热血，让你血气冲上大脑，然后水从眼里流出来，告诉你要成为这样的人。","left":false,"title":"2017评分最高的外语电影","subject":{"rating":{"average":9,"max":10,"min":0,"details":{"1":0.002013006781351064,"2":0.0030906547952579077,"3":0.049426210341008865,"4":0.295458656701272,"5":0.6500114713811102}},"original_title":"Dangal","playable":true,"is_released":true,"subtype":"movie","id":"26387939","title":"摔跤吧！爸爸","rating_count":906604,"primary_color_light":"a57947","primary_color_dark":"7f5d36","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2457983084.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2457983084.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2457983084.jpg"}}}
/// subjects : [{"id":"26387939","is_released":true,"playable":true,"rating_count":906602,"title":"摔跤吧！爸爸","rating":{"average":9,"max":10,"min":0,"details":{"1":0.002013011222123931,"2":0.0030906616133650707,"3":0.04942631937719087,"4":0.29545930849479707,"5":0.6500106992925231}},"original_title":"Dangal","subtype":"movie","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2457983084.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2457983084.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2457983084.jpg"}},{"id":"26799731","is_released":true,"playable":false,"rating_count":350637,"title":"请以你的名字呼唤我","rating":{"average":8.8,"max":10,"min":0,"details":{"1":0.004697165444605104,"2":0.01127947136212094,"3":0.09679811314835571,"4":0.3322866668377838,"5":0.5549385832071344}},"original_title":"Call Me by Your Name","subtype":"movie","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2505525050.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2505525050.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2505525050.jpg"}},{"id":"26580232","is_released":true,"playable":true,"rating_count":675647,"title":"看不见的客人","rating":{"average":8.8,"max":10,"min":0,"details":{"1":0.001039004095333806,"2":0.0034603868588182884,"3":0.06568222755373739,"4":0.3725288501243993,"5":0.5572895313677112}},"original_title":"Contratiempo","subtype":"movie","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2498971355.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2498971355.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2498971355.jpg"}},{"id":"25980443","is_released":true,"playable":true,"rating_count":307038,"title":"海边的曼彻斯特","rating":{"average":8.6,"max":10,"min":0,"details":{"1":0.0027749008266077816,"2":0.010024817774998534,"3":0.11025996782157257,"4":0.4154404340830777,"5":0.46149987949374344}},"original_title":"Manchester by the Sea","subtype":"movie","images":{"small":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2496940327.jpg","large":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2496940327.jpg","medium":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2496940327.jpg"}},{"id":"10512661","is_released":true,"playable":true,"rating_count":298885,"title":"银翼杀手2049","rating":{"average":8.3,"max":10,"min":0,"details":{"1":0.012058149455476187,"2":0.027385114676213258,"3":0.17098884186225471,"4":0.4046941131204309,"5":0.3848737808856249}},"original_title":"Blade Runner 2049","subtype":"movie","images":{"small":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2501864539.jpg","large":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2501864539.jpg","medium":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2501864539.jpg"}},{"id":"26761416","is_released":true,"playable":true,"rating_count":232637,"title":"至暗时刻","rating":{"average":8.6,"max":10,"min":0,"details":{"1":0.0021492711821421355,"2":0.006275871851855036,"3":0.09724592390720306,"4":0.43787961502254585,"5":0.4564493180362539}},"original_title":"Darkest Hour","subtype":"movie","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2504277551.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2504277551.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2504277551.jpg"}},{"id":"26607693","is_released":true,"playable":true,"rating_count":480306,"title":"敦刻尔克","rating":{"average":8.4,"max":10,"min":0,"details":{"1":0.007963673158361545,"2":0.014130575091712366,"3":0.13491191032383523,"4":0.43677155813169105,"5":0.4062222832943998}},"original_title":"Dunkirk","subtype":"movie","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2494950714.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2494950714.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2494950714.jpg"}},{"id":"25934014","is_released":true,"playable":true,"rating_count":522887,"title":"爱乐之城","rating":{"average":8.4,"max":10,"min":0,"details":{"1":0.007814307871490398,"2":0.02148074058066083,"3":0.15218967004343195,"4":0.3808547544689388,"5":0.43766052703547803}},"original_title":"La La Land","subtype":"movie","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2395517414.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2395517414.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2395517414.jpg"}},{"id":"26844922","is_released":true,"playable":true,"rating_count":62585,"title":"杰出公民","rating":{"average":8.4,"max":10,"min":0,"details":{"1":0.003403371414875769,"2":0.011184788687385157,"3":0.13263561556283454,"4":0.49166733242789806,"5":0.36110889190700646}},"original_title":"El ciudadano ilustre","subtype":"movie","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2441383861.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2441383861.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2441383861.jpg"}},{"id":"27024903","is_released":true,"playable":true,"rating_count":494897,"title":"天才枪手","rating":{"average":8.2,"max":10,"min":0,"details":{"1":0.0029299025857905787,"2":0.009739400319662476,"3":0.14098085056082377,"4":0.5157760099576275,"5":0.3305738365760956}},"original_title":"ฉลาดเกมส์โกง","subtype":"movie","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2501863104.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2501863104.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2501863104.jpg"}}]

class RangesBean {
  CoverBean info;
  List<Movie> subjects;

  static RangesBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    RangesBean rangesBean = RangesBean();
    rangesBean.info =
        map['info'] != null ? CoverBean.fromMap(map['info']) : null;
    rangesBean.subjects = List()
      ..addAll((map['subjects'] as List ?? []).map((o) => Movie.fromMap(o)));
    return rangesBean;
  }

  Map toJson() => {
        "info": info,
        "subjects": subjects,
      };
}

/// description : "基于2017年你和万千豆瓣用户的电影标记数据，排名依据评分、人数和时间综合考虑（统计截至2017-12-25）"
/// background_img : "https://img9.doubanio.com/view/activity_page/raw/public/p2826.jpg"
/// title_img : "https://img9.doubanio.com/view/activity_page/raw/public/p2096.jpg"
/// video : "//sv1.doubanio.com/201910171814/c0be034fd7ef82197259daeb66c2d882/2017/mp4ie_annual_4.mp4"
/// title : "豆瓣2017年度电影榜单"
/// year : 2017

class CoverBean {
  String description;
  String backgroundImg;
  String mobileBackgroundImg;
  String titleImg;
  String video;
  String title;
  int year;

  String primaryColorLight;
  String primaryColorDark;

  int id;
  bool left;
  Movie subject;

  static CoverBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    CoverBean coverBean = CoverBean();
    coverBean.description = map['description'];
    coverBean.backgroundImg = map['background_img'];
    coverBean.mobileBackgroundImg = map['mobile_background_img'];
    coverBean.titleImg = map['title_img'];
    coverBean.video = map['video'];
    coverBean.title = map['title'];
    coverBean.primaryColorLight = map['primary_color_light'];
    coverBean.primaryColorDark = map['primary_color_dark'];
    coverBean.year = map['year'];
    coverBean.id = map['id'];
    coverBean.left = map['left'];
    coverBean.subject =
        map['subject'] != null ? Movie.fromMap(map['subject']) : null;
    return coverBean;
  }

  Map toJson() => {
        "description": description,
        "background_img": backgroundImg,
        "title_img": titleImg,
        "video": video,
        "title": title,
        "year": year,
        "id": id,
        "left": left,
        "subject": subject,
      };
}

/// banners : [{"cover":"https://img1.doubanio.com/view/movie_gallery_frame_hot_rec/normal/public/b4b3467a4a0df7c.jpg","link":"https://www.douban.com/note/735952605/?from=gallery","title":"秋日特惠！大师课八个课程4折起","summary":"10月1日~10月15日活动期间，豆瓣影人PRO大师课八门课程4折起，购买课程限量赠送「大师课学习手账」一本！"},{"cover":"https://img3.doubanio.com/view/movie_gallery_frame_hot_rec/normal/public/6a12b199b1ad0c3.jpg","link":"https://movie.douban.com/trailer/253939/?from=gallery","title":"高分动画《盗梦特攻队》定档11月15日","summary":"豆瓣8.4分动画电影《盗梦特攻队》11月15日全国上映！"},{"cover":"https://img3.doubanio.com/view/movie_gallery_frame_hot_rec/normal/public/7a517172a94b7d0.jpg","link":"https://movie.douban.com/trailer/253732/?from=gallery","title":"《瑞克和莫蒂》第四季11月10回归","summary":"快乐11月！"},{"cover":"https://img1.doubanio.com/view/movie_gallery_frame_hot_rec/normal/public/d36db4f25dcbe8b.jpg","link":"https://movie.douban.com/trailer/253234/?from=gallery","title":"《绝命毒师》电影版正式预告","summary":"“小粉”亚伦·保尔、“瘦皮猴”查尔斯·贝克、Badger马特·琼斯等超过十位剧版卡司回归！10月11日Netflix上线！"},{"cover":"https://img1.doubanio.com/view/movie_gallery_frame_hot_rec/normal/public/2cb68465216f54b.jpg","link":"https://movie.douban.com/trailer/253730/?from=gallery","title":"网飞首部华语原创剧集《罪梦者》预告","summary":"张孝全、贾静雯、范晓萱、王柏杰、刘子千主演Netflix首部华语原创剧集！《十七岁的天空》导演陈映蓉执导，10月31日Netflix全集上线！"},{"cover":"https://img3.doubanio.com/view/movie_gallery_frame_hot_rec/normal/public/b0545a25fc71c8d.jpg","link":"https://movie.douban.com/trailer/253172/?from=gallery","title":"昆汀新片《好莱坞往事》定档10月25日","summary":"昆汀·塔伦蒂诺第九部电影长片！小李x布拉德·皮特两大男神主演！"}]
/// in_theaters : [{"rating":{"max":10,"average":8.0,"stars":"40","min":0},"title":"我和我的祖国","collect_count":381666,"mainland_pubdate":"2019-09-30","has_video":false,"original_title":"我和我的祖国","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567998580.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567998580.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567998580.jpg"},"id":"32659890"},{"rating":{"max":10,"average":7.0,"stars":"35","min":0},"title":"中国机长","collect_count":252233,"mainland_pubdate":"2019-09-30","has_video":false,"original_title":"中国机长","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568261402.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568261402.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568261402.jpg"},"id":"30295905"},{"rating":{"max":10,"average":0,"stars":"00","min":0},"title":"犯罪现场","collect_count":103,"mainland_pubdate":"2019-10-12","has_video":false,"original_title":"犯罪現場","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570879785.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570879785.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570879785.jpg"},"id":"26235346"},{"rating":{"max":10,"average":6.2,"stars":"30","min":0},"title":"急速逃脱","collect_count":427,"mainland_pubdate":"2019-10-12","has_video":false,"original_title":"Steig. Nicht. Aus!","subtype":"movie","year":"2018","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568928751.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568928751.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568928751.jpg"},"id":"27098016"},{"rating":{"max":10,"average":6.6,"stars":"35","min":0},"title":"攀登者","collect_count":131913,"mainland_pubdate":"2019-09-30","has_video":false,"original_title":"攀登者","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568577681.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568577681.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568577681.jpg"},"id":"30413052"},{"rating":{"max":10,"average":0,"stars":"00","min":0},"title":"双子杀手","collect_count":2421,"mainland_pubdate":"2019-10-18","has_video":false,"original_title":"Gemini Man","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570906505.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570906505.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570906505.jpg"},"id":"3097572"}]
/// soon_movies : [{"rating":{"max":10,"average":0,"stars":"00","min":0},"title":"犯罪现场","collect_count":103,"mainland_pubdate":"2019-10-12","has_video":false,"original_title":"犯罪現場","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570879785.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570879785.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570879785.jpg"},"id":"26235346"},{"rating":{"max":10,"average":6.2,"stars":"30","min":0},"title":"急速逃脱","collect_count":427,"mainland_pubdate":"2019-10-12","has_video":false,"original_title":"Steig. Nicht. Aus!","subtype":"movie","year":"2018","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568928751.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568928751.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568928751.jpg"},"id":"27098016"},{"rating":{"max":10,"average":5.1,"stars":"25","min":0},"title":"丑娃娃","collect_count":853,"mainland_pubdate":"2019-10-13","has_video":false,"original_title":"UglyDolls","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570312295.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570312295.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570312295.jpg"},"id":"23774847"},{"rating":{"max":10,"average":0,"stars":"00","min":0},"title":"打过长江去","collect_count":3,"mainland_pubdate":"2019-10-16","has_video":false,"original_title":"打过长江去","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2546307854.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2546307854.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2546307854.jpg"},"id":"30345265"},{"rating":{"max":10,"average":0,"stars":"00","min":0},"title":"双子杀手","collect_count":2421,"mainland_pubdate":"2019-10-18","has_video":false,"original_title":"Gemini Man","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570906505.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570906505.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570906505.jpg"},"id":"3097572"},{"rating":{"max":10,"average":0,"stars":"00","min":0},"title":"沉睡魔咒2","collect_count":98,"mainland_pubdate":"2019-10-18","has_video":false,"original_title":"Maleficent: Mistress of Evil","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570105165.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570105165.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570105165.jpg"},"id":"26426056"}]
/// top250 : {"tip":"豆瓣榜单~共250部","title":"豆瓣电影Top250","subjects":[{"rating":{"max":10,"average":9.7,"stars":"50","min":0},"title":"肖申克的救赎","collect_count":2210938,"mainland_pubdate":"","has_video":true,"original_title":"The Shawshank Redemption","subtype":"movie","year":"1994","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p480747492.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p480747492.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p480747492.jpg"},"id":"1292052"},{"rating":{"max":10,"average":9.6,"stars":"50","min":0},"title":"霸王别姬","collect_count":1766003,"mainland_pubdate":"","has_video":true,"original_title":"霸王别姬","subtype":"movie","year":"1993","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561716440.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561716440.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561716440.jpg"},"id":"1291546"},{"rating":{"max":10,"average":9.5,"stars":"50","min":0},"title":"阿甘正传","collect_count":1921116,"mainland_pubdate":"","has_video":true,"original_title":"Forrest Gump","subtype":"movie","year":"1994","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2559011361.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2559011361.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2559011361.jpg"},"id":"1292720"},{"rating":{"max":10,"average":9.4,"stars":"50","min":0},"title":"这个杀手不太冷","collect_count":2236370,"mainland_pubdate":"","has_video":true,"original_title":"Léon","subtype":"movie","year":"1994","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p511118051.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p511118051.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p511118051.jpg"},"id":"1295644"},{"rating":{"max":10,"average":9.5,"stars":"50","min":0},"title":"美丽人生","collect_count":1005852,"mainland_pubdate":"","has_video":true,"original_title":"La vita è bella","subtype":"movie","year":"1997","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p510861873.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p510861873.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p510861873.jpg"},"id":"1292063"},{"rating":{"max":10,"average":9.4,"stars":"50","min":0},"title":"泰坦尼克号","collect_count":1831001,"mainland_pubdate":"1998-04-03","has_video":true,"original_title":"Titanic","subtype":"movie","year":"1997","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p457760035.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p457760035.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p457760035.jpg"},"id":"1292722"},{"rating":{"max":10,"average":9.3,"stars":"50","min":0},"title":"千与千寻","collect_count":1832111,"mainland_pubdate":"2019-06-21","has_video":false,"original_title":"千と千尋の神隠し","subtype":"movie","year":"2001","images":{"small":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2557573348.jpg","large":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2557573348.jpg","medium":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2557573348.jpg"},"id":"1291561"},{"rating":{"max":10,"average":9.5,"stars":"50","min":0},"title":"辛德勒的名单","collect_count":934113,"mainland_pubdate":"","has_video":true,"original_title":"Schindler's List","subtype":"movie","year":"1993","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p492406163.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p492406163.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p492406163.jpg"},"id":"1295124"},{"rating":{"max":10,"average":9.3,"stars":"50","min":0},"title":"盗梦空间","collect_count":1870387,"mainland_pubdate":"2010-09-01","has_video":true,"original_title":"Inception","subtype":"movie","year":"2010","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p513344864.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p513344864.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p513344864.jpg"},"id":"3541415"},{"rating":{"max":10,"average":9.3,"stars":"50","min":0},"title":"忠犬八公的故事","collect_count":1394126,"mainland_pubdate":"","has_video":true,"original_title":"Hachi: A Dog's Tale","subtype":"movie","year":"2009","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p524964016.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p524964016.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p524964016.jpg"},"id":"3011091"}]}
/// uses : {"tip":"每周五更新~共11部","title":"豆瓣电影北美票房榜","subjects":[{"rating":{"max":10,"average":9.2,"stars":"50","min":0},"title":"小丑","collect_count":30470,"mainland_pubdate":"","has_video":false,"original_title":"Joker","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567198874.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567198874.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567198874.jpg"},"id":"27119724"},{"rating":{"max":10,"average":7.5,"stars":"40","min":0},"title":"雪人奇缘","collect_count":9783,"mainland_pubdate":"2019-10-01","has_video":false,"original_title":"Abominable","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567925521.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567925521.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567925521.jpg"},"id":"26929010"},{"rating":{"max":10,"average":9.2,"stars":"50","min":0},"title":"唐顿庄园：2011圣诞特别篇","collect_count":46240,"mainland_pubdate":"","has_video":false,"original_title":"Downton Abbey: Christmas at Downton Abbey","subtype":"movie","year":"2011","images":{"small":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1711501188.jpg","large":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1711501188.jpg","medium":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1711501188.jpg"},"id":"6870362"},{"rating":{"max":10,"average":6.9,"stars":"35","min":0},"title":"舞女大盗","collect_count":993,"mainland_pubdate":"","has_video":false,"original_title":"Hustlers","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2565479931.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2565479931.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2565479931.jpg"},"id":"30294313"},{"rating":{"max":10,"average":6.6,"stars":"35","min":0},"title":"小丑回魂2","collect_count":6351,"mainland_pubdate":"","has_video":false,"original_title":"It: Chapter Two","subtype":"movie","year":"2019","images":{"small":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2562859558.jpg","large":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2562859558.jpg","medium":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2562859558.jpg"},"id":"27133569"},{"rating":{"max":10,"average":6.8,"stars":"35","min":0},"title":"星际探索","collect_count":3529,"mainland_pubdate":"","has_video":false,"original_title":"Ad Astra","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2569545416.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2569545416.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2569545416.jpg"},"id":"24716039"},{"rating":{"max":10,"average":7.6,"stars":"40","min":0},"title":"朱迪","collect_count":172,"mainland_pubdate":"","has_video":false,"original_title":"Judy","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561885281.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561885281.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561885281.jpg"},"id":"27179039"},{"rating":{"max":10,"average":7.6,"stars":"40","min":0},"title":"第一滴血5：最后的血","collect_count":5249,"mainland_pubdate":"","has_video":false,"original_title":"Rambo: Last Blood","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2564519086.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2564519086.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2564519086.jpg"},"id":"10546436"},{"rating":{"max":10,"average":0,"stars":"00","min":0},"title":"宝莱坞双雄之战","collect_count":70,"mainland_pubdate":"","has_video":false,"original_title":"War","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2569921195.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2569921195.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2569921195.jpg"},"id":"34607890"},{"rating":{"max":10,"average":7.5,"stars":"40","min":0},"title":"好小子们","collect_count":1070,"mainland_pubdate":"","has_video":false,"original_title":"Good Boys","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2550223943.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2550223943.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2550223943.jpg"},"id":"27115166"},{"rating":{"max":10,"average":8.0,"stars":"40","min":0},"title":"我和我的祖国","collect_count":381667,"mainland_pubdate":"2019-09-30","has_video":false,"original_title":"我和我的祖国","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567998580.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567998580.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567998580.jpg"},"id":"32659890"}]}
/// new_movies : {"tip":"每周五更新~共12部","title":"豆瓣电影新片榜","subjects":[{"rating":{"max":10,"average":9.2,"stars":"50","min":0},"title":"小丑","collect_count":30470,"mainland_pubdate":"","has_video":false,"original_title":"Joker","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567198874.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567198874.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567198874.jpg"},"id":"27119724"},{"rating":{"max":10,"average":6.2,"stars":"35","min":0},"title":"银河补习班","collect_count":219175,"mainland_pubdate":"2019-07-18","has_video":true,"original_title":"银河补习班","subtype":"movie","year":"2019","images":{"small":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561542089.jpg","large":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561542089.jpg","medium":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561542089.jpg"},"id":"30282387"},{"rating":{"max":10,"average":5.4,"stars":"30","min":0},"title":"保持沉默","collect_count":40800,"mainland_pubdate":"2019-08-23","has_video":true,"original_title":"保持沉默","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2565877341.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2565877341.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2565877341.jpg"},"id":"26331839"},{"rating":{"max":10,"average":7.7,"stars":"40","min":0},"title":"安娜","collect_count":59932,"mainland_pubdate":"","has_video":false,"original_title":"Anna","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2553320254.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2553320254.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2553320254.jpg"},"id":"27166976"},{"rating":{"max":10,"average":8.7,"stars":"45","min":0},"title":"寄生虫","collect_count":481990,"mainland_pubdate":"","has_video":false,"original_title":"기생충","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561439800.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561439800.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561439800.jpg"},"id":"27010768"},{"rating":{"max":10,"average":7.6,"stars":"40","min":0},"title":"极限逃生","collect_count":69021,"mainland_pubdate":"","has_video":false,"original_title":"엑시트","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561571695.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561571695.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561571695.jpg"},"id":"30210691"},{"rating":{"max":10,"average":5.4,"stars":"30","min":0},"title":"沉默的证人","collect_count":85028,"mainland_pubdate":"2019-08-16","has_video":true,"original_title":"沉默的证人","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2564369311.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2564369311.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2564369311.jpg"},"id":"26816090"},{"rating":{"max":10,"average":6.5,"stars":"35","min":0},"title":"仲夏夜惊魂","collect_count":20621,"mainland_pubdate":"","has_video":false,"original_title":"Midsommar","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2550004671.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2550004671.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2550004671.jpg"},"id":"30288638"},{"rating":{"max":10,"average":7.9,"stars":"40","min":0},"title":"柳烈的音乐专辑","collect_count":10995,"mainland_pubdate":"","has_video":false,"original_title":"유열의 음악앨범","subtype":"movie","year":"2019","images":{"small":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561996109.jpg","large":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561996109.jpg","medium":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561996109.jpg"},"id":"30225296"},{"rating":{"max":10,"average":3.6,"stars":"20","min":0},"title":"龙牌之谜","collect_count":9432,"mainland_pubdate":"2019-08-16","has_video":true,"original_title":"龙牌之谜","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2563494916.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2563494916.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2563494916.jpg"},"id":"26367602"},{"rating":{"max":10,"average":5.1,"stars":"25","min":0},"title":"深夜食堂","collect_count":20245,"mainland_pubdate":"2019-08-30","has_video":true,"original_title":"深夜食堂","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2566158271.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2566158271.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2566158271.jpg"},"id":"26868553"},{"rating":{"max":10,"average":6.5,"stars":"35","min":0},"title":"大侦探皮卡丘","collect_count":305403,"mainland_pubdate":"2019-05-10","has_video":true,"original_title":"Pokémon Detective Pikachu","subtype":"movie","year":"2019","images":{"small":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2555538168.jpg","large":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2555538168.jpg","medium":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2555538168.jpg"},"id":"26835471"}]}
/// weekly : {"tip":"每周五更新~共10部","title":"豆瓣电影本周口碑榜","subjects":[{"rating":{"max":10,"average":8.0,"stars":"40","min":0},"title":"我和我的祖国","collect_count":381667,"mainland_pubdate":"2019-09-30","has_video":false,"original_title":"我和我的祖国","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567998580.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567998580.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567998580.jpg"},"id":"32659890"},{"rating":{"max":10,"average":7.9,"stars":"40","min":0},"title":"柳烈的音乐专辑","collect_count":10995,"mainland_pubdate":"","has_video":false,"original_title":"유열의 음악앨범","subtype":"movie","year":"2019","images":{"small":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561996109.jpg","large":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561996109.jpg","medium":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561996109.jpg"},"id":"30225296"},{"rating":{"max":10,"average":7.8,"stars":"40","min":0},"title":"时效警察·复活特别篇","collect_count":1187,"mainland_pubdate":"","has_video":false,"original_title":"時効警察・復活スペシャル","subtype":"movie","year":"2019","images":{"small":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2571013037.jpg","large":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2571013037.jpg","medium":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2571013037.jpg"},"id":"34803018"},{"rating":{"max":10,"average":7.6,"stars":"40","min":0},"title":"蜂鸟","collect_count":398,"mainland_pubdate":"","has_video":false,"original_title":"벌새","subtype":"movie","year":"2018","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2544256615.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2544256615.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2544256615.jpg"},"id":"30318230"},{"rating":{"max":10,"average":7.5,"stars":"40","min":0},"title":"翻译家","collect_count":442,"mainland_pubdate":"","has_video":false,"original_title":"Un Traductor","subtype":"movie","year":"2018","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2546996631.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2546996631.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2546996631.jpg"},"id":"27615401"},{"rating":{"max":10,"average":7.5,"stars":"40","min":0},"title":"雪人奇缘","collect_count":9783,"mainland_pubdate":"2019-10-01","has_video":false,"original_title":"Abominable","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567925521.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567925521.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567925521.jpg"},"id":"26929010"},{"rating":{"max":10,"average":7.4,"stars":"40","min":0},"title":"有时候，永远不","collect_count":228,"mainland_pubdate":"","has_video":false,"original_title":"Sometimes, Always Never","subtype":"movie","year":"2018","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2544680815.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2544680815.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2544680815.jpg"},"id":"26803480"},{"rating":{"max":10,"average":7.0,"stars":"35","min":0},"title":"中国机长","collect_count":252233,"mainland_pubdate":"2019-09-30","has_video":false,"original_title":"中国机长","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568261402.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568261402.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568261402.jpg"},"id":"30295905"},{"rating":{"max":10,"average":7.0,"stars":"35","min":0},"title":"萤火虫","collect_count":428,"mainland_pubdate":"","has_video":false,"original_title":"জোনাকি","subtype":"movie","year":"2018","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2516371076.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2516371076.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2516371076.jpg"},"id":"30170741"},{"rating":{"max":10,"average":8.5,"stars":"45","min":0},"title":"成就梦想","collect_count":454,"mainland_pubdate":"","has_video":false,"original_title":"Make Us Dream","subtype":"movie","year":"2018","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2540667494.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2540667494.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2540667494.jpg"},"id":"30368463"}]}
/// category : [{"title":"热门","subjects":[{"rate":"6.2","cover_x":1200,"title":"银河补习班","url":"https://movie.douban.com/subject/30282387/","playable":true,"cover":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561542089.jpg","id":"30282387","cover_y":1694,"is_new":false},{"rate":"7.7","cover_x":3543,"title":"安娜","url":"https://movie.douban.com/subject/27166976/","playable":false,"cover":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2553320254.jpg","id":"27166976","cover_y":4724,"is_new":false},{"rate":"6.6","cover_x":510,"title":"我的天使","url":"https://movie.douban.com/subject/30141343/","playable":false,"cover":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2565435561.jpg","id":"30141343","cover_y":755,"is_new":true}]},{"title":"最新","subjects":[{"rate":"7.1","cover_x":1500,"title":"特别的她 Progressive","url":"https://movie.douban.com/subject/27080660/","playable":false,"cover":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2516948449.jpg","id":"27080660","cover_y":2122,"is_new":true},{"rate":"6.8","cover_x":1475,"title":"我们无法阻挡","url":"https://movie.douban.com/subject/30186498/","playable":false,"cover":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2525120569.jpg","id":"30186498","cover_y":2048,"is_new":true},{"rate":"5.8","cover_x":2000,"title":"幽灵女孩","url":"https://movie.douban.com/subject/27046734/","playable":false,"cover":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2560021039.jpg","id":"27046734","cover_y":3000,"is_new":true}]},{"title":"经典","subjects":[{"rate":"9.7","cover_x":2000,"title":"肖申克的救赎","url":"https://movie.douban.com/subject/1292052/","playable":true,"cover":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p480747492.jpg","id":"1292052","cover_y":2963,"is_new":false},{"rate":"9.6","cover_x":600,"title":"霸王别姬","url":"https://movie.douban.com/subject/1291546/","playable":true,"cover":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561716440.jpg","id":"1291546","cover_y":889,"is_new":false},{"rate":"9.4","cover_x":658,"title":"这个杀手不太冷","url":"https://movie.douban.com/subject/1295644/","playable":true,"cover":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p511118051.jpg","id":"1295644","cover_y":980,"is_new":false}]}]

class MovieHomeData {
  List<MovieNews> banners;
  List<Movie> inTheaters;
  List<Movie> soonMovies;
  List<MovieTag> category;
  List<MovieTag> ranges;

  static MovieHomeData fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    MovieHomeData data = MovieHomeData();
    data.banners = List()
      ..addAll((map['banners'] as List ?? []).map((o) => MovieNews.fromMap(o)));
    data.inTheaters = List()
      ..addAll((map['in_theaters'] as List ?? []).map((o) => Movie.fromMap(o)));
    data.soonMovies = List()
      ..addAll((map['soon_movies'] as List ?? []).map((o) => Movie.fromMap(o)));
    data.category = List()
      ..addAll((map['category'] as List ?? []).map((o) => MovieTag.fromMap(o)));
    data.ranges = List()
      ..addAll((map['ranges'] as List ?? []).map((o) => MovieTag.fromMap(o)));
    return data;
  }

  Map toJson() => {
        "banners": banners,
        "in_theaters": inTheaters,
        "soon_movies": soonMovies,
        "ranges": ranges,
        "category": category,
      };
}

/// title : "热门"
/// subjects : [{"rate":"6.2","cover_x":1200,"title":"银河补习班","url":"https://movie.douban.com/subject/30282387/","playable":true,"cover":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561542089.jpg","id":"30282387","cover_y":1694,"is_new":false},{"rate":"7.7","cover_x":3543,"title":"安娜","url":"https://movie.douban.com/subject/27166976/","playable":false,"cover":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2553320254.jpg","id":"27166976","cover_y":4724,"is_new":false},{"rate":"6.6","cover_x":510,"title":"我的天使","url":"https://movie.douban.com/subject/30141343/","playable":false,"cover":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2565435561.jpg","id":"30141343","cover_y":755,"is_new":true}]

class MovieTag {
  String tip;
  String title;
  List<Movie> subjects;
  bool hasMore;

  static MovieTag fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    MovieTag categoryBean = MovieTag();
    categoryBean.tip = map['tip'];
    categoryBean.title = map['title'];
    categoryBean.hasMore = map['has_more'];
    categoryBean.subjects = List()
      ..addAll((map['subjects'] as List ?? []).map((o) => Movie.fromMap(o)));
    return categoryBean;
  }

  Map toJson() => {
        "title": title,
        "tip": tip,
        "has_more": hasMore,
        "subjects": subjects,
      };
}

class Movie {
  /// 原名
  String originalTitle;

  /// 豆瓣小站
  String douBanSite;

  /// 年代
  String year;

  /// 条目页URL
  String alt;

  /// id
  String id;

  /// 移动版条目页URL
  String mobileUrl;

  /// 兼容性数据，未来会去掉，大陆上映日期，如果条目类型是电影则为上映日期，如果是电视剧则为首播日期
  String pubDate;

  /// 中文名
  String title;

  /// 分享链接
  String shareUrl;

  /// 影讯页URL(movie only)
  String scheduleUrl;

  /// 官方网站
  String website;

  /// 大陆上映日期，如果条目类型是电影则为上映日期，如果是电视剧则为首播日期
  String mainlandPubDate;

  /// 简介
  String summary;

  /// 条目分类, movie或者tv
  String subtype;

  /// 可播放
  bool hasVideo;

  /// 是否预定
  bool hasSchedule;

  /// 是否有票
  bool hasTicket;

  /// 排行
  int rank;

  /// 排名改变量,正数为排名上升，负数为排名下降，0位排名不变（一周口碑榜接口字段）
  int delta;

  /// 票房（美元）（北美票房榜接口字段）
  num box;

  /// 是否新上映
  bool isNew;

  /// 在看人数，如果是电视剧，默认值为0，如果是电影值为null
  int doCount;

  /// 总季数(tv only)
  int seasonsCount;

  /// 收藏
  dynamic collection;

  /// 当前季的集数(tv only)
  String episodesCount;

  /// 当前季数(tv only)
  String currentSeason;

  /// 想看人数
  int wishCount;

  /// 看过人数
  int collectCount;

  /// 剧照数量
  int photosCount;

  /// 评分人数
  int ratingsCount;

  /// 电影海报图，分别提供288px x 465px(大)，96px x 155px(中) 64px x 103px(小)尺寸
  Images images;

  /// 评分
  Rating rating;

  /// 又名
  List<String> aka;

  /// 制片国家/地区
  List<String> countries;

  /// 片长
  List<String> durations;

  /// 影片类型，最多提供3个
  List<String> genres;

  /// 语言
  List<String> languages;

  /// 如果条目类型是电影则为上映日期，如果是电视剧则为首Ï日期
  List<String> pubDates;

  /// 标签
  List<String> tags;

  /// 影人角色
  List<String> roles;

  /// 预告片
  List<Clips> trailers;

  /// 预告片URL，对高级用户以上开放，最多开放4个地址
  List<String> trailerUrls;

  /// 花絮，对高级用户以上开放
  List<Clips> bloopers;

  /// 花絮URL，对高级用户以上开放，最多开放4个地址
  List<String> blooperUrls;

  /// 片段，对高级用户以上开放
  List<Clips> clips;

  /// 片段URL，对高级用户以上开放，最多开放4个地址
  List<String> clipUrls;

  /// 电影剧照，前10张
  List<Photos> photos;

  /// 短评数量
  int commentsCount;

  /// 短评,4条
  List<Reviews> popularComments;

  /// 影评数量
  int reviewsCount;

  /// 影评，前10条
  List<Reviews> popularReviews;

  List<Videos> videos;

  /// 导演
  List<Casts> directors;

  /// 主演，最多可获得4个
  List<Casts> casts;

  /// 编剧
  List<Casts> writers;

  /// 可播放的
  bool playable;

  static Movie fromMap(Map<String, dynamic> map) {
    Movie movie = Movie();
    movie.originalTitle = map['original_title'];
    movie.douBanSite = map['douban_site'];
    movie.playable = map['playable'];
    movie.year = map['year'];
    movie.alt = map['alt'];
    movie.id = map['id'];
    movie.mobileUrl = map['mobile_url'];
    movie.pubDate = map['pubdate'];
    movie.title = map['title'];
    movie.shareUrl = map['share_url'];
    movie.scheduleUrl = map['schedule_url'];
    movie.website = map['website'];
    movie.mainlandPubDate = map['mainland_pubdate'];
    movie.summary = map['summary'];
    movie.subtype = map['subtype'];
    movie.hasVideo = map['has_video'];
    movie.hasSchedule = map['has_schedule'];
    movie.hasTicket = map['has_ticket'];
    movie.doCount = map['do_count'] == null ? 0 : map['do_count'];
    movie.seasonsCount =
        map['seasons_count'] == null ? 0 : map['seasons_count'];
    movie.collection = map['collection'];
    movie.episodesCount =
        map['episodes_count'] == null ? '0' : map['episodes_count'];
    movie.currentSeason =
        map['current_season'] == null ? '0' : map['current_season'];
    movie.reviewsCount = map['reviews_count'];
    movie.wishCount = map['wish_count'];
    movie.collectCount = map['collect_count'];
    movie.photosCount = map['photos_count'];
    movie.commentsCount = map['comments_count'];
    movie.ratingsCount = map['ratings_count'];

    movie.isNew = map['new'];
    movie.box = map['box'];
    movie.rank = map['rank'];
    movie.delta = map['delta'];

    movie.images = map['images'] == null ? null : Images.fromMap(map['images']);
    movie.rating = map['rating'] == null ? null : Rating.fromMap(map['rating']);
    movie.bloopers =
        map['bloopers'] == null ? [] : Clips.fromMapList(map['bloopers']);
    movie.casts = map['casts'] == null ? [] : Casts.fromMapList(map['casts']);
    movie.clips = map['clips'] == null ? [] : Clips.fromMapList(map['clips']);
    movie.directors =
        map['directors'] == null ? [] : Casts.fromMapList(map['directors']);
    movie.photos =
        map['photos'] == null ? [] : Photos.fromMapList(map['photos']);
    movie.popularComments = map['popular_comments'] == null
        ? []
        : Reviews.fromMapList(map['popular_comments']);
    movie.popularReviews = map['popular_reviews'] == null
        ? []
        : Reviews.fromMapList(map['popular_reviews']);
    movie.trailers =
        map['trailers'] == null ? [] : Clips.fromMapList(map['trailers']);
    movie.videos =
        map['videos'] == null ? [] : Videos.fromMapList(map['videos']);
    movie.writers =
        map['writers'] == null ? [] : Casts.fromMapList(map['writers']);

    List<dynamic> aka = map['aka'] == null ? [] : map['aka'];
    movie.aka = List();
    movie.aka.addAll(aka.map((o) => o.toString()));

    List<dynamic> blooperUrls =
        map['blooper_urls'] == null ? [] : map['blooper_urls'];
    movie.blooperUrls = List();
    movie.blooperUrls.addAll(blooperUrls.map((o) => o.toString()));

    List<dynamic> clipUrls = map['clip_urls'] == null ? [] : map['clip_urls'];
    movie.clipUrls = List();
    movie.clipUrls.addAll(clipUrls.map((o) => o.toString()));

    List<dynamic> countries = map['countries'] == null ? [] : map['countries'];
    movie.countries = List();
    movie.countries.addAll(countries.map((o) => o.toString()));

    List<dynamic> durations = map['durations'] == null ? [] : map['durations'];
    movie.durations = List();
    movie.durations.addAll(durations.map((o) => o.toString()));

    List<dynamic> genres = map['genres'] == null ? [] : map['genres'];
    movie.genres = List();
    movie.genres.addAll(genres.map((o) => o.toString()));

    List<dynamic> languages = map['languages'] == null ? [] : map['languages'];
    movie.languages = List();
    movie.languages.addAll(languages.map((o) => o.toString()));

    List<dynamic> pubDates = map['pubdates'] == null ? [] : map['pubdates'];
    movie.pubDates = List();
    movie.pubDates.addAll(pubDates.map((o) => o.toString()));

    List<dynamic> tagList = map['tags'] == null ? [] : map['tags'];
    movie.tags = List();
    movie.tags.addAll(tagList.map((o) => o.toString()));

    List<dynamic> roleList = map['roles'] == null ? [] : map['roles'];
    movie.roles = List();
    movie.roles.addAll(roleList.map((o) => o.toString()));

    List<dynamic> trailerUrlList =
        map['trailer_urls'] == null ? [] : map['trailer_urls'];
    movie.trailerUrls = List();
    movie.trailerUrls.addAll(trailerUrlList.map((o) => o.toString()));

    return movie;
  }

  static List<Movie> fromMapList(dynamic mapList) {
    List<Movie> list = List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }
}

class Celebrity {
  String website;
  String mobileUrl;
  String name;
  String nameEn;
  String gender;
  String summary;
  String birthday;
  String alt;
  String bornPlace;
  String constellation;
  String id;
  Avatars avatars;
  List<String> aka;
  List<String> akaEn;
  List<String> professions;
  List<Photos> photos;
  List<Movie> subjects;

  static Celebrity fromMap(Map<String, dynamic> map) {
    Celebrity celebrity = Celebrity();
    celebrity.website = map['website'];
    celebrity.mobileUrl = map['mobile_url'];
    celebrity.name = map['name'];
    celebrity.nameEn = map['name_en'];
    celebrity.gender = map['gender'];
    celebrity.summary = map['summary'];
    celebrity.birthday = map['birthday'];
    celebrity.alt = map['alt'];
    celebrity.bornPlace = map['born_place'];
    celebrity.constellation = map['constellation'];
    celebrity.id = map['id'];
    celebrity.avatars =
        map['avatars'] == null ? null : Avatars.fromMap(map['avatars']);
    celebrity.photos =
        map['photos'] == null ? [] : Photos.fromMapList(map['photos']);
    celebrity.subjects =
        map['subjects'] == null ? [] : Movie.fromMapList(map['subjects']);

    List<dynamic> aka = map['aka'] == null ? [] : map['aka'];
    celebrity.aka = List();
    celebrity.aka.addAll(aka.map((o) => o.toString()));

    List<dynamic> akaEn = map['aka_en'] == null ? [] : map['aka_en'];
    celebrity.akaEn = List();
    celebrity.akaEn.addAll(akaEn.map((o) => o.toString()));

    List<dynamic> professions =
        map['professions'] == null ? [] : map['professions'];
    celebrity.professions = List();
    celebrity.professions.addAll(professions.map((o) => o.toString()));

    return celebrity;
  }

  static List<Celebrity> fromMapList(dynamic mapList) {
    List<Celebrity> list = List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }

  @override
  String toString() {
    return '{website: $website, mobile_url: $mobileUrl, name: $name, name_en: $nameEn, gender: $gender, summary: $summary, birthday: $birthday, alt: $alt, born_place: $bornPlace, constellation: $constellation, id: $id, avatars: $avatars, aka: $aka, aka_en: $akaEn, professions: $professions, photos: $photos}';
  }
}

class Casts {
  String nameEn;
  String name;
  String alt;
  String id;
  Avatars avatars;

  static Casts fromMap(Map<String, dynamic> map) {
    Casts castsListBean = Casts();
    castsListBean.nameEn = map['name_en'];
    castsListBean.name = map['name'];
    castsListBean.alt = map['alt'];
    castsListBean.id = map['id'];
    castsListBean.avatars =
        map['avatars'] == null ? null : Avatars.fromMap(map['avatars']);
    return castsListBean;
  }

  static List<Casts> fromMapList(dynamic mapList) {
    List<Casts> list = List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }

  @override
  String toString() {
    return '{name_en: $nameEn, name: $name, alt: $alt, id: $id, avatars: $avatars}';
  }
}

class Photos {
  String thumb;
  String icon;
  String createdAt;
  String albumId;
  String cover;
  String id;
  String prevPhoto;
  String albumUrl;
  String image;
  String alt;
  String albumTitle;
  String nextPhoto;
  String subjectId;
  String desc;
  int photosCount;
  int commentsCount;
  int recsCount;
  int position;
  Author author;

  static Photos fromMap(Map<String, dynamic> map) {
    Photos photos = Photos();
    photos.thumb = map['thumb'];
    photos.icon = map['icon'];
    photos.createdAt = map['created_at'];
    photos.albumId = map['album_id'];
    photos.cover = map['cover'];
    photos.id = map['id'];
    photos.prevPhoto = map['prev_photo'];
    photos.albumUrl = map['album_url'];
    photos.image = map['image'];
    photos.alt = map['alt'];
    photos.albumTitle = map['album_title'];
    photos.nextPhoto = map['next_photo'];
    photos.subjectId = map['subject_id'];
    photos.desc = map['desc'];
    photos.photosCount = map['photos_count'];
    photos.commentsCount = map['comments_count'];
    photos.recsCount = map['recs_count'];
    photos.position = map['position'];
    photos.author =
        map['author'] == null ? null : Author.fromMap(map['author']);
    return photos;
  }

  static List<Photos> fromMapList(dynamic mapList) {
    List<Photos> list = List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }

  @override
  String toString() {
    return 'Photos{thumb: $thumb, icon: $icon, created_at: $createdAt, album_id: $albumId, cover: $cover, id: $id, prev_photo: $prevPhoto, album_url: $albumUrl, image: $image, alt: $alt, album_title: $albumTitle, next_photo: $nextPhoto, subject_id: $subjectId, desc: $desc, photos_count: $photosCount, comments_count: $commentsCount, recs_count: $recsCount, position: $position, author: $author}';
  }
}

class Reviews {
  String createdAt;
  String title;
  String updatedAt;
  String shareUrl;
  String summary;
  String content;
  String alt;
  String id;
  String subjectId;
  int usefulCount;
  int uselessCount;
  int commentsCount;
  Author author;
  Rating rating;

  static Reviews fromMap(Map<String, dynamic> map) {
    Reviews reviews = new Reviews();
    reviews.createdAt = map['created_at'];
    reviews.title = map['title'];
    reviews.updatedAt = map['updated_at'];
    reviews.shareUrl = map['share_url'];
    reviews.summary = map['summary'];
    reviews.content = map['content'];
    reviews.alt = map['alt'];
    reviews.id = map['id'];
    reviews.subjectId = map['subject_id'];
    reviews.usefulCount = map['useful_count'];
    reviews.uselessCount = map['useless_count'];
    reviews.commentsCount = map['comments_count'];
    reviews.author =
        map['author'] == null ? null : Author.fromMap(map['author']);
    reviews.rating =
        map['rating'] == null ? null : Rating.fromMap(map['rating']);
    return reviews;
  }

  static List<Reviews> fromMapList(dynamic mapList) {
    List<Reviews> list = new List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }
}

class Author {
  String uid;
  String avatar;
  String signature;
  String alt;
  String id;
  String name;

  static Author fromMap(Map<String, dynamic> map) {
    Author author = Author();
    author.uid = map['uid'];
    author.avatar = map['avatar'];
    author.signature = map['signature'];
    author.alt = map['alt'];
    author.id = map['id'];
    author.name = map['name'];
    return author;
  }

  static List<Author> fromMapList(dynamic mapList) {
    List<Author> list = List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }

  @override
  String toString() {
    return '{uid: $uid, avatar: $avatar, signature: $signature, alt: $alt, id: $id, name: $name}';
  }
}

class Avatars {
  String small;
  String large;
  String medium;

  static Avatars fromMap(Map<String, dynamic> map) {
    Avatars avatarsBean = Avatars();
    avatarsBean.small = map != null ? map['small'] : "";
    avatarsBean.large = map != null ? map['large'] : "";
    avatarsBean.medium = map != null ? map['medium'] : "";
    return avatarsBean;
  }

  static List<Avatars> fromMapList(dynamic mapList) {
    List<Avatars> list = List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }

  @override
  String toString() {
    return '{small: $small, large: $large, medium: $medium}';
  }
}

class Videos {
  String sampleLink;
  String videoId;
  bool needPay;
  Source source;

  static Videos fromMap(Map<String, dynamic> map) {
    Videos videosListBean = Videos();
    videosListBean.sampleLink = map['sample_link'];
    videosListBean.videoId = map['video_id'];
    videosListBean.needPay = map['need_pay'];
    videosListBean.source = Source.fromMap(map['source']);
    return videosListBean;
  }

  static List<Videos> fromMapList(dynamic mapList) {
    List<Videos> list = List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }
}

class Source {
  String literal;
  String pic;
  String name;

  static Source fromMap(Map<String, dynamic> map) {
    Source sourceBean = Source();
    sourceBean.literal = map['literal'];
    sourceBean.pic = map['pic'];
    sourceBean.name = map['name'];
    return sourceBean;
  }

  static List<Source> fromMapList(dynamic mapList) {
    List<Source> list = List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }

  @override
  String toString() {
    return 'SourceBean{literal: $literal, pic: $pic, name: $name}';
  }
}

class Rating {
  int max;
  num value;
  int min;
  num average;
  String stars;
  Details details;

  static Rating fromMap(Map<String, dynamic> map) {
    Rating ratingBean = Rating();
    ratingBean.max = map['max'];
    ratingBean.value = map['value'] == null ? -1 : map['value'];
    ratingBean.min = map['min'];
    ratingBean.stars = map['stars'] == null ? "" : "${map['stars']}";
    ratingBean.average = map['average'] == null ? 0 : map['average'];
    ratingBean.details =
        map['details'] == null ? null : Details.fromMap(map['details']);
    return ratingBean;
  }

  static List<Rating> fromMapList(dynamic mapList) {
    List<Rating> list = List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }

  @override
  String toString() {
    return 'Rating{max: $max, value: $value, min: $min, average: $average, stars: $stars, details: $details}';
  }
}

class Details {
  var star1;
  var star2;
  var star3;
  var star4;
  var star5;

  static Details fromMap(Map<String, dynamic> map) {
    Details detailsBean = Details();
    detailsBean.star1 = map['1'];
    detailsBean.star2 = map['2'];
    detailsBean.star3 = map['3'];
    detailsBean.star4 = map['4'];
    detailsBean.star5 = map['5'];
    return detailsBean;
  }

  static List<Details> fromMapList(dynamic mapList) {
    List<Details> list = List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }

  @override
  String toString() {
    return '{star1: $star1, star2: $star2, star3: $star3, star4: $star4, star5: $star5}';
  }
}

class Clips {
  String medium;
  String title;
  String subjectId;
  String alt;
  String small;
  String resourceUrl;
  String id;

  static Clips fromMap(Map<String, dynamic> map) {
    Clips clipsListBean = Clips();
    clipsListBean.medium = map['medium'];
    clipsListBean.title = map['title'];
    clipsListBean.subjectId = map['subject_id'];
    clipsListBean.alt = map['alt'];
    clipsListBean.small = map['small'];
    clipsListBean.resourceUrl = map['resource_url'];
    clipsListBean.id = map['id'];
    return clipsListBean;
  }

  static List<Clips> fromMapList(dynamic mapList) {
    List<Clips> list = List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }

  @override
  String toString() {
    return 'Clips{medium: $medium, title: $title, subject_id: $subjectId, alt: $alt, small: $small, resource_url: $resourceUrl, id: $id}';
  }
}

class Images {
  String small;
  String large;
  String medium;

  static Images fromMap(Map<String, dynamic> map) {
    Images imagesBean = Images();
    imagesBean.small = map['small'];
    imagesBean.large = map['large'];
    imagesBean.medium = map['medium'];
    return imagesBean;
  }

  static List<Images> fromMapList(dynamic mapList) {
    List<Images> list = List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }
}

/// count : 20
/// start : 0
/// total : 74
/// subjects : [{"rating":{"max":10,"average":7.0,"details":{"1":83.0,"3":1739.0,"2":454.0,"5":615.0,"4":1782.0},"stars":"35","min":0},"genres":["科幻","悬疑","冒险"],"title":"星际探索","casts":[{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p39053.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p39053.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p39053.webp"},"name_en":"Brad Pitt","name":"布拉德·皮特","alt":"https://movie.douban.com/celebrity/1054452/","id":"1054452"},{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p259.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p259.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p259.webp"},"name_en":"Tommy Lee Jones","name":"汤米·李·琼斯","alt":"https://movie.douban.com/celebrity/1047994/","id":"1047994"},{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1518945611.98.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1518945611.98.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1518945611.98.webp"},"name_en":"Ruth Negga","name":"鲁丝·内伽","alt":"https://movie.douban.com/celebrity/1307508/","id":"1307508"}],"durations":["124分钟"],"collect_count":18923,"mainland_pubdate":"2019-12-05","has_video":false,"original_title":"Ad Astra","subtype":"movie","directors":[{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1550134750.85.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1550134750.85.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1550134750.85.webp"},"name_en":"James Gray","name":"詹姆斯·格雷","alt":"https://movie.douban.com/celebrity/1275054/","id":"1275054"}],"pubdates":["2019-08-29(威尼斯电影节)","2019-09-20(美国)","2019-12-05(中国大陆)"],"year":"2019","images":{"small":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2576088318.webp","large":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2576088318.webp","medium":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2576088318.webp"},"alt":"https://movie.douban.com/subject/24716039/","id":"24716039"},{"rating":{"max":10,"average":7.7,"details":{"1":24.0,"3":1639.0,"2":193.0,"5":1124.0,"4":3176.0},"stars":"40","min":0},"genres":["剧情","犯罪"],"title":"南方车站的聚会","casts":[{"avatars":{"small":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1468487353.74.webp","large":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1468487353.74.webp","medium":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1468487353.74.webp"},"name_en":"Ge Hu","name":"胡歌","alt":"https://movie.douban.com/celebrity/1274477/","id":"1274477"},{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p50270.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p50270.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p50270.webp"},"name_en":"Lunmei Gwei","name":"桂纶镁","alt":"https://movie.douban.com/celebrity/1215287/","id":"1215287"},{"avatars":{"small":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1454644679.84.webp","large":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1454644679.84.webp","medium":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1454644679.84.webp"},"name_en":"Fan Liao","name":"廖凡","alt":"https://movie.douban.com/celebrity/1007401/","id":"1007401"}],"durations":["113分钟"],"collect_count":35598,"mainland_pubdate":"2019-12-06","has_video":false,"original_title":"南方车站的聚会","subtype":"movie","directors":[{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1392514426.93.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1392514426.93.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1392514426.93.webp"},"name_en":"Yi'nan Diao","name":"刁亦男","alt":"https://movie.douban.com/celebrity/1276173/","id":"1276173"}],"pubdates":["2019-05-18(戛纳电影节)","2019-12-06(中国大陆)"],"year":"2019","images":{"small":"https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2574278284.webp","large":"https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2574278284.webp","medium":"https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2574278284.webp"},"alt":"https://movie.douban.com/subject/27668250/","id":"27668250"},{"rating":{"max":10,"average":6.2,"details":{"1":29.0,"3":484.0,"2":160.0,"5":48.0,"4":204.0},"stars":"30","min":0},"genres":["喜剧","动作","奇幻"],"title":"勇敢者游戏2：再战巅峰","casts":[{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1500079626.83.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1500079626.83.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1500079626.83.webp"},"name_en":"Dwayne Johnson","name":"道恩·强森","alt":"https://movie.douban.com/celebrity/1044707/","id":"1044707"},{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p42663.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p42663.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p42663.webp"},"name_en":"Karen Gillan","name":"凯伦·吉兰","alt":"https://movie.douban.com/celebrity/1036344/","id":"1036344"},{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p35722.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p35722.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p35722.webp"},"name_en":"Jack Black","name":"杰克·布莱克","alt":"https://movie.douban.com/celebrity/1049492/","id":"1049492"}],"durations":[],"collect_count":7703,"mainland_pubdate":"2019-12-06","has_video":false,"original_title":"Jumanji: The Next Level","subtype":"movie","directors":[{"avatars":{"small":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1515078777.46.webp","large":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1515078777.46.webp","medium":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1515078777.46.webp"},"name_en":"Jake Kasdan","name":"杰克·卡斯丹","alt":"https://movie.douban.com/celebrity/1040862/","id":"1040862"}],"pubdates":["2019-12-06(中国大陆)","2019-12-13(美国)"],"year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2575911093.webp","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2575911093.webp","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2575911093.webp"},"alt":"https://movie.douban.com/subject/30128985/","id":"30128985"},{"rating":{"max":10,"average":8.3,"details":{"1":35.0,"3":4491.0,"2":236.0,"5":9243.0,"4":16835.0},"stars":"45","min":0},"genres":["剧情","喜剧","犯罪"],"title":"利刃出鞘","casts":[{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p42588.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p42588.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p42588.webp"},"name_en":"Daniel Craig","name":"丹尼尔·克雷格","alt":"https://movie.douban.com/celebrity/1025175/","id":"1025175"},{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1506497192.11.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1506497192.11.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1506497192.11.webp"},"name_en":"Ana de Armas","name":"安娜·德·阿玛斯","alt":"https://movie.douban.com/celebrity/1045259/","id":"1045259"},{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1359877729.49.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1359877729.49.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1359877729.49.webp"},"name_en":"Chris Evans","name":"克里斯·埃文斯","alt":"https://movie.douban.com/celebrity/1017885/","id":"1017885"}],"durations":["130分钟"],"collect_count":153304,"mainland_pubdate":"2019-11-29","has_video":false,"original_title":"Knives Out","subtype":"movie","directors":[{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p55599.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p55599.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p55599.webp"},"name_en":"Rian Johnson","name":"莱恩·约翰逊","alt":"https://movie.douban.com/celebrity/1036605/","id":"1036605"}],"pubdates":["2019-09-07(多伦多电影节)","2019-11-27(美国)","2019-11-29(中国大陆)"],"year":"2019","images":{"small":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2574172427.webp","large":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2574172427.webp","medium":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2574172427.webp"},"alt":"https://movie.douban.com/subject/30318116/","id":"30318116"},{"rating":{"max":10,"average":7.8,"details":{"1":15.0,"3":1294.0,"2":139.0,"5":1092.0,"4":3244.0},"stars":"40","min":0},"genres":["剧情","喜剧","悬疑"],"title":"平原上的夏洛克","casts":[{"avatars":{"small":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1571630868.14.webp","large":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1571630868.14.webp","medium":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1571630868.14.webp"},"name_en":"Chaoying Xu","name":"徐朝英","alt":"https://movie.douban.com/celebrity/1418344/","id":"1418344"},{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1571630905.29.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1571630905.29.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1571630905.29.webp"},"name_en":"Zhanyi Zhang","name":"张占义","alt":"https://movie.douban.com/celebrity/1424741/","id":"1424741"},{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1571630919.67.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1571630919.67.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1571630919.67.webp"},"name_en":"Shuhe Su","name":"宿树河","alt":"https://movie.douban.com/celebrity/1424742/","id":"1424742"}],"durations":["98分钟"],"collect_count":25091,"mainland_pubdate":"2019-11-29","has_video":false,"original_title":"平原上的夏洛克","subtype":"movie","directors":[{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/pBPYZsa4sODAcel_avatar_uploaded1556382924.88.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/pBPYZsa4sODAcel_avatar_uploaded1556382924.88.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/pBPYZsa4sODAcel_avatar_uploaded1556382924.88.webp"},"name_en":"Lei Xu","name":"徐磊","alt":"https://movie.douban.com/celebrity/1415626/","id":"1415626"}],"pubdates":["2019-07-22(FIRST青年影展)","2019-11-29(中国大陆)"],"year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2574198225.webp","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2574198225.webp","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2574198225.webp"},"alt":"https://movie.douban.com/subject/33400376/","id":"33400376"},{"rating":{"max":10,"average":6.2,"details":{"1":233.0,"3":2825.0,"2":1024.0,"5":334.0,"4":1475.0},"stars":"35","min":0},"genres":["剧情","喜剧"],"title":"两只老虎","casts":[{"avatars":{"small":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p46.webp","large":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p46.webp","medium":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p46.webp"},"name_en":"You Ge","name":"葛优","alt":"https://movie.douban.com/celebrity/1000905/","id":"1000905"},{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1487850112.67.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1487850112.67.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1487850112.67.webp"},"name_en":"Wei Zhao","name":"赵薇","alt":"https://movie.douban.com/celebrity/1163713/","id":"1163713"},{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1473410979.5.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1473410979.5.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1473410979.5.webp"},"name_en":"Shan Qiao","name":"乔杉","alt":"https://movie.douban.com/celebrity/1316368/","id":"1316368"}],"durations":["96分钟"],"collect_count":42153,"mainland_pubdate":"2019-11-29","has_video":false,"original_title":"两只老虎","subtype":"movie","directors":[{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1366638230.07.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1366638230.07.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1366638230.07.webp"},"name_en":"Fei Li","name":"李非","alt":"https://movie.douban.com/celebrity/1327361/","id":"1327361"}],"pubdates":["2019-11-29(中国大陆)"],"year":"2019","images":{"small":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2574713609.webp","large":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2574713609.webp","medium":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2574713609.webp"},"alt":"https://movie.douban.com/subject/30196805/","id":"30196805"},{"rating":{"max":10,"average":6.4,"details":{"1":51.0,"3":244.0,"2":146.0,"5":88.0,"4":225.0},"stars":"35","min":0},"genres":["剧情","犯罪","悬疑"],"title":"吹哨人","casts":[{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1454395377.49.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1454395377.49.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1454395377.49.webp"},"name_en":"Jiayin Lei","name":"雷佳音","alt":"https://movie.douban.com/celebrity/1312940/","id":"1312940"},{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1507363720.81.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1507363720.81.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1507363720.81.webp"},"name_en":"Wei Tang","name":"汤唯","alt":"https://movie.douban.com/celebrity/1025141/","id":"1025141"},{"avatars":{"small":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p43726.webp","large":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p43726.webp","medium":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p43726.webp"},"name_en":"Xi Qi","name":"齐溪","alt":"https://movie.douban.com/celebrity/1318634/","id":"1318634"}],"durations":["139分钟"],"collect_count":4883,"mainland_pubdate":"2019-12-06","has_video":false,"original_title":"吹哨人","subtype":"movie","directors":[{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1367827663.92.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1367827663.92.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1367827663.92.webp"},"name_en":"Xiaolu Xue","name":"薛晓路","alt":"https://movie.douban.com/celebrity/1275139/","id":"1275139"}],"pubdates":["2019-12-06(中国大陆)"],"year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2572746113.webp","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2572746113.webp","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2572746113.webp"},"alt":"https://movie.douban.com/subject/30198715/","id":"30198715"},{"rating":{"max":10,"average":8.1,"details":{"1":12.0,"3":475.0,"2":51.0,"5":790.0,"4":1048.0},"stars":"40","min":0},"genres":["剧情"],"title":"唐顿庄园","casts":[{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p22847.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p22847.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p22847.webp"},"name_en":"Matthew Goode","name":"马修·古迪","alt":"https://movie.douban.com/celebrity/1000008/","id":"1000008"},{"avatars":{"small":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p35454.webp","large":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p35454.webp","medium":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p35454.webp"},"name_en":"Elizabeth McGovern","name":"伊丽莎白·麦戈文","alt":"https://movie.douban.com/celebrity/1010588/","id":"1010588"},{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p4208.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p4208.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p4208.webp"},"name_en":"Maggie Smith","name":"玛吉·史密斯","alt":"https://movie.douban.com/celebrity/1013798/","id":"1013798"}],"durations":["122分钟","120分钟(中国大陆)"],"collect_count":9198,"mainland_pubdate":"2019-12-13","has_video":false,"original_title":"Downton Abbey","subtype":"movie","directors":[{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1498283326.09.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1498283326.09.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1498283326.09.webp"},"name_en":"Michael Engler","name":"迈克尔·恩格勒","alt":"https://movie.douban.com/celebrity/1360686/","id":"1360686"}],"pubdates":["2019-09-13(英国)","2019-12-13(中国大陆)"],"year":"2019","images":{"small":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2575400017.webp","large":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2575400017.webp","medium":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2575400017.webp"},"alt":"https://movie.douban.com/subject/27002635/","id":"27002635"},{"rating":{"max":10,"average":0,"details":{"1":0,"3":0,"2":0,"5":0,"4":0},"stars":"00","min":0},"genres":["剧情","犯罪"],"title":"误杀","casts":[{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1518431956.11.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1518431956.11.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1518431956.11.webp"},"name_en":"Yang Xiao","name":"肖央","alt":"https://movie.douban.com/celebrity/1274979/","id":"1274979"},{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1545126001.52.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1545126001.52.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1545126001.52.webp"},"name_en":"Zhuo Tan","name":"谭卓","alt":"https://movie.douban.com/celebrity/1312976/","id":"1312976"},{"avatars":{"small":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p5526.webp","large":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p5526.webp","medium":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p5526.webp"},"name_en":"Joan Chen","name":"陈冲","alt":"https://movie.douban.com/celebrity/1044964/","id":"1044964"}],"durations":[],"collect_count":1118,"mainland_pubdate":"2019-12-13","has_video":false,"original_title":"误杀","subtype":"movie","directors":[{"avatars":{"small":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1559275231.36.webp","large":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1559275231.36.webp","medium":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1559275231.36.webp"},"name_en":"Boon-lip Quah","name":"柯汶利","alt":"https://movie.douban.com/celebrity/1417306/","id":"1417306"}],"pubdates":["2019-12-13(中国大陆)"],"year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2576090251.webp","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2576090251.webp","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2576090251.webp"},"alt":"https://movie.douban.com/subject/30176393/","id":"30176393"},{"rating":{"max":10,"average":7.3,"details":{"1":171.0,"3":9714.0,"2":1408.0,"5":4009.0,"4":9492.0},"stars":"40","min":0},"genres":["喜剧","动画","冒险"],"title":"冰雪奇缘2","casts":[{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1395152016.01.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1395152016.01.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1395152016.01.webp"},"name_en":"Kristen Bell","name":"克里斯汀·贝尔","alt":"https://movie.douban.com/celebrity/1031240/","id":"1031240"},{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p22400.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p22400.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p22400.webp"},"name_en":"Idina Menzel","name":"伊迪娜·门泽尔","alt":"https://movie.douban.com/celebrity/1116746/","id":"1116746"},{"avatars":{"small":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1392108916.14.webp","large":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1392108916.14.webp","medium":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1392108916.14.webp"},"name_en":"Josh Gad","name":"乔什·加德","alt":"https://movie.douban.com/celebrity/1305235/","id":"1305235"}],"durations":["104分钟"],"collect_count":162141,"mainland_pubdate":"2019-11-22","has_video":false,"original_title":"Frozen II","subtype":"movie","directors":[{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p48399.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p48399.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p48399.webp"},"name_en":"Chris Buck","name":"克里斯·巴克","alt":"https://movie.douban.com/celebrity/1279552/","id":"1279552"},{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1392548591.79.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1392548591.79.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1392548591.79.webp"},"name_en":"Jennifer Lee","name":"珍妮弗·李","alt":"https://movie.douban.com/celebrity/1335174/","id":"1335174"}],"pubdates":["2019-11-22(美国)","2019-11-22(中国大陆)"],"year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2572847101.webp","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2572847101.webp","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2572847101.webp"},"alt":"https://movie.douban.com/subject/25887288/","id":"25887288"},{"rating":{"max":10,"average":8.4,"details":{"1":1039.0,"3":12329.0,"2":1524.0,"5":35519.0,"4":41721.0},"stars":"45","min":0},"genres":["剧情","爱情","犯罪"],"title":"少年的你","casts":[{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1481224850.68.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1481224850.68.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1481224850.68.webp"},"name_en":"Dongyu Zhou","name":"周冬雨","alt":"https://movie.douban.com/celebrity/1274224/","id":"1274224"},{"avatars":{"small":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1507879990.66.webp","large":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1507879990.66.webp","medium":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1507879990.66.webp"},"name_en":"Jackson Yee","name":"易烊千玺","alt":"https://movie.douban.com/celebrity/1340022/","id":"1340022"},{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1410869351.19.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1410869351.19.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1410869351.19.webp"},"name_en":"Fang Yin","name":"尹昉","alt":"https://movie.douban.com/celebrity/1340310/","id":"1340310"}],"durations":["135分钟"],"collect_count":671713,"mainland_pubdate":"2019-10-25","has_video":true,"original_title":"少年的你","subtype":"movie","directors":[{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1519542625.12.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1519542625.12.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1519542625.12.webp"},"name_en":"Derek Tsang","name":"曾国祥","alt":"https://movie.douban.com/celebrity/1274534/","id":"1274534"}],"pubdates":["2019-10-25(中国大陆)"],"year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2572166063.webp","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2572166063.webp","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2572166063.webp"},"alt":"https://movie.douban.com/subject/30166972/","id":"30166972"},{"rating":{"max":10,"average":9.3,"details":{"1":1455.0,"3":41217.0,"2":3907.0,"5":581848.0,"4":213661.0},"stars":"50","min":0},"genres":["剧情","音乐"],"title":"海上钢琴师","casts":[{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p6281.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p6281.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p6281.webp"},"name_en":"Tim Roth","name":"蒂姆·罗斯","alt":"https://movie.douban.com/celebrity/1025176/","id":"1025176"},{"avatars":{"small":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1355152571.6.webp","large":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1355152571.6.webp","medium":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1355152571.6.webp"},"name_en":"Pruitt Taylor Vince","name":"普路特·泰勒·文斯","alt":"https://movie.douban.com/celebrity/1010659/","id":"1010659"},{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p12333.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p12333.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p12333.webp"},"name_en":"Bill Nunn","name":"比尔·努恩","alt":"https://movie.douban.com/celebrity/1027407/","id":"1027407"}],"durations":["165分钟","120分钟(法国版)","169分钟(加长版)","125分钟(中国大陆)"],"collect_count":1520299,"mainland_pubdate":"2019-11-15","has_video":false,"original_title":"La leggenda del pianista sull'oceano","subtype":"movie","directors":[{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p195.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p195.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p195.webp"},"name_en":"Giuseppe Tornatore","name":"朱塞佩·托纳多雷","alt":"https://movie.douban.com/celebrity/1018983/","id":"1018983"}],"pubdates":["1998-10-28(意大利)","2019-11-15(中国大陆)"],"year":"1998","images":{"small":"https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2574551676.webp","large":"https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2574551676.webp","medium":"https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2574551676.webp"},"alt":"https://movie.douban.com/subject/1292001/","id":"1292001"},{"rating":{"max":10,"average":7.0,"details":{"1":10.0,"3":361.0,"2":71.0,"5":108.0,"4":300.0},"stars":"35","min":0},"genres":["爱情","动画","奇幻"],"title":"若能与你共乘海浪之上","casts":[{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1526185905.42.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1526185905.42.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1526185905.42.webp"},"name_en":"Katayose Ryota","name":"片寄凉太","alt":"https://movie.douban.com/celebrity/1367999/","id":"1367999"},{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1459225712.32.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1459225712.32.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1459225712.32.webp"},"name_en":"Rina Kawaei","name":"川荣李奈","alt":"https://movie.douban.com/celebrity/1322083/","id":"1322083"},{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1532510544.41.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1532510544.41.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1532510544.41.webp"},"name_en":"Honoka Matsumoto","name":"松本穗香","alt":"https://movie.douban.com/celebrity/1350187/","id":"1350187"}],"durations":["96分钟"],"collect_count":3714,"mainland_pubdate":"2019-12-07","has_video":false,"original_title":"きみと、波にのれたら","subtype":"movie","directors":[{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p3601.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p3601.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p3601.webp"},"name_en":"Masaaki Yuasa","name":"汤浅政明","alt":"https://movie.douban.com/celebrity/1274339/","id":"1274339"}],"pubdates":["2019-06-21(日本)","2019-12-07(中国大陆)"],"year":"2019","images":{"small":"https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2574029074.webp","large":"https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2574029074.webp","medium":"https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2574029074.webp"},"alt":"https://movie.douban.com/subject/30345226/","id":"30345226"},{"rating":{"max":10,"average":0,"details":{"1":0,"3":0,"2":0,"5":0,"4":0},"stars":"00","min":0},"genres":["剧情"],"title":"只有芸知道","casts":[{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1449935218.59.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1449935218.59.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1449935218.59.webp"},"name_en":"Xuan Huang","name":"黄轩","alt":"https://movie.douban.com/celebrity/1276105/","id":"1276105"},{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1495783320.95.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1495783320.95.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1495783320.95.webp"},"name_en":"Caiyu Yang","name":"杨采钰","alt":"https://movie.douban.com/celebrity/1320350/","id":"1320350"},{"avatars":{"small":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p43516.webp","large":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p43516.webp","medium":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p43516.webp"},"name_en":"Fan Xu","name":"徐帆","alt":"https://movie.douban.com/celebrity/1017207/","id":"1017207"}],"durations":[],"collect_count":367,"mainland_pubdate":"2019-12-20","has_video":false,"original_title":"只有芸知道","subtype":"movie","directors":[{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p45667.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p45667.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p45667.webp"},"name_en":"Xiaogang Feng","name":"冯小刚","alt":"https://movie.douban.com/celebrity/1274255/","id":"1274255"}],"pubdates":["2019-12-20(中国大陆)"],"year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2575158172.webp","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2575158172.webp","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2575158172.webp"},"alt":"https://movie.douban.com/subject/33436135/","id":"33436135"},{"rating":{"max":10,"average":7.7,"details":{"1":49.0,"3":4484.0,"2":466.0,"5":3353.0,"4":8887.0},"stars":"40","min":0},"genres":["剧情","历史","战争"],"title":"决战中途岛","casts":[{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1370589932.99.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1370589932.99.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1370589932.99.webp"},"name_en":"Ed Skrein","name":"艾德·斯克林","alt":"https://movie.douban.com/celebrity/1329130/","id":"1329130"},{"avatars":{"small":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1386481612.26.webp","large":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1386481612.26.webp","medium":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1386481612.26.webp"},"name_en":"Patrick Wilson","name":"帕特里克·威尔森","alt":"https://movie.douban.com/celebrity/1006919/","id":"1006919"},{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p501.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p501.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p501.webp"},"name_en":"Woody Harrelson","name":"伍迪·哈里森","alt":"https://movie.douban.com/celebrity/1053560/","id":"1053560"}],"durations":["138分钟","136分钟(中国大陆)"],"collect_count":90721,"mainland_pubdate":"2019-11-08","has_video":false,"original_title":"Midway","subtype":"movie","directors":[{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p412.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p412.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p412.webp"},"name_en":"Roland Emmerich","name":"罗兰·艾默里奇","alt":"https://movie.douban.com/celebrity/1040593/","id":"1040593"}],"pubdates":["2019-11-08(美国)","2019-11-08(中国大陆)"],"year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2573582192.webp","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2573582192.webp","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2573582192.webp"},"alt":"https://movie.douban.com/subject/26786669/","id":"26786669"},{"rating":{"max":10,"average":8.8,"details":{"1":8.0,"3":592.0,"2":33.0,"5":3821.0,"4":3306.0},"stars":"45","min":0},"genres":["历史","战争","纪录片"],"title":"他们已不再变老","casts":[],"durations":["99分钟","96分钟(中国大陆)"],"collect_count":27960,"mainland_pubdate":"2019-11-11","has_video":false,"original_title":"They Shall Not Grow Old","subtype":"movie","directors":[{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p40835.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p40835.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p40835.webp"},"name_en":"Peter Jackson","name":"彼得·杰克逊","alt":"https://movie.douban.com/celebrity/1040524/","id":"1040524"}],"pubdates":["2018-10-16(伦敦电影节)","2018-11-09(英国)","2019-11-11(中国大陆)"],"year":"2018","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2572619550.webp","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2572619550.webp","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2572619550.webp"},"alt":"https://movie.douban.com/subject/30242710/","id":"30242710"},{"rating":{"max":10,"average":0,"details":{"1":0,"3":0,"2":0,"5":0,"4":0},"stars":"00","min":0},"genres":["动作","冒险","灾难"],"title":"天·火","casts":[{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p797.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p797.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p797.webp"},"name_en":"Xueqi Wang","name":"王学圻","alt":"https://movie.douban.com/celebrity/1054562/","id":"1054562"},{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1556295932.1.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1556295932.1.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1556295932.1.webp"},"name_en":"Hannah Quinlivan","name":"昆凌","alt":"https://movie.douban.com/celebrity/1313866/","id":"1313866"},{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1555051543.98.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1555051543.98.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1555051543.98.webp"},"name_en":"Shawn Dou","name":"窦骁","alt":"https://movie.douban.com/celebrity/1274225/","id":"1274225"}],"durations":[],"collect_count":46,"mainland_pubdate":"2019-12-12","has_video":false,"original_title":"天·火","subtype":"movie","directors":[{"avatars":{"small":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1495161985.36.webp","large":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1495161985.36.webp","medium":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1495161985.36.webp"},"name_en":"Simon West","name":"西蒙·韦斯特","alt":"https://movie.douban.com/celebrity/1300732/","id":"1300732"}],"pubdates":["2019-12-12(中国大陆)"],"year":"2019","images":{"small":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2574199907.webp","large":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2574199907.webp","medium":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2574199907.webp"},"alt":"https://movie.douban.com/subject/30357885/","id":"30357885"},{"rating":{"max":10,"average":4.0,"details":{"1":49.0,"3":16.0,"2":29.0,"5":7.0,"4":5.0},"stars":"20","min":0},"genres":["爱情"],"title":"一生有你2019","casts":[{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p35791.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p35791.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p35791.webp"},"name_en":"Jiao Xu","name":"徐娇","alt":"https://movie.douban.com/celebrity/1023236/","id":"1023236"},{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1447243509.27.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1447243509.27.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1447243509.27.webp"},"name_en":"Binbin Xie","name":"谢彬彬","alt":"https://movie.douban.com/celebrity/1352794/","id":"1352794"},{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1474118243.45.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1474118243.45.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1474118243.45.webp"},"name_en":"Zidong Yan","name":"晏紫东","alt":"https://movie.douban.com/celebrity/1362288/","id":"1362288"}],"durations":["90分钟"],"collect_count":2500,"mainland_pubdate":"2019-11-29","has_video":false,"original_title":"一生有你2019","subtype":"movie","directors":[{"avatars":{"small":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1381379959.04.webp","large":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1381379959.04.webp","medium":"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1381379959.04.webp"},"name_en":"Gengxu Lu","name":"卢庚戌","alt":"https://movie.douban.com/celebrity/1326070/","id":"1326070"}],"pubdates":["2019-11-29(中国大陆)"],"year":"2019","images":{"small":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2572401707.webp","large":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2572401707.webp","medium":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2572401707.webp"},"alt":"https://movie.douban.com/subject/26263417/","id":"26263417"},{"rating":{"max":10,"average":6.0,"details":{"1":211.0,"3":2216.0,"2":960.0,"5":242.0,"4":812.0},"stars":"30","min":0},"genres":["动作","冒险"],"title":"霹雳娇娃","casts":[{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p11265.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p11265.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p11265.webp"},"name_en":"Kristen Stewart","name":"克里斯汀·斯图尔特","alt":"https://movie.douban.com/celebrity/1012533/","id":"1012533"},{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1558931683.7.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1558931683.7.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1558931683.7.webp"},"name_en":"Naomi Scott","name":"娜奥米·斯科特","alt":"https://movie.douban.com/celebrity/1325313/","id":"1325313"},{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1537246797.52.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1537246797.52.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1537246797.52.webp"},"name_en":"Ella Balinska","name":"埃拉·巴林斯卡","alt":"https://movie.douban.com/celebrity/1398695/","id":"1398695"}],"durations":["119分钟"],"collect_count":23629,"mainland_pubdate":"2019-11-15","has_video":false,"original_title":"Charlie's Angels","subtype":"movie","directors":[{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p22028.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p22028.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p22028.webp"},"name_en":"Elizabeth Banks","name":"伊丽莎白·班克斯","alt":"https://movie.douban.com/celebrity/1004571/","id":"1004571"}],"pubdates":["2019-11-15(美国)","2019-11-15(中国大陆)"],"year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2572654905.webp","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2572654905.webp","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2572654905.webp"},"alt":"https://movie.douban.com/subject/26612258/","id":"26612258"},{"rating":{"max":10,"average":6.9,"details":{"1":835.0,"3":19978.0,"2":4418.0,"5":5782.0,"4":17615.0},"stars":"35","min":0},"genres":["剧情","灾难"],"title":"中国机长","casts":[{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p49047.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p49047.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p49047.webp"},"name_en":"Hanyu Zhang","name":"张涵予","alt":"https://movie.douban.com/celebrity/1274319/","id":"1274319"},{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1571304331.58.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1571304331.58.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1571304331.58.webp"},"name_en":"Oho Ou","name":"欧豪","alt":"https://movie.douban.com/celebrity/1337644/","id":"1337644"},{"avatars":{"small":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1502100680.45.webp","large":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1502100680.45.webp","medium":"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1502100680.45.webp"},"name_en":"Jiang Du","name":"杜江","alt":"https://movie.douban.com/celebrity/1322949/","id":"1322949"}],"durations":["111分钟"],"collect_count":386619,"mainland_pubdate":"2019-09-30","has_video":true,"original_title":"中国机长","subtype":"movie","directors":[{"avatars":{"small":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1403267018.07.webp","large":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1403267018.07.webp","medium":"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1403267018.07.webp"},"name_en":"Andrew Lau","name":"刘伟强","alt":"https://movie.douban.com/celebrity/1106979/","id":"1106979"}],"pubdates":["2019-09-30(中国大陆)"],"year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568258113.webp","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568258113.webp","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568258113.webp"},"alt":"https://movie.douban.com/subject/30295905/","id":"30295905"}]
/// title : "正在上映的电影-北京"

class Hot {
  int count;
  int start;
  int total;
  List<Movie> subjects;
  String title;

  static Hot fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    Hot hotBean = Hot();
    hotBean.count = map['count'];
    hotBean.start = map['start'];
    hotBean.total = map['total'];
    hotBean.subjects = List()
      ..addAll(
          (map['subjects'] as List ?? []).map((o) => Movie.fromMap(o)));
    hotBean.title = map['title'];
    return hotBean;
  }

  Map toJson() => {
        "count": count,
        "start": start,
        "total": total,
        "subjects": subjects,
        "title": title,
      };
}
