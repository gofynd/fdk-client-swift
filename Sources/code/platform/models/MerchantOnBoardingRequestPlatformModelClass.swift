

import Foundation
public extension PlatformClient {
    /*
         Model: MerchantOnBoardingRequest
         Used By: Payment
     */

    class MerchantOnBoardingRequest: Codable {
        public var userId: String

        public var creditLineId: String

        public var status: String

        public var aggregator: String

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case creditLineId = "credit_line_id"

            case status

            case aggregator

            case appId = "app_id"
        }

        public init(aggregator: String, appId: String, creditLineId: String, status: String, userId: String) {
            self.userId = userId

            self.creditLineId = creditLineId

            self.status = status

            self.aggregator = aggregator

            self.appId = appId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            userId = try container.decode(String.self, forKey: .userId)

            creditLineId = try container.decode(String.self, forKey: .creditLineId)

            status = try container.decode(String.self, forKey: .status)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            appId = try container.decode(String.self, forKey: .appId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(creditLineId, forKey: .creditLineId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }
}
