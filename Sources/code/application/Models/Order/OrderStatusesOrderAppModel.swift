

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: OrderStatuses
         Used By: Order
     */
    class OrderStatuses: Codable {
        public var display: String?

        public var isSelected: Bool?

        public var value: Int?

        public enum CodingKeys: String, CodingKey {
            case display

            case isSelected = "is_selected"

            case value
        }

        public init(display: String? = nil, isSelected: Bool? = nil, value: Int? = nil) {
            self.display = display

            self.isSelected = isSelected

            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                display = try container.decode(String.self, forKey: .display)

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
                value = try container.decode(Int.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}
