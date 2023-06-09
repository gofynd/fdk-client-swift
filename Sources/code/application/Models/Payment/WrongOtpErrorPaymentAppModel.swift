

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: WrongOtpError
         Used By: Payment
     */
    class WrongOtpError: Codable {
        public var success: String

        public var isVerifiedFlag: Bool

        public var description: String

        public enum CodingKeys: String, CodingKey {
            case success

            case isVerifiedFlag = "is_verified_flag"

            case description
        }

        public init(description: String, isVerifiedFlag: Bool, success: String) {
            self.success = success

            self.isVerifiedFlag = isVerifiedFlag

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(String.self, forKey: .success)

            isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)

            description = try container.decode(String.self, forKey: .description)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }
}
