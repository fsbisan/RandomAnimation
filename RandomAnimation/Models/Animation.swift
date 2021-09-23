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
    var description: String {
                """
                 preset: \(type.rawValue)
                 curve: \(curve.rawValue)
                 force: \(String(format: "%.2f", force))
                 duration: \(String(format: "%.2f", duration))
                 delay: \(String(format: "%.2f", delay))
                """
    }
    
    static func getAnimation() -> Animation {
        let randomAnimation = Animation(type: .allCases.randomElement() ?? .shake,
                                        curve: .allCases.randomElement() ?? .spring,
                                        force: .random(in: 0.5...2),
                                        duration: .random(in: 1...2),
                                        delay: .random(in: 0.1...0.8))
        return randomAnimation
    }
}


