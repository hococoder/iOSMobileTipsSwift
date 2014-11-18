//
//  MediaPlayerFrameworkExampleViewController.swift
//  iOSMobileTipsSwift
//
//  Created by Teacher on 11/16/14.
//  Copyright (c) 2014 Teacher. All rights reserved.
//

import UIKit
import MediaPlayer

class MediaPlayerFrameworkExampleViewController: UIViewController {

    
    var mvController : MPMoviePlayerViewController!
    @IBOutlet weak var play: UIButton!
    
//    required init(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }

    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        let url = NSURL(string: "http://messenger.jhuapl.edu/the_mission/movies/LunarEclipse_20141008_x2.mp4")
        
        mvController = MPMoviePlayerViewController(contentURL: url)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playMe(sender: AnyObject)
    {
        mvController.moviePlayer.shouldAutoplay = false
        mvController.moviePlayer.prepareToPlay()
        
        mvController.view.frame = CGRectMake(0,0,600,400)
        mvController.modalPresentationStyle = UIModalPresentationStyle.PageSheet;
        self.presentViewController(mvController, animated: true, completion: nil)
    }

}
