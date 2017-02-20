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
                                            ConditionsKeys.aversesDeNeigeFaible.rawValue : "averses-de-neige-faible.png",
                                            ConditionsKeys.aversesDePluieFaible.rawValue : "averses-de-pluie-faible.png",
                                            ConditionsKeys.aversesDePluieForte.rawValue : "averses-de-pluie-forte.png",
                                            ConditionsKeys.aversesDePluieModeree.rawValue : "averses-de-pluie-moderee.png",
                                            ConditionsKeys.brouillard.rawValue : "brouillard.png",
											ConditionsKeys.cielVoile.rawValue : "ciel-voile.png",
											ConditionsKeys.couvertAvecAverses.rawValue : "couvert-avec-averses.png",
											ConditionsKeys.developpementNuageux.rawValue : "developpement-nuageux.png",
											ConditionsKeys.eclaircies.rawValue : "eclaircies.png",
											ConditionsKeys.ensoleille.rawValue  : "ensoleille.png",
                                            ConditionsKeys.faiblementNuageux.rawValue : "faiblement-nuageux.png",
											ConditionsKeys.faiblementOrageux.rawValue  : "faiblement-orageux.png",
											ConditionsKeys.faiblesPassagesNuageux.rawValue : "faibles-passages-nuageux.png",
											ConditionsKeys.fortementNuageux.rawValue : "fortement-nuageux.png",
											ConditionsKeys.fortementOrageux.rawValue : "fortement-orageux.png",
											ConditionsKeys.neigeFaible.rawValue : "neige-faible.png",
											ConditionsKeys.neigeForte.rawValue : "neige-forte.png",
											ConditionsKeys.neigeModeree.rawValue : "neige-moderee.png",
											ConditionsKeys.nuitAvecAverses.rawValue : "nuit-avec-averses.png",
											ConditionsKeys.nuitAvecAversesDeNeigeFaible.rawValue : "nuit-avec-averses-de-neige-faible.png",
											ConditionsKeys.nuitAvecDeveloppementNuageux.rawValue : "nuit-avec-developpement-nuageux.png",
											ConditionsKeys.nuitBienDegagee.rawValue : "nuit-bien-degagee.png",
											ConditionsKeys.nuitClaire.rawValue : "nuit-claire.png",
											ConditionsKeys.nuitClaireEtStratus.rawValue : "nuit-claire-et-stratus.png",
											ConditionsKeys.nuitFaiblementOrageuse.rawValue : "nuit-faiblement-orageuse.png",
											ConditionsKeys.nuitLegerementVoilee.rawValue : "nuit-legerement-voilee.png",
											ConditionsKeys.nuitNuageuse.rawValue : "nuit-nuageuse.png",
											ConditionsKeys.orageModere.rawValue : "orage-modere.png",
											ConditionsKeys.pluieEtNeigeMelee.rawValue : "pluie-et-neige-melee.png",
											ConditionsKeys.pluieEtNeigeMeleeFaible.rawValue : "pluie-et-neige-melee-faible.png",
											ConditionsKeys.pluieEtNeigeMeleeForte.rawValue : "pluie-et-neige-melee-forte.png",
											ConditionsKeys.pluieEtNeigeMeleeModeree.rawValue : "pluie-et-neige-melee-moderee.png",
											ConditionsKeys.pluieFaible.rawValue : "pluie-faible.png",
											ConditionsKeys.pluieForte.rawValue : "pluie-forte.png",
											ConditionsKeys.pluieModeree.rawValue : "pluie-moderee.png",
											ConditionsKeys.stratus.rawValue : "stratus.png",
											ConditionsKeys.stratusSeDissipant.rawValue : "stratus-se-dissipant.png",
									]

    /// ---------------------------------------------------------------------------------------------------------------------------------------------
    public static var listNight : [String] {
        
        get {
            
            var array = [String]()
            
            for element in ImagesManager.lookupTable {
                
                if element.value.hasPrefix("nuit") {
                
                    array.append( element.value )
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
                
                if !element.value.hasPrefix("nuit") {
                    
                    array.append( element.value )
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
	//	Return a custom image regarding the condition key given in parameter
	public class func getPictureCustom( forKey: String ) -> UIImage? {
	
        let imageName = ImagesManager.lookupTable[ forKey ]
		
		if let imageName = imageName {
		
            return UIImage(named: imageName)
            
        }
		
		return nil
	}		
    /// ---------------------------------------------------------------------------------------------------------------------------------------------
}
