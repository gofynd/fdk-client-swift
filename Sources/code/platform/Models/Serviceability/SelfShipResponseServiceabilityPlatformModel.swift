

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: SelfShipResponse
         Used By: Serviceability
     */

    class SelfShipResponse: Codable {
        public var tat: Double

        public var active: Bool

        public enum CodingKeys: String, CodingKey {
            case tat

            case active
        }

        public init(active: Bool, tat: Double) {
            self.tat = tat

            self.active = active
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            tat = try container.decode(Double.self, forKey: .tat)

            active = try container.decode(Bool.self, forKey: .active)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tat, forKey: .tat)

            try? container.encodeIfPresent(active, forKey: .active)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: SelfShipResponse
         Used By: Serviceability
     */

    class SelfShipResponse: Codable {
        public var tat: Double

        public var active: Bool

        public enum CodingKeys: String, CodingKey {
            case tat

            case active
        }

        public init(active: Bool, tat: Double) {
            self.tat = tat

            self.active = active
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            tat = try container.decode(Double.self, forKey: .tat)

            active = try container.decode(Bool.self, forKey: .active)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tat, forKey: .tat)

            try? container.encodeIfPresent(active, forKey: .active)
        }
    }
}
