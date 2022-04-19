import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: Hierarchy
         Used By: Catalog
     */

    class Hierarchy: Codable {
        public var l2: Int

        public var department: Int

        public var l1: Int

        public enum CodingKeys: String, CodingKey {
            case l2

            case department

            case l1
        }

        public init(department: Int, l1: Int, l2: Int) {
            self.l2 = l2

            self.department = department

            self.l1 = l1
        }

        public func duplicate() -> Hierarchy {
            let dict = self.dictionary!
            let copy = Hierarchy(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            l2 = try container.decode(Int.self, forKey: .l2)

            department = try container.decode(Int.self, forKey: .department)

            l1 = try container.decode(Int.self, forKey: .l1)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(l2, forKey: .l2)

            try? container.encodeIfPresent(department, forKey: .department)

            try? container.encodeIfPresent(l1, forKey: .l1)
        }
    }
}
