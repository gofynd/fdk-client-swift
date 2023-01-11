

import Foundation
public extension PlatformClient {
    /*
         Model: SetSizeDistribution
         Used By: Order
     */

    class SetSizeDistribution: Codable {
        public var sizes: Sizes?

        public enum CodingKeys: String, CodingKey {
            case sizes
        }

        public init(sizes: Sizes? = nil) {
            self.sizes = sizes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sizes = try container.decode(Sizes.self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sizes, forKey: .sizes)
        }
    }
}
