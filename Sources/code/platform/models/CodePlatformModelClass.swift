

import Foundation
public extension PlatformClient {
    /*
         Model: Code
         Used By: Payment
     */

    class Code: Codable {
        public var merchantCode: String

        public var code: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case merchantCode = "merchant_code"

            case code

            case name
        }

        public init(code: String, merchantCode: String, name: String) {
            self.merchantCode = merchantCode

            self.code = code

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)

            code = try container.decode(String.self, forKey: .code)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
