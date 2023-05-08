

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderPriority
         Used By: Order
     */

    class OrderPriority: Codable {
        public var fulfilmentPriority: Int?

        public var fulfilmentPriorityText: String?

        public var affiliatePriorityCode: String?

        public enum CodingKeys: String, CodingKey {
            case fulfilmentPriority = "fulfilment_priority"

            case fulfilmentPriorityText = "fulfilment_priority_text"

            case affiliatePriorityCode = "affiliate_priority_code"
        }

        public init(affiliatePriorityCode: String? = nil, fulfilmentPriority: Int? = nil, fulfilmentPriorityText: String? = nil) {
            self.fulfilmentPriority = fulfilmentPriority

            self.fulfilmentPriorityText = fulfilmentPriorityText

            self.affiliatePriorityCode = affiliatePriorityCode
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
                fulfilmentPriorityText = try container.decode(String.self, forKey: .fulfilmentPriorityText)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(fulfilmentPriority, forKey: .fulfilmentPriority)

            try? container.encodeIfPresent(fulfilmentPriorityText, forKey: .fulfilmentPriorityText)

            try? container.encode(affiliatePriorityCode, forKey: .affiliatePriorityCode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderPriority
         Used By: Order
     */

    class OrderPriority: Codable {
        public var fulfilmentPriority: Int?

        public var fulfilmentPriorityText: String?

        public var affiliatePriorityCode: String?

        public enum CodingKeys: String, CodingKey {
            case fulfilmentPriority = "fulfilment_priority"

            case fulfilmentPriorityText = "fulfilment_priority_text"

            case affiliatePriorityCode = "affiliate_priority_code"
        }

        public init(affiliatePriorityCode: String? = nil, fulfilmentPriority: Int? = nil, fulfilmentPriorityText: String? = nil) {
            self.fulfilmentPriority = fulfilmentPriority

            self.fulfilmentPriorityText = fulfilmentPriorityText

            self.affiliatePriorityCode = affiliatePriorityCode
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
                fulfilmentPriorityText = try container.decode(String.self, forKey: .fulfilmentPriorityText)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(fulfilmentPriority, forKey: .fulfilmentPriority)

            try? container.encodeIfPresent(fulfilmentPriorityText, forKey: .fulfilmentPriorityText)

            try? container.encode(affiliatePriorityCode, forKey: .affiliatePriorityCode)
        }
    }
}
