

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentCode
         Used By: Payment
     */

    class PaymentCode: Codable {
        public var name: String

        public var codes: Code

        public var networks: String

        public var types: String

        public enum CodingKeys: String, CodingKey {
            case name

            case codes

            case networks

            case types
        }

        public init(codes: Code, name: String, networks: String, types: String) {
            self.name = name

            self.codes = codes

            self.networks = networks

            self.types = types
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            codes = try container.decode(Code.self, forKey: .codes)

            networks = try container.decode(String.self, forKey: .networks)

            types = try container.decode(String.self, forKey: .types)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(codes, forKey: .codes)

            try? container.encodeIfPresent(networks, forKey: .networks)

            try? container.encodeIfPresent(types, forKey: .types)
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

        public var codes: Code

        public var networks: String

        public var types: String

        public enum CodingKeys: String, CodingKey {
            case name

            case codes

            case networks

            case types
        }

        public init(codes: Code, name: String, networks: String, types: String) {
            self.name = name

            self.codes = codes

            self.networks = networks

            self.types = types
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            codes = try container.decode(Code.self, forKey: .codes)

            networks = try container.decode(String.self, forKey: .networks)

            types = try container.decode(String.self, forKey: .types)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(codes, forKey: .codes)

            try? container.encodeIfPresent(networks, forKey: .networks)

            try? container.encodeIfPresent(types, forKey: .types)
        }
    }
}
