

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: UpdatePayoutResponse
         Used By: Payment
     */

    class UpdatePayoutResponse: Codable {
        public var isActive: Bool

        public var success: Bool

        public var isDefault: Bool

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case success

            case isDefault = "is_default"
        }

        public init(isActive: Bool, isDefault: Bool, success: Bool) {
            self.isActive = isActive

            self.success = success

            self.isDefault = isDefault
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            success = try container.decode(Bool.self, forKey: .success)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: UpdatePayoutResponse
         Used By: Payment
     */

    class UpdatePayoutResponse: Codable {
        public var isActive: Bool

        public var success: Bool

        public var isDefault: Bool

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case success

            case isDefault = "is_default"
        }

        public init(isActive: Bool, isDefault: Bool, success: Bool) {
            self.isActive = isActive

            self.success = success

            self.isDefault = isDefault
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            success = try container.decode(Bool.self, forKey: .success)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
        }
    }
}
