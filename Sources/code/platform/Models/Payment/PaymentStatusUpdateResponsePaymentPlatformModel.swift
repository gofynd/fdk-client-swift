

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentStatusUpdateResponse
         Used By: Payment
     */

    class PaymentStatusUpdateResponse: Codable {
        public var status: String

        public var retry: Bool

        public var aggregatorName: String

        public var success: Bool?

        public var redirectUrl: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case retry

            case aggregatorName = "aggregator_name"

            case success

            case redirectUrl = "redirect_url"
        }

        public init(aggregatorName: String, redirectUrl: String? = nil, retry: Bool, status: String, success: Bool? = nil) {
            self.status = status

            self.retry = retry

            self.aggregatorName = aggregatorName

            self.success = success

            self.redirectUrl = redirectUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            retry = try container.decode(Bool.self, forKey: .retry)

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                redirectUrl = try container.decode(String.self, forKey: .redirectUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(retry, forKey: .retry)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(success, forKey: .success)

            try? container.encode(redirectUrl, forKey: .redirectUrl)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateResponse
         Used By: Payment
     */

    class PaymentStatusUpdateResponse: Codable {
        public var status: String

        public var retry: Bool

        public var aggregatorName: String

        public var success: Bool?

        public var redirectUrl: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case retry

            case aggregatorName = "aggregator_name"

            case success

            case redirectUrl = "redirect_url"
        }

        public init(aggregatorName: String, redirectUrl: String? = nil, retry: Bool, status: String, success: Bool? = nil) {
            self.status = status

            self.retry = retry

            self.aggregatorName = aggregatorName

            self.success = success

            self.redirectUrl = redirectUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            retry = try container.decode(Bool.self, forKey: .retry)

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                redirectUrl = try container.decode(String.self, forKey: .redirectUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(retry, forKey: .retry)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(success, forKey: .success)

            try? container.encode(redirectUrl, forKey: .redirectUrl)
        }
    }
}
