import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderFilters
         Used By: Order
     */
    class OrderFilters: Codable {
        public var statuses: [OrderStatuses]?

        public enum CodingKeys: String, CodingKey {
            case statuses
        }

        public init(statuses: [OrderStatuses]?) {
            self.statuses = statuses
        }

        public func duplicate() -> OrderFilters {
            let dict = self.dictionary!
            let copy = OrderFilters(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                statuses = try container.decode([OrderStatuses].self, forKey: .statuses)

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
