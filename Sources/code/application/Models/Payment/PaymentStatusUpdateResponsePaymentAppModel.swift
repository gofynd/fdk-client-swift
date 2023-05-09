

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateResponse
         Used By: Payment
     */
    class PaymentStatusUpdateResponse: Codable {
        public var retry: Bool

        public var aggregatorName: String

        public var status: String

        public var success: Bool?

        public var redirectUrl: String?

        public enum CodingKeys: String, CodingKey {
            case retry

            case aggregatorName = "aggregator_name"

            case status

            case success

            case redirectUrl = "redirect_url"
        }

        public init(aggregatorName: String, redirectUrl: String? = nil, retry: Bool, status: String, success: Bool? = nil) {
            self.retry = retry

            self.aggregatorName = aggregatorName

            self.status = status

            self.success = success

            self.redirectUrl = redirectUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            retry = try container.decode(Bool.self, forKey: .retry)

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            status = try container.decode(String.self, forKey: .status)

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

            try? container.encodeIfPresent(retry, forKey: .retry)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(success, forKey: .success)

            try? container.encode(redirectUrl, forKey: .redirectUrl)
        }
    }
}
