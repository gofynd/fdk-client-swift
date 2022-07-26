

import Foundation
public extension PlatformClient {
    /*
         Model: FiltersResponse
         Used By: Orders
     */

    class FiltersResponse: Codable {
        public var channels: [Filters]?

        public var deliveryPartners: [Filters]?

        public enum CodingKeys: String, CodingKey {
            case channels

            case deliveryPartners = "delivery_partners"
        }

        public init(channels: [Filters]? = nil, deliveryPartners: [Filters]? = nil) {
            self.channels = channels

            self.deliveryPartners = deliveryPartners
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                channels = try container.decode([Filters].self, forKey: .channels)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryPartners = try container.decode([Filters].self, forKey: .deliveryPartners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(deliveryPartners, forKey: .deliveryPartners)
        }
    }
}
