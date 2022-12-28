

import Foundation
public extension PlatformClient {
    /*
         Model: MerchantOnBoardingRequest
         Used By: Payment
     */

    class MerchantOnBoardingRequest: Codable {
        public var creditLineId: String

        public var status: String

        public var appId: String

        public var userId: String

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case creditLineId = "credit_line_id"

            case status

            case appId = "app_id"

            case userId = "user_id"

            case aggregator
        }

        public init(aggregator: String, appId: String, creditLineId: String, status: String, userId: String) {
            self.creditLineId = creditLineId

            self.status = status

            self.appId = appId

            self.userId = userId

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            creditLineId = try container.decode(String.self, forKey: .creditLineId)

            status = try container.decode(String.self, forKey: .status)

            appId = try container.decode(String.self, forKey: .appId)

            userId = try container.decode(String.self, forKey: .userId)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(creditLineId, forKey: .creditLineId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
