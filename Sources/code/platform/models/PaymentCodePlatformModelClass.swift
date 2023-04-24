

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentCode
         Used By: Payment
     */

    class PaymentCode: Codable {
        public var name: String

        public var networks: String

        public var types: String

        public var codes: Code

        public enum CodingKeys: String, CodingKey {
            case name

            case networks

            case types

            case codes
        }

        public init(codes: Code, name: String, networks: String, types: String) {
            self.name = name

            self.networks = networks

            self.types = types

            self.codes = codes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            networks = try container.decode(String.self, forKey: .networks)

            types = try container.decode(String.self, forKey: .types)

            codes = try container.decode(Code.self, forKey: .codes)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(networks, forKey: .networks)

            try? container.encodeIfPresent(types, forKey: .types)

            try? container.encodeIfPresent(codes, forKey: .codes)
        }
    }
}
