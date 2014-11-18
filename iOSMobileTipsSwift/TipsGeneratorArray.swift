//
//  TipsGeneratorArray.swift
//  iOSMobileTipsSwift
//
//  Created by Teacher on 11/16/14.
//  Copyright (c) 2014 Teacher. All rights reserved.
//

import UIKit

class TipsGeneratorArray: NSObject
{
    var array : NSArray!

    func generateSampleSet()
    {
        let tip1 = Tip()
        tip1.title = "UITableViewCollection"
        tip1.tipDescription = "Description 1"
        tip1.codeSegment = "Code Segment 1"
        tip1.storyboardName = ""
        
        let tip2 = Tip()
        tip2.title = "UICollectionView"
        tip2.tipDescription = "Description 2"
        tip2.codeSegment = "Code Segment 2"
        tip2.storyboardName = ""
        
        let tip3 = Tip()
        tip3.title = "UIKit"
        tip3.tipDescription = "Description 3"
        tip3.codeSegment = "Code Segment 3"
        tip3.storyboardName = "uikit"
        
        let tip4 = Tip()
        tip4.title = "Foundation Framework"
        tip4.tipDescription = "Description 4"
        tip4.codeSegment = "Code Segment 4"
        tip4.storyboardName = ""
        
        let tip5 = Tip()
        tip5.title = "MediaPlayer"
        tip5.tipDescription = "Description 5"
        tip5.codeSegment = "Code Segment 5"
        tip5.storyboardName = "media"
        
        let tip6 = Tip()
        tip6.title = "Social"
        tip6.tipDescription = "Description 6"
        tip6.codeSegment = "Code Segment 6"
        tip6.storyboardName = "social"
        
        let tip7 = Tip()
        tip7.title = "Core Image"
        tip7.tipDescription = "Description 7"
        tip7.codeSegment = "Code Segment 7"
        tip7.storyboardName = "coreimage"
        
        let tip8 = Tip()
        tip8.title = "Core Location"
        tip8.tipDescription = "Description 8"
        tip8.codeSegment = "Code Segment 8"
        tip8.storyboardName = "corelocation"
        
        let tip9 = Tip()
        tip9.title = "MapKit"
        tip9.tipDescription = "Description 9"
        tip9.codeSegment = "Code Segment 9"
        tip9.storyboardName = "mapKitView"
        
        array = NSArray(objects: tip1, tip2, tip3, tip4, tip5, tip6, tip7, tip8, tip9)
        
    }
    
    func getTitleAtIndex(index:Int) -> NSString
    {
        return (array.objectAtIndex(index) as Tip).title
    }
    
    func getTipDescriptionAtIndex(index:Int) -> NSString
    {
        return (array.objectAtIndex(index) as Tip).tipDescription
    }
    
    func getTipCodeSegmentAtIndex(index:Int) -> NSString
    {
        return (array.objectAtIndex(index) as Tip).codeSegment
    }
    
    func getTipStoryboardNameAtIndex(index:Int) -> NSString
    {
        return (array.objectAtIndex(index) as Tip).storyboardName
    }
    
    func getCount() -> Int
    {
        return array.count
    }

    
}
