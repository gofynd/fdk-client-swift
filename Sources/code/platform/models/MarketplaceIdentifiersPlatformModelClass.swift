

import Foundation
public extension PlatformClient {
    /*
         Model: MarketplaceIdentifiers
         Used By: Order
     */

    class MarketplaceIdentifiers: Codable {
        public var tatacliqLuxury: TatacliqLuxury?

        public enum CodingKeys: String, CodingKey {
            case tatacliqLuxury = "tatacliq_luxury"
        }

        public init(tatacliqLuxury: TatacliqLuxury? = nil) {
            self.tatacliqLuxury = tatacliqLuxury
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tatacliqLuxury = try container.decode(TatacliqLuxury.self, forKey: .tatacliqLuxury)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tatacliqLuxury, forKey: .tatacliqLuxury)
        }
    }
}
