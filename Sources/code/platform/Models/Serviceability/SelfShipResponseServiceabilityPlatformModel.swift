

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: SelfShipResponse
         Used By: Serviceability
     */

    class SelfShipResponse: Codable {
        public var tat: Double

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case tat

            case isActive = "is_active"
        }

        public init(isActive: Bool, tat: Double) {
            self.tat = tat

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            tat = try container.decode(Double.self, forKey: .tat)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tat, forKey: .tat)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
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

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case tat

            case isActive = "is_active"
        }

        public init(isActive: Bool, tat: Double) {
            self.tat = tat

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            tat = try container.decode(Double.self, forKey: .tat)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tat, forKey: .tat)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
