

import Foundation
public extension PlatformClient {
    /*
         Model: Hierarchy
         Used By: Catalog
     */

    class Hierarchy: Codable {
        public var l1: Int

        public var department: Int

        public var l2: Int

        public enum CodingKeys: String, CodingKey {
            case l1

            case department

            case l2
        }

        public init(department: Int, l1: Int, l2: Int) {
            self.l1 = l1

            self.department = department

            self.l2 = l2
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            l1 = try container.decode(Int.self, forKey: .l1)

            department = try container.decode(Int.self, forKey: .department)

            l2 = try container.decode(Int.self, forKey: .l2)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(l1, forKey: .l1)

            try? container.encodeIfPresent(department, forKey: .department)

            try? container.encodeIfPresent(l2, forKey: .l2)
        }
    }
}
