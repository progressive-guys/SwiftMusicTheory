import XCTest
import SwiftMusicTheory
import Foundation

final class ModesTests: XCTestCase {

  func testDiatonic() {
    let cMajor = Mode(root: .c, scale: .diatonic)

    XCTAssertTrue(cMajor.root == .c)
    XCTAssertTrue(cMajor.notes == [.c, .d, .e, .f, .g, .a, .b])
    XCTAssertTrue(cMajor.names.contains("Major"))
    XCTAssertTrue(cMajor.title == "C Major")
    XCTAssertTrue(cMajor.scale.name == "Diatonic")
    XCTAssertTrue(cMajor.parallelMode(at: 5).notes == [.c, .d, .e.flat(), .f, .g, .a.flat(), .b.flat()])
    XCTAssertTrue(cMajor.parallelMode(at: 5).names.contains("Minor"))
    XCTAssertTrue(cMajor.parallelMode(at: 5).scale.name == "Diatonic")

    XCTAssertTrue(cMajor.relativeMode(at: .a)?.notes == [.a, .b, .c, .d, .e, .f, .g])
  }

  func testWholeTone() {
    let cWholeTone = Mode(root: .c, scale: .wholeTone)

    XCTAssertTrue(cWholeTone.root == .c)
    XCTAssertTrue(cWholeTone.notes == [.c, .d, .e, .f.sharp(), .g.sharp(), .a.sharp()])
    XCTAssertTrue(cWholeTone.relativeMode(at: .c)?.notes == [.c, .d, .e, .f.sharp(), .g.sharp(), .a.sharp()])
    XCTAssertTrue(cWholeTone.relativeMode(at: .d)?.notes == [.d, .e, .f.sharp(), .g.sharp(), .a.sharp(), .c])
    XCTAssertTrue(cWholeTone.relativeMode(at: .e)?.notes == [.e, .f.sharp(), .g.sharp(), .a.sharp(), .c, .d])
    XCTAssertTrue(cWholeTone.relativeMode(at: .f.sharp())?.notes == [.f.sharp(), .g.sharp(), .a.sharp(), .c, .d, .e])
    XCTAssertTrue(cWholeTone.relativeMode(at: .g.sharp())?.notes == [.g.sharp(), .a.sharp(), .c, .d, .e, .f.sharp()])
    XCTAssertTrue(cWholeTone.relativeMode(at: .a.sharp())?.notes == [.a.sharp(), .c, .d, .e, .f.sharp(), .g.sharp()])

    XCTAssertTrue(cWholeTone.parallelMode(at: 1).notes == [.c, .d, .e, .f.sharp(), .g.sharp(), .b.flat()])
    XCTAssertTrue(cWholeTone.parallelMode(at: 2).notes == [.c, .d, .e, .f.sharp(), .a.flat(), .b.flat()])
    XCTAssertTrue(cWholeTone.parallelMode(at: 3).notes == [.c, .d, .e, .g.flat(), .a.flat(), .b.flat()])
    XCTAssertTrue(cWholeTone.parallelMode(at: 4).notes == [.c, .d, .f.flat(), .g.flat(), .a.flat(), .b.flat()])
    XCTAssertTrue(cWholeTone.parallelMode(at: 5).notes == [.c, .e.flat(2), .f.flat(), .g.flat(), .a.flat(), .b.flat()])

    let bSharp = Mode(root: .b.sharp(), scale: .wholeTone)
    XCTAssertTrue(bSharp.notes == [.b.sharp(), .c.sharp(2), .d.sharp(2), .e.sharp(2), .f.sharp(3), .g.sharp(3)])

    let aSharp = Mode(root: .a.sharp(), scale: .wholeTone)
    XCTAssertTrue(aSharp.notes == [.a.sharp(), .b.sharp(), .c.sharp(2), .d.sharp(2), .e.sharp(2), .f.sharp(3)])
  }

  func testDiminished() {
    let cDiminished = Mode(root: .c, scale: .diminished)

    XCTAssertTrue(cDiminished.root == .c)
    XCTAssertTrue(cDiminished.notes == [.c, .d, .e.flat(), .f, .f.sharp(), .g.sharp(), .a, .b])
  }
}
