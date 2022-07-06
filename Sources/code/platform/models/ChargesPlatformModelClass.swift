

import Foundation
public extension PlatformClient {
    /*
         Model: Charges
         Used By: Configuration
     */

    class Charges: Codable {
        public var threshold: Double?

        public var charges: Double?

        public enum CodingKeys: String, CodingKey {
            case threshold

            case charges
        }

        public init(charges: Double? = nil, threshold: Double? = nil) {
            self.threshold = threshold

            self.charges = charges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                threshold = try container.decode(Double.self, forKey: .threshold)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                charges = try container.decode(Double.self, forKey: .charges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(threshold, forKey: .threshold)

            try? container.encodeIfPresent(charges, forKey: .charges)
        }
    }
}
