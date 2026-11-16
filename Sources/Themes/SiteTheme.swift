//
//  SiteTheme.swift
//  AntoonMe
//
//  Created by Antoon Derijcke on 03/11/2026.
//

import Ignite

struct MyLightTheme: Theme {
    var colorScheme: ColorScheme = .light
    var accent: Color = Color(hex: "#4f46e5")  // Indigo-600 (buttons, active states)
    var link: Color = Color(hex: "#4f46e5")  // Link color
    var hoveredLink: Color = Color(hex: "#4338ca")  // Indigo-700
}

struct MyDarkTheme: Theme {
    var colorScheme: ColorScheme = .dark
    var accent: Color = Color(hex: "#6366f1")  // Indigo-500
    var background: Color = Color(hex: "#0a0a0a")  // Neutral-950
    var secondaryBackground: Color = Color(hex: "#171717")
    var link: Color = Color(hex: "#818cf8")  // Indigo-400
}
