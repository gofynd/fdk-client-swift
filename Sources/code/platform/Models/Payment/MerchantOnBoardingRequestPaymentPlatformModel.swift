

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: MerchantOnBoardingRequest
         Used By: Payment
     */

    class MerchantOnBoardingRequest: Codable {
        public var creditLineId: String

        public var aggregator: String

        public var appId: String

        public var userId: String

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case creditLineId = "credit_line_id"

            case aggregator

            case appId = "app_id"

            case userId = "user_id"

            case status
        }

        public init(aggregator: String, appId: String, creditLineId: String, status: String, userId: String) {
            self.creditLineId = creditLineId

            self.aggregator = aggregator

            self.appId = appId

            self.userId = userId

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            creditLineId = try container.decode(String.self, forKey: .creditLineId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            appId = try container.decode(String.self, forKey: .appId)

            userId = try container.decode(String.self, forKey: .userId)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(creditLineId, forKey: .creditLineId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(status, forKey: .status)
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

        public var aggregator: String

        public var appId: String

        public var userId: String

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case creditLineId = "credit_line_id"

            case aggregator

            case appId = "app_id"

            case userId = "user_id"

            case status
        }

        public init(aggregator: String, appId: String, creditLineId: String, status: String, userId: String) {
            self.creditLineId = creditLineId

            self.aggregator = aggregator

            self.appId = appId

            self.userId = userId

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            creditLineId = try container.decode(String.self, forKey: .creditLineId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            appId = try container.decode(String.self, forKey: .appId)

            userId = try container.decode(String.self, forKey: .userId)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(creditLineId, forKey: .creditLineId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
