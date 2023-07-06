

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: Code
         Used By: Payment
     */

    class Code: Codable {
        public var code: String

        public var name: String

        public var merchantCode: String

        public enum CodingKeys: String, CodingKey {
            case code

            case name

            case merchantCode = "merchant_code"
        }

        public init(code: String, merchantCode: String, name: String) {
            self.code = code

            self.name = name

            self.merchantCode = merchantCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            code = try container.decode(String.self, forKey: .code)

            name = try container.decode(String.self, forKey: .name)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(name, forKey: .name)

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
        public var code: String

        public var name: String

        public var merchantCode: String

        public enum CodingKeys: String, CodingKey {
            case code

            case name

            case merchantCode = "merchant_code"
        }

        public init(code: String, merchantCode: String, name: String) {
            self.code = code

            self.name = name

            self.merchantCode = merchantCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            code = try container.decode(String.self, forKey: .code)

            name = try container.decode(String.self, forKey: .name)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
        }
    }
}
