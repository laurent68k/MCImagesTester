//
//  ConditionKey.swift
//  From App MeteoCities
//
//  Created by Laurent on 15/02/2017.
//  Copyright © 2017 Apple Inc. All rights reserved.
//
//
//	This enum list all possible values for the new JSon key added recently: "condition_key"


import Foundation

public enum ConditionsKeys:String {
 
    case aversesDeNeigeFaible = "averses-de-neige-faible"
    case aversesDePluieFaible = "averses-de-pluie-faible"
    case aversesDePluieForte = "averses-de-pluie-forte"
    case aversesDePluieModeree = "averses-de-pluie-moderee"
    case brouillard = "brouillard"
    case cielVoile = "ciel-voile"
    case couvertAvecAverses = "couvert-avec-averses"
    case developpementNuageux = "developpement-nuageux"
    case eclaircies = "eclaircies"
    case ensoleille  = "ensoleille"
    case faiblementNuageux = "faiblement-nuageux"
    case faiblementOrageux  = "faiblement-orageux"
    case faiblesPassagesNuageux = "faibles-passages-nuageux"
    case fortementNuageux = "fortement-nuageux"
    case fortementOrageux = "fortement-orageux"
    case neigeFaible = "neige-faible"
    case neigeForte = "neige-forte"
    case neigeModeree = "neige-moderee"
    case nuitAvecAverses = "nuit-avec-averses"
    case nuitAvecAversesDeNeigeFaible = "nuit-avec-averses-de-neige-faible"
    case nuitAvecDeveloppementNuageux = "nuit-avec-developpement-nuageux"
    case nuitBienDegagee = "nuit-bien-degagee"
    case nuitClaire = "nuit-claire"
    case nuitClaireEtStratus = "nuit-claire-et-stratus"
    case nuitFaiblementOrageuse = "nuit-faiblement-orageuse"
    case nuitLegerementVoilee = "nuit-legerement-voilee"
    case nuitNuageuse = "nuit-nuageuse"
	case orageModere = "orage-modere"
    case pluieEtNeigeMelee = "pluie-et-neige-melee"
    case pluieEtNeigeMeleeFaible = "pluie-et-neige-melee-faible"
    case pluieEtNeigeMeleeForte = "pluie-et-neige-melee-forte"
    case pluieEtNeigeMeleeModeree = "pluie-et-neige-melee-moderee"
    case pluieFaible = "pluie-faible"
    case pluieForte = "pluie-forte"
    case pluieModeree = "pluie-moderee"
    case stratus = "stratus"
    case stratusSeDissipant = "stratus-se-dissipant"
    case TEST = "TEST"

}
