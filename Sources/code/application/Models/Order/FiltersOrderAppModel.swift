

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: Filters
         Used By: Order
     */
    class Filters: Codable {
        public var statuses: [Statuses]?

        public enum CodingKeys: String, CodingKey {
            case statuses
        }

        public init(statuses: [Statuses]? = nil) {
            self.statuses = statuses
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                statuses = try container.decode([Statuses].self, forKey: .statuses)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(statuses, forKey: .statuses)
        }
    }
}
