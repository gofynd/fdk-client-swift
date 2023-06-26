

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: Code
         Used By: Payment
     */

    class Code: Codable {
        public var name: String

        public var code: String

        public var merchantCode: String

        public enum CodingKeys: String, CodingKey {
            case name

            case code

            case merchantCode = "merchant_code"
        }

        public init(code: String, merchantCode: String, name: String) {
            self.name = name

            self.code = code

            self.merchantCode = merchantCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            code = try container.decode(String.self, forKey: .code)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: Code
         Used By: Payment
     */

    class Code: Codable {
        public var name: String

        public var code: String

        public var merchantCode: String

        public enum CodingKeys: String, CodingKey {
            case name

            case code

            case merchantCode = "merchant_code"
        }

        public init(code: String, merchantCode: String, name: String) {
            self.name = name

            self.code = code

            self.merchantCode = merchantCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            code = try container.decode(String.self, forKey: .code)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
        }
    }
}
