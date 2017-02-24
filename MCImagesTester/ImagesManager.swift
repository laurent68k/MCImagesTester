//
//  ConditionsManager.swift
//  From App MeteoCities
//
//  Created by Laurent on 15/02/2017.
//  Copyright © 2017 Apple Inc. All rights reserved.
//
//
//	This class manages the conditions pictures associated to the new 'condition_key' value. This class will be use as static.

import UIKit

public class ImagesManager {
     	 	
    private static let lookupTable =	[
        ConditionsKeys.aversesDeNeigeFaible.rawValue : ( "averses-de-neige-faible.png", "BackgroundClear.png"),
        ConditionsKeys.aversesDePluieFaible.rawValue : ("averses-de-pluie-faible.png", "BackgroundClear.png"),
        ConditionsKeys.aversesDePluieForte.rawValue : ("averses-de-pluie-forte.png", "BackgroundCloudy.png"),
        ConditionsKeys.aversesDePluieModeree.rawValue : ("averses-de-pluie-moderee.png", "BackgroundClear.png"),
        ConditionsKeys.brouillard.rawValue : ("brouillard.png", "BackgroundCloudy.png"),
        ConditionsKeys.cielVoile.rawValue : ("ciel-voile.png", "BackgroundClear.png"),
        ConditionsKeys.couvertAvecAverses.rawValue : ("couvert-avec-averses.png", "BackgroundCloudy.png"),
        ConditionsKeys.developpementNuageux.rawValue : ("developpement-nuageux.png", "BackgroundClear.png"),
        ConditionsKeys.eclaircies.rawValue : ("eclaircies.png", "BackgroundClear.png"),
        ConditionsKeys.ensoleille.rawValue  : ("ensoleille.png", "BackgroundClear.png"),
        ConditionsKeys.faiblementNuageux.rawValue : ("faiblement-nuageux.png", "BackgroundClear.png"),
        ConditionsKeys.faiblementOrageux.rawValue  : ("faiblement-orageux.png", "BackgroundClear.png"),
        ConditionsKeys.faiblesPassagesNuageux.rawValue : ("faibles-passages-nuageux.png", "BackgroundClear.png"),
        ConditionsKeys.fortementNuageux.rawValue : ("fortement-nuageux.png", "BackgroundCloudy.png"),
        ConditionsKeys.fortementOrageux.rawValue : ("fortement-orageux.png", "BackgroundCloudy.png"),
        ConditionsKeys.neigeFaible.rawValue : ("neige-faible.png", "BackgroundClear.png"),
        ConditionsKeys.neigeForte.rawValue : ("neige-forte.png", "BackgroundClear.png"),
        ConditionsKeys.neigeModeree.rawValue : ("neige-moderee.png", "BackgroundClear.png"),
        ConditionsKeys.nuitAvecAverses.rawValue : ("nuit-avec-averses.png", "BackgroundClear.png"),
        ConditionsKeys.nuitAvecAversesDeNeigeFaible.rawValue : ("nuit-avec-averses-de-neige-faible.png", "BackgroundClear.png"),
        ConditionsKeys.nuitAvecDeveloppementNuageux.rawValue : ("nuit-avec-developpement-nuageux.png", "BackgroundClear.png"),
        ConditionsKeys.nuitBienDegagee.rawValue : ("nuit-bien-degagee.png", "BackgroundClear.png"),
        ConditionsKeys.nuitClaire.rawValue : ("nuit-claire.png", "BackgroundClear.png"),
        ConditionsKeys.nuitClaireEtStratus.rawValue : ("nuit-claire-et-stratus.png", "BackgroundClear.png"),
        ConditionsKeys.nuitFaiblementOrageuse.rawValue : ("nuit-faiblement-orageuse.png", "BackgroundClear.png"),
        ConditionsKeys.nuitLegerementVoilee.rawValue : ("nuit-legerement-voilee.png", "BackgroundClear.png"),
        ConditionsKeys.nuitNuageuse.rawValue : ("nuit-nuageuse.png", "BackgroundClear.png"),
        ConditionsKeys.orageModere.rawValue : ("orage-modere.png", "BackgroundCloudy.png"),
        ConditionsKeys.pluieEtNeigeMelee.rawValue : ("pluie-et-neige-melee.png", "BackgroundCloudy.png"),
        ConditionsKeys.pluieEtNeigeMeleeFaible.rawValue : ("pluie-et-neige-melee-faible.png", "BackgroundClear.png"),
        ConditionsKeys.pluieEtNeigeMeleeForte.rawValue : ("pluie-et-neige-melee-forte.png", "BackgroundCloudy.png"),
        ConditionsKeys.pluieEtNeigeMeleeModeree.rawValue : ("pluie-et-neige-melee-moderee.png", "BackgroundCloudy.png"),
        ConditionsKeys.pluieFaible.rawValue : ("pluie-faible.png", "BackgroundCloudy.png"),
        ConditionsKeys.pluieForte.rawValue : ("pluie-forte.png", "BackgroundCloudy.png"),
        ConditionsKeys.pluieModeree.rawValue : ("pluie-moderee.png", "BackgroundCloudy.png"),
        ConditionsKeys.stratus.rawValue : ("stratus.png", "BackgroundClear.png"),
        ConditionsKeys.stratusSeDissipant.rawValue : ("stratus-se-dissipant.png", "BackgroundClear.png")
        
    ]
    
    
    /// ---------------------------------------------------------------------------------------------------------------------------------------------
    public static var listNight : [String] {
        
        get {
            
            var array = [String]()
            
            for element in ImagesManager.lookupTable {
                
                if element.value.0.hasPrefix("nuit") {
                
                    array.append( element.value.0 )
                }
                
            }
            return array
        }
    }
    /// ---------------------------------------------------------------------------------------------------------------------------------------------
    public static var listDay : [String] {
        
        get {
            
            var array = [String]()
            
            for element in ImagesManager.lookupTable {
                
                if !element.value.0.hasPrefix("nuit") {
                    
                    array.append( element.value.0 )
                }
                
            }
            return array
        }
    }
    /// ---------------------------------------------------------------------------------------------------------------------------------------------
	init() {
	
        //  nothing special to do
	}
    /// ---------------------------------------------------------------------------------------------------------------------------------------------
	deinit {
	
        //  nothing special to do
	}
    /// ---------------------------------------------------------------------------------------------------------------------------------------------
    //	Return a custom image regarding the condition key given in parameter for a trend
    /*public class func getTrendPictureCustom( forKey: String ) -> UIImage? {
        
        let imageName = ImagesManager.lookupTableTrends[ forKey ]
        
        if let imageName = imageName {
            
            return UIImage(named: imageName)
        }
        
        return nil
    }*/
    /// ---------------------------------------------------------------------------------------------------------------------------------------------
    //	Return a custom image regarding the condition key given in parameter for a background
    public class func getBackgroundPictureCustom( forTrendPictureName: String ) -> UIImage? {
        
        
        for tuple in ImagesManager.lookupTable {
            
            if tuple.value.0 == forTrendPictureName {
                
                return UIImage(named: tuple.value.1 )
            }
        }
        
        return nil
        
        /*let imageName = ImagesManager.lookupTableBackgrounds[ forKey ]
        
        if let imageName = imageName {
            
            return UIImage(named: imageName)
        }
        
        return nil*/
    }		
    
    /// ---------------------------------------------------------------------------------------------------------------------------------------------
}
