//
//  DataManager.swift
//  RandomAnimation
//
//  Created by Александр Макаров on 23.09.2021.
//

enum AnimationType: String, CaseIterable {
    case shake, pop, morph,
         squeeze, wobble, swing,
         flipX, flipY, fall,
         squeezeLeft, squeezeRight, queezeDown,
         squeezeUp, slideLeft, slideRight,
         slideDown, slideUp, fadeIn,
         fadeOut, fadeInLeft, fadeInRight,
         fadeInDown, fadeInUp, zoomIn,
         zoomOut, flash
}

enum CurveType: String, CaseIterable {
    case spring, linear, easeIn, easeOut, easeInOut
}
