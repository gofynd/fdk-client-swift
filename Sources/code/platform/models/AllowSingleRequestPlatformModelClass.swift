

import Foundation
public extension PlatformClient {
    /*
         Model: AllowSingleRequest
         Used By: Catalog
     */

    class AllowSingleRequest: Codable {
        public var allowSingle: Bool

        public enum CodingKeys: String, CodingKey {
            case allowSingle = "allow_single"
        }

        public init(allowSingle: Bool) {
            self.allowSingle = allowSingle
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            allowSingle = try container.decode(Bool.self, forKey: .allowSingle)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allowSingle, forKey: .allowSingle)
        }
    }
}
