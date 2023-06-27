

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentCode
         Used By: Payment
     */

    class PaymentCode: Codable {
        public var codes: Code

        public var types: String

        public var networks: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case codes

            case types

            case networks

            case name
        }

        public init(codes: Code, name: String, networks: String, types: String) {
            self.codes = codes

            self.types = types

            self.networks = networks

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            codes = try container.decode(Code.self, forKey: .codes)

            types = try container.decode(String.self, forKey: .types)

            networks = try container.decode(String.self, forKey: .networks)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codes, forKey: .codes)

            try? container.encodeIfPresent(types, forKey: .types)

            try? container.encodeIfPresent(networks, forKey: .networks)

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
        public var codes: Code

        public var types: String

        public var networks: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case codes

            case types

            case networks

            case name
        }

        public init(codes: Code, name: String, networks: String, types: String) {
            self.codes = codes

            self.types = types

            self.networks = networks

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            codes = try container.decode(Code.self, forKey: .codes)

            types = try container.decode(String.self, forKey: .types)

            networks = try container.decode(String.self, forKey: .networks)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codes, forKey: .codes)

            try? container.encodeIfPresent(types, forKey: .types)

            try? container.encodeIfPresent(networks, forKey: .networks)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
