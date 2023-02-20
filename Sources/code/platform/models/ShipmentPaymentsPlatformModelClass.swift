

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentPayments
         Used By: Order
     */

    class ShipmentPayments: Codable {
        public var source: String?

        public var logo: String?

        public var mode: String

        public enum CodingKeys: String, CodingKey {
            case source

            case logo

            case mode
        }

        public init(logo: String? = nil, mode: String, source: String? = nil) {
            self.source = source

            self.logo = logo

            self.mode = mode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                source = try container.decode(String.self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mode = try container.decode(String.self, forKey: .mode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(mode, forKey: .mode)
        }
    }
}
