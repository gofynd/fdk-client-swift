

import Foundation
public extension PlatformClient {
    /*
         Model: SetCODForUserRequest
         Used By: Payment
     */

    class SetCODForUserRequest: Codable {
        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"
        }

        public init(isActive: Bool) {
            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
