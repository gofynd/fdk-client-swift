

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: OrderStatuses
         Used By: Order
     */
    class OrderStatuses: Codable {
        public var value: Int?

        public var isSelected: Bool?

        public var display: String?

        public enum CodingKeys: String, CodingKey {
            case value

            case isSelected = "is_selected"

            case display
        }

        public init(display: String? = nil, isSelected: Bool? = nil, value: Int? = nil) {
            self.value = value

            self.isSelected = isSelected

            self.display = display
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode(Int.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSelected = try container.decode(Bool.self, forKey: .isSelected)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }
}
