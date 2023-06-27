

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentCode
         Used By: Payment
     */

    class PaymentCode: Codable {
        public var networks: String

        public var types: String

        public var name: String

        public var codes: Code

        public enum CodingKeys: String, CodingKey {
            case networks

            case types

            case name

            case codes
        }

        public init(codes: Code, name: String, networks: String, types: String) {
            self.networks = networks

            self.types = types

            self.name = name

            self.codes = codes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            networks = try container.decode(String.self, forKey: .networks)

            types = try container.decode(String.self, forKey: .types)

            name = try container.decode(String.self, forKey: .name)

            codes = try container.decode(Code.self, forKey: .codes)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(networks, forKey: .networks)

            try? container.encodeIfPresent(types, forKey: .types)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(codes, forKey: .codes)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentCode
         Used By: Payment
     */

    class PaymentCode: Codable {
        public var networks: String

        public var types: String

        public var name: String

        public var codes: Code

        public enum CodingKeys: String, CodingKey {
            case networks

            case types

            case name

            case codes
        }

        public init(codes: Code, name: String, networks: String, types: String) {
            self.networks = networks

            self.types = types

            self.name = name

            self.codes = codes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            networks = try container.decode(String.self, forKey: .networks)

            types = try container.decode(String.self, forKey: .types)

            name = try container.decode(String.self, forKey: .name)

            codes = try container.decode(Code.self, forKey: .codes)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(networks, forKey: .networks)

            try? container.encodeIfPresent(types, forKey: .types)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(codes, forKey: .codes)
        }
    }
}
