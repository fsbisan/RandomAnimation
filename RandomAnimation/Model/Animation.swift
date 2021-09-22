//
//  Animation.swift
//  RandomAnimation
//
//  Created by Александр Макаров on 21.09.2021.
//

struct Animation {
    let type: AnimationType
    let curve: CurveType
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimation() -> Animation {
        let randomAnimation = Animation(type: .allCases.randomElement() ?? .shake,
                                        curve: .allCases.randomElement() ?? .spring,
                                        force: .random(in: 0.5...2),
                                        duration: .random(in: 1...2),
                                        delay: .random(in: 0.1...0.8))
        return randomAnimation
    }
}

enum AnimationType: String, CaseIterable {
    case shake, pop, morph, squeeze, wobble, swing,
         flipX, flipY, fall, squeezeLeft, squeezeRight,
         squeezeDown, squeezeUp, slideLeft, slideRight, slideDown,
         slideUp, fadeIn, fadeOut, fadeInLeft, fadeInRight,
         fadeInDown, fadeInUp, zoomIn, zoomOut, flash
}

enum CurveType: String, CaseIterable {
    case spring, linear, easeIn, easeOut, easeInOut
}


