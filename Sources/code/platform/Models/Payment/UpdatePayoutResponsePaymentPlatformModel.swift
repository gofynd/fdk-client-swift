

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: UpdatePayoutResponse
         Used By: Payment
     */

    class UpdatePayoutResponse: Codable {
        public var isActive: Bool

        public var isDefault: Bool

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case isDefault = "is_default"

            case success
        }

        public init(isActive: Bool, isDefault: Bool, success: Bool) {
            self.isActive = isActive

            self.isDefault = isDefault

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(success, forKey: .success)
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

        public var isDefault: Bool

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case isDefault = "is_default"

            case success
        }

        public init(isActive: Bool, isDefault: Bool, success: Bool) {
            self.isActive = isActive

            self.isDefault = isDefault

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
