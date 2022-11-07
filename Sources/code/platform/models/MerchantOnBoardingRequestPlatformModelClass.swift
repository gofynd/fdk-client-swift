

import Foundation
public extension PlatformClient {
    /*
         Model: MerchantOnBoardingRequest
         Used By: Payment
     */

    class MerchantOnBoardingRequest: Codable {
        public var aggregator: String

        public var userId: String

        public var appId: String

        public var creditLineId: String

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case userId = "user_id"

            case appId = "app_id"

            case creditLineId = "credit_line_id"

            case status
        }

        public init(aggregator: String, appId: String, creditLineId: String, status: String, userId: String) {
            self.aggregator = aggregator

            self.userId = userId

            self.appId = appId

            self.creditLineId = creditLineId

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            userId = try container.decode(String.self, forKey: .userId)

            appId = try container.decode(String.self, forKey: .appId)

            creditLineId = try container.decode(String.self, forKey: .creditLineId)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(creditLineId, forKey: .creditLineId)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
