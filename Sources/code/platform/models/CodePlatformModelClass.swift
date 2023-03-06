

import Foundation
public extension PlatformClient {
    /*
         Model: Code
         Used By: Payment
     */

    class Code: Codable {
        public var code: String

        public var merchantCode: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case code

            case merchantCode = "merchant_code"

            case name
        }

        public init(code: String, merchantCode: String, name: String) {
            self.code = code

            self.merchantCode = merchantCode

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            code = try container.decode(String.self, forKey: .code)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
