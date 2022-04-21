

import Foundation
public extension PlatformClient {
    /*
         Model: OptOutInventory
         Used By: Configuration
     */

    class OptOutInventory: Codable {
        public var store: [Int]

        public var company: [Int]

        public enum CodingKeys: String, CodingKey {
            case store

            case company
        }

        public init(company: [Int], store: [Int]) {
            self.store = store

            self.company = company
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            store = try container.decode([Int].self, forKey: .store)

            company = try container.decode([Int].self, forKey: .company)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(company, forKey: .company)
        }
    }
}
