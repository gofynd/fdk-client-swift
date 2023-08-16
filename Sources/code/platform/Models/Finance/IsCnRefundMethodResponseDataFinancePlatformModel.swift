

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: IsCnRefundMethodResponseData
         Used By: Finance
     */

    class IsCnRefundMethodResponseData: Codable {
        public var isFirstTimeUser: Bool?

        public enum CodingKeys: String, CodingKey {
            case isFirstTimeUser = "is_first_time_user"
        }

        public init(isFirstTimeUser: Bool? = nil) {
            self.isFirstTimeUser = isFirstTimeUser
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isFirstTimeUser = try container.decode(Bool.self, forKey: .isFirstTimeUser)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isFirstTimeUser, forKey: .isFirstTimeUser)
        }
    }
}
