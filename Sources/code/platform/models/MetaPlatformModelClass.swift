

import Foundation
public extension PlatformClient {
    /*
         Model: Meta
         Used By: Order
     */

    class Meta: Codable {
        public var dimension: Dimensions?

        public enum CodingKeys: String, CodingKey {
            case dimension
        }

        public init(dimension: Dimensions? = nil) {
            self.dimension = dimension
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dimension = try container.decode(Dimensions.self, forKey: .dimension)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dimension, forKey: .dimension)
        }
    }
}
