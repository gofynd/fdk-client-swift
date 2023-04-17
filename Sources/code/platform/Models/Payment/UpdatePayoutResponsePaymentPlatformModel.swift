

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: UpdatePayoutResponse
         Used By: Payment
     */

    class UpdatePayoutResponse: Codable {
        public var success: Bool

        public var isDefault: Bool

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case success

            case isDefault = "is_default"

            case isActive = "is_active"
        }

        public init(isActive: Bool, isDefault: Bool, success: Bool) {
            self.success = success

            self.isDefault = isDefault

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: UpdatePayoutResponse
         Used By: Payment
     */

    class UpdatePayoutResponse: Codable {
        public var success: Bool

        public var isDefault: Bool

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case success

            case isDefault = "is_default"

            case isActive = "is_active"
        }

        public init(isActive: Bool, isDefault: Bool, success: Bool) {
            self.success = success

            self.isDefault = isDefault

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
