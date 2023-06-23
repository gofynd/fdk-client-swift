

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentCode
         Used By: Payment
     */

    class PaymentCode: Codable {
        public var name: String

        public var types: String

        public var codes: Code

        public var networks: String

        public enum CodingKeys: String, CodingKey {
            case name

            case types

            case codes

            case networks
        }

        public init(codes: Code, name: String, networks: String, types: String) {
            self.name = name

            self.types = types

            self.codes = codes

            self.networks = networks
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            types = try container.decode(String.self, forKey: .types)

            codes = try container.decode(Code.self, forKey: .codes)

            networks = try container.decode(String.self, forKey: .networks)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(types, forKey: .types)

            try? container.encodeIfPresent(codes, forKey: .codes)

            try? container.encodeIfPresent(networks, forKey: .networks)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentCode
         Used By: Payment
     */

    class PaymentCode: Codable {
        public var name: String

        public var types: String

        public var codes: Code

        public var networks: String

        public enum CodingKeys: String, CodingKey {
            case name

            case types

            case codes

            case networks
        }

        public init(codes: Code, name: String, networks: String, types: String) {
            self.name = name

            self.types = types

            self.codes = codes

            self.networks = networks
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            types = try container.decode(String.self, forKey: .types)

            codes = try container.decode(Code.self, forKey: .codes)

            networks = try container.decode(String.self, forKey: .networks)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(types, forKey: .types)

            try? container.encodeIfPresent(codes, forKey: .codes)

            try? container.encodeIfPresent(networks, forKey: .networks)
        }
    }
}
