

import Foundation
public extension PlatformClient {
    /*
         Model: MerchantOnBoardingRequest
         Used By: Payment
     */

    class MerchantOnBoardingRequest: Codable {
        public var status: String

        public var userId: String

        public var creditLineId: String

        public var aggregator: String

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case status

            case userId = "user_id"

            case creditLineId = "credit_line_id"

            case aggregator

            case appId = "app_id"
        }

        public init(aggregator: String, appId: String, creditLineId: String, status: String, userId: String) {
            self.status = status

            self.userId = userId

            self.creditLineId = creditLineId

            self.aggregator = aggregator

            self.appId = appId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            userId = try container.decode(String.self, forKey: .userId)

            creditLineId = try container.decode(String.self, forKey: .creditLineId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            appId = try container.decode(String.self, forKey: .appId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(creditLineId, forKey: .creditLineId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }
}
