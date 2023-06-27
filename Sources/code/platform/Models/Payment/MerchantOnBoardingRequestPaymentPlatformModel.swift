

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: MerchantOnBoardingRequest
         Used By: Payment
     */

    class MerchantOnBoardingRequest: Codable {
        public var creditLineId: String

        public var appId: String

        public var status: String

        public var userId: String

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case creditLineId = "credit_line_id"

            case appId = "app_id"

            case status

            case userId = "user_id"

            case aggregator
        }

        public init(aggregator: String, appId: String, creditLineId: String, status: String, userId: String) {
            self.creditLineId = creditLineId

            self.appId = appId

            self.status = status

            self.userId = userId

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            creditLineId = try container.decode(String.self, forKey: .creditLineId)

            appId = try container.decode(String.self, forKey: .appId)

            status = try container.decode(String.self, forKey: .status)

            userId = try container.decode(String.self, forKey: .userId)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(creditLineId, forKey: .creditLineId)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: MerchantOnBoardingRequest
         Used By: Payment
     */

    class MerchantOnBoardingRequest: Codable {
        public var creditLineId: String

        public var appId: String

        public var status: String

        public var userId: String

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case creditLineId = "credit_line_id"

            case appId = "app_id"

            case status

            case userId = "user_id"

            case aggregator
        }

        public init(aggregator: String, appId: String, creditLineId: String, status: String, userId: String) {
            self.creditLineId = creditLineId

            self.appId = appId

            self.status = status

            self.userId = userId

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            creditLineId = try container.decode(String.self, forKey: .creditLineId)

            appId = try container.decode(String.self, forKey: .appId)

            status = try container.decode(String.self, forKey: .status)

            userId = try container.decode(String.self, forKey: .userId)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(creditLineId, forKey: .creditLineId)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
