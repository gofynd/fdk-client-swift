

import Foundation
public extension PlatformClient {
    /*
         Model: OrderPriority
         Used By: Order
     */

    class OrderPriority: Codable {
        public var fulfilmentPriority: Int?

        public var affiliatePriorityCode: String?

        public var fulfilmentPriorityText: String?

        public enum CodingKeys: String, CodingKey {
            case fulfilmentPriority = "fulfilment_priority"

            case affiliatePriorityCode = "affiliate_priority_code"

            case fulfilmentPriorityText = "fulfilment_priority_text"
        }

        public init(affiliatePriorityCode: String? = nil, fulfilmentPriority: Int? = nil, fulfilmentPriorityText: String? = nil) {
            self.fulfilmentPriority = fulfilmentPriority

            self.affiliatePriorityCode = affiliatePriorityCode

            self.fulfilmentPriorityText = fulfilmentPriorityText
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fulfilmentPriority = try container.decode(Int.self, forKey: .fulfilmentPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliatePriorityCode = try container.decode(String.self, forKey: .affiliatePriorityCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fulfilmentPriorityText = try container.decode(String.self, forKey: .fulfilmentPriorityText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)

            try? container.encodeIfPresent(affiliatePriorityCode, forKey: .affiliatePriorityCode)

            try? container.encodeIfPresent(fulfilmentPriorityText, forKey: .fulfilmentPriorityText)
        }
    }
}
