//
//  MathMagicUnitTests.swift
//  MathMagicUnitTests
//
//  Created by Srinivas Prabhu G on 06/02/21.
//

import XCTest
import MathMagic

class MathMagicUnitTests: XCTestCase {

    func testVector3DConstructorInitialization() throws {
        let vector = Vector3D<Float>(x:100,y:200,z:300)

        XCTAssert(vector[.x] == 100)
        XCTAssert(vector[.y] == 200)
        XCTAssert(vector[.z] == 300)
    }

    func testVector3DArrayInitialization() throws {
        let vector:Vector3D<Float> = [1,2,3]

        XCTAssert(vector[.x] == 1)
        XCTAssert(vector[.y] == 2)
        XCTAssert(vector[.z] == 3)
    }
    
    func testVector3DArrayMultiply() throws {
//        let hello = Hello() * Hello()
        let vector:Vector3D<Float> = [100,200,300]

        let multiplied =  vector * 2

        XCTAssert(multiplied[.x] == 200)
        XCTAssert(multiplied[.y] == 400)
        XCTAssert(multiplied[.z] == 600)
    }
    
    func testVector3DArrayChangeDirection() throws {
//        let hello = Hello() * Hello()
        let vector:Vector3D<Float> = [100,200,300]

        let multiplied =  -vector 

        XCTAssert(multiplied[.x] == -100)
        XCTAssert(multiplied[.y] == -200)
        XCTAssert(multiplied[.z] == -300)
    }
    
    
    func testNormalize() throws {
//        let hello = Hello() * Hello()
        let vector:Vector3D<Float> = [10,10,10]
        
        let normalized = vector.normalize
        
        print("\(normalized)")
    }

}
