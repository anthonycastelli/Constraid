import XCTest
import Constraid

class ManageIntrinsicSizeRelationsTests: XCTestCase {
    func testKeepIntrinsicHeight() {
        let viewOne = UIView()

        viewOne.keepIntrinsicHeight(priority: Constraid.LayoutPriority(rawValue: 284))

        XCTAssertEqual(viewOne.contentCompressionResistancePriority(for: .vertical), UILayoutPriority(rawValue: UILayoutPriority.RawValue(284)))
        XCTAssertEqual(viewOne.contentHuggingPriority(for: .vertical), UILayoutPriority(rawValue: UILayoutPriority.RawValue(284)))
    }

    func testKeepIntrinsicWidth() {
        let viewOne = UIView()

        viewOne.keepIntrinsicWidth(priority: Constraid.LayoutPriority(rawValue: 284))

        XCTAssertEqual(viewOne.contentCompressionResistancePriority(for: .horizontal), UILayoutPriority(rawValue: UILayoutPriority.RawValue(284)))
        XCTAssertEqual(viewOne.contentHuggingPriority(for: .horizontal), UILayoutPriority(rawValue: UILayoutPriority.RawValue(284)))
    }

    func testKeepIntrinsicSize() {
        let viewOne = UIView()

        viewOne.keepIntrinsicSize(priority: Constraid.LayoutPriority(rawValue: 284))

        XCTAssertEqual(viewOne.contentCompressionResistancePriority(for: .vertical), UILayoutPriority(rawValue: UILayoutPriority.RawValue(284)))
        XCTAssertEqual(viewOne.contentHuggingPriority(for: .vertical), UILayoutPriority(rawValue: UILayoutPriority.RawValue(284)))
        XCTAssertEqual(viewOne.contentCompressionResistancePriority(for: .horizontal), UILayoutPriority(rawValue: UILayoutPriority.RawValue(284)))
        XCTAssertEqual(viewOne.contentHuggingPriority(for: .horizontal), UILayoutPriority(rawValue: UILayoutPriority.RawValue(284)))
    }
}
