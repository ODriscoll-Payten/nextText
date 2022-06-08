//
//  SetParents.swift
//  Text Adventure
//
//  Created by Payten O'Driscoll on 6/8/22.
//

import Foundation
func setParents() {
    westernNode1.parent = introNode
    westernNode2.parent = westernNode1
    westernNode3.parent = westernNode2
    westernNode4.parent = westernNode3
    westernNode5.parent = westernNode4
    westernNode6.parent = westernNode5
    westernEscapeNode.parent = westernNode5
}
