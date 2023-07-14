

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentCode
         Used By: Payment
     */

    class PaymentCode: Codable {
        public var types: String

        public var networks: String

        public var codes: Code

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case types

            case networks

            case codes

            case name
        }

        public init(codes: Code, name: String, networks: String, types: String) {
            self.types = types

            self.networks = networks

            self.codes = codes

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            types = try container.decode(String.self, forKey: .types)

            networks = try container.decode(String.self, forKey: .networks)

            codes = try container.decode(Code.self, forKey: .codes)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(types, forKey: .types)

            try? container.encodeIfPresent(networks, forKey: .networks)

            try? container.encodeIfPresent(codes, forKey: .codes)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentCode
         Used By: Payment
     */

    class PaymentCode: Codable {
        public var types: String

        public var networks: String

        public var codes: Code

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case types

            case networks

            case codes

            case name
        }

        public init(codes: Code, name: String, networks: String, types: String) {
            self.types = types

            self.networks = networks

            self.codes = codes

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            types = try container.decode(String.self, forKey: .types)

            networks = try container.decode(String.self, forKey: .networks)

            codes = try container.decode(Code.self, forKey: .codes)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(types, forKey: .types)

            try? container.encodeIfPresent(networks, forKey: .networks)

            try? container.encodeIfPresent(codes, forKey: .codes)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
