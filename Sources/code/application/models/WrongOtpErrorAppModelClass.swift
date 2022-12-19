

import Foundation
public extension ApplicationClient {
    /*
         Model: WrongOtpError
         Used By: Payment
     */
    class WrongOtpError: Codable {
        public var description: String

        public var success: String

        public var isVerifiedFlag: Bool

        public enum CodingKeys: String, CodingKey {
            case description

            case success

            case isVerifiedFlag = "is_verified_flag"
        }

        public init(description: String, isVerifiedFlag: Bool, success: String) {
            self.description = description

            self.success = success

            self.isVerifiedFlag = isVerifiedFlag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            description = try container.decode(String.self, forKey: .description)

            success = try container.decode(String.self, forKey: .success)

            isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
        }
    }
}
