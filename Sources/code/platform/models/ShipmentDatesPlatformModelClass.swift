

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDates
         Used By: Order
     */

    class ShipmentDates: Codable {
        public var dueDate: String?

        public enum CodingKeys: String, CodingKey {
            case dueDate = "due_date"
        }

        public init(dueDate: String? = nil) {
            self.dueDate = dueDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dueDate = try container.decode(String.self, forKey: .dueDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)
        }
    }
}
