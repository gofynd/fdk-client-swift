

import Foundation
public extension PlatformClient {
    /*
         Model: FulFillingStore
         Used By: Orders
     */

    class FulFillingStore: Codable {
        public var code: String

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case code

            case id
        }

        public init(code: String, id: String) {
            self.code = code

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            code = try container.decode(String.self, forKey: .code)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
