

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: SelfShipResponse
         Used By: Serviceability
     */

    class SelfShipResponse: Codable {
        public var active: Bool

        public var tat: Double

        public enum CodingKeys: String, CodingKey {
            case active

            case tat
        }

        public init(active: Bool, tat: Double) {
            self.active = active

            self.tat = tat
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            active = try container.decode(Bool.self, forKey: .active)

            tat = try container.decode(Double.self, forKey: .tat)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(tat, forKey: .tat)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: SelfShipResponse
         Used By: Serviceability
     */

    class SelfShipResponse: Codable {
        public var active: Bool

        public var tat: Double

        public enum CodingKeys: String, CodingKey {
            case active

            case tat
        }

        public init(active: Bool, tat: Double) {
            self.active = active

            self.tat = tat
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            active = try container.decode(Bool.self, forKey: .active)

            tat = try container.decode(Double.self, forKey: .tat)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(tat, forKey: .tat)
        }
    }
}
