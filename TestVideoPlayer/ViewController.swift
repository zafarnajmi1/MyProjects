//
//  ViewController.swift
//  TestVideoPlayer
//
//  Created by Apple on 9/23/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import BMPlayer
import  BadgeHub
class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var player: BMCustomPlayer!
    var mybadge : BadgeHub?
    
    struct  videosName {
        var name:  String?
        var videoUrl: String
    }
    var videoArray = [videosName]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        BMPlayerConf.allowLog = false
//        // should auto play, default true
//        BMPlayerConf.shouldAutoPlay = true
//        // main tint color, default whiteColor
//        BMPlayerConf.tintColor = UIColor.white
//        // options to show header view (which include the back button, title and definition change button) , default .Always，options: .Always, .HorizantalOnly and .None
//        BMPlayerConf.topBarShowInCase = .always
//        // loader type, see detail：https://github.com/ninjaprox/NVActivityIndicatorView
//        //` BMPlayerConf.loaderType  = UIActivityIndicatorView.BallRotateChase
//        // enable setting the brightness by touch gesture in the player
//        BMPlayerConf.enableBrightnessGestures = true
//        // enable setting the volume by touch gesture in the player
//        BMPlayerConf.enableVolumeGestures = true
//        // enable setting the playtime by touch gesture in the player
//        BMPlayerConf.enablePlaytimeGestures = true
        
        
        //player.backgroundColor  = #colorLiteral(red: 0, green: 0, blue: 0.03921568627, alpha: 1)
        
        //self.navigationController?.isNavigationBarHidden = true
        tableview.register(UINib.init(nibName: "videoCell", bundle: nil), forCellReuseIdentifier: "videoCell")
        
        player.backBlock = { [unowned self] (isFullScreen) in
            if isFullScreen == true {
                return
            }
            let _ = self.navigationController?.popViewController(animated: true)
        }
        //https://5b44cf20b0388.streamlock.net:8443/vod/smil:bbb.smil/playlist.m3u8
       //https://www.radiantmediaplayer.com/media/bbb-360p.mp4
        
        self.config()
//        let asset = BMPlayerResource(url: URL(string: "https://5b44cf20b0388.streamlock.net:8443/vod/smil:bbb.smil/playlist.m3u8")!,
//                                     name: "For test Video",
//                                     cover: nil,
//                                     subtitle: nil)
//        player.setVideo(resource: asset)
        
        
        //player = BMPlayer()
        view.addSubview(player)
        player.snp.makeConstraints { (make) in
            make.top.equalTo(self.view).offset(0)
            make.left.right.equalTo(self.view)
            // Note here, the aspect ratio 16:9 priority is lower than 1000 on the line, because the 4S iPhone aspect ratio is not 16:9
            make.height.equalTo(player.snp.width).multipliedBy(9.0/16.0).priority(750)
        }
        // Back button event
//        player.backBlock = { [unowned self] (isFullScreen) in
//            if isFullScreen == true { return }
//            let _ = self.navigationController?.popViewController(animated: true)
//        }
        
        
    }

    
    func config() {
        self.videoArray.removeAll()
        self.videoArray.append(videosName(name: "For test Video", videoUrl: "https://5b44cf20b0388.streamlock.net:8443/vod/smil:bbb.smil/playlist.m3u8"))
        self.videoArray.append(videosName(name: "For test Video", videoUrl: "https://5b44cf20b0388.streamlock.net:8443/vod/smil:bbb.smil/playlist.m3u8"))
        self.videoArray.append(videosName(name: "For test Video", videoUrl: "https://5b44cf20b0388.streamlock.net:8443/vod/smil:bbb.smil/playlist.m3u8"))
        self.videoArray.append(videosName(name: "For test Video", videoUrl: "https://5b44cf20b0388.streamlock.net:8443/vod/smil:bbb.smil/playlist.m3u8"))
        self.videoArray.append(videosName(name: "For test Video", videoUrl: "https://5b44cf20b0388.streamlock.net:8443/vod/smil:bbb.smil/playlist.m3u8"))
        self.videoArray.append(videosName(name: "For test Video", videoUrl: "https://5b44cf20b0388.streamlock.net:8443/vod/smil:bbb.smil/playlist.m3u8"))
        self.videoArray.append(videosName(name: "For test Video", videoUrl: "https://5b44cf20b0388.streamlock.net:8443/vod/smil:bbb.smil/playlist.m3u8"))
        self.videoArray.append(videosName(name: "For test Video", videoUrl: "https://5b44cf20b0388.streamlock.net:8443/vod/smil:bbb.smil/playlist.m3u8"))
        self.videoArray.append(videosName(name: "For test Video", videoUrl: "https://5b44cf20b0388.streamlock.net:8443/vod/smil:bbb.smil/playlist.m3u8"))
        self.videoArray.append(videosName(name: "For test Video", videoUrl: "https://5b44cf20b0388.streamlock.net:8443/vod/smil:bbb.smil/playlist.m3u8"))
        self.videoArray.append(videosName(name: "For test Video", videoUrl: "https://5b44cf20b0388.streamlock.net:8443/vod/smil:bbb.smil/playlist.m3u8"))
        self.videoArray.append(videosName(name: "For test Video", videoUrl: "https://5b44cf20b0388.streamlock.net:8443/vod/smil:bbb.smil/playlist.m3u8"))
        self.videoArray.append(videosName(name: "For test Video", videoUrl: "https://5b44cf20b0388.streamlock.net:8443/vod/smil:bbb.smil/playlist.m3u8"))
        self.videoArray.append(videosName(name: "For test Video", videoUrl: "https://5b44cf20b0388.streamlock.net:8443/vod/smil:bbb.smil/playlist.m3u8"))
        self.videoArray.append(videosName(name: "For test Video", videoUrl: "https://5b44cf20b0388.streamlock.net:8443/vod/smil:bbb.smil/playlist.m3u8"))
        self.videoArray.append(videosName(name: "For test Video", videoUrl: "https://5b44cf20b0388.streamlock.net:8443/vod/smil:bbb.smil/playlist.m3u8"))
        self.videoArray.append(videosName(name: "For test Video", videoUrl: "https://5b44cf20b0388.streamlock.net:8443/vod/smil:bbb.smil/playlist.m3u8"))
        self.videoArray.append(videosName(name: "For test Video", videoUrl: "https://5b44cf20b0388.streamlock.net:8443/vod/smil:bbb.smil/playlist.m3u8"))
        self.videoArray.append(videosName(name: "For test Video", videoUrl: "https://5b44cf20b0388.streamlock.net:8443/vod/smil:bbb.smil/playlist.m3u8"))
        self.videoArray.append(videosName(name: "For test Video", videoUrl: "https://5b44cf20b0388.streamlock.net:8443/vod/smil:bbb.smil/playlist.m3u8"))
        
    }
    
    func playvideo(videoURl: String){
        let asset = BMPlayerResource(url: URL(string: videoURl)!,
                                     name: "For Test Video",
                                     cover: nil,
                                     subtitle: nil)
        player.setVideo(resource: asset)
    }

}

extension ViewController : UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
         return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "videoCell") as?  videoCell
        cell!.lblname.text = videoArray[indexPath.row].name
       
        cell?.selectionStyle = .blue
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.playvideo(videoURl: self.videoArray[indexPath.row].videoUrl)
    }
    
}
