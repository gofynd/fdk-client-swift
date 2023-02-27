

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateResponse
         Used By: Payment
     */
    class PaymentStatusUpdateResponse: Codable {
        public var aggregatorName: String

        public var retry: Bool

        public var redirectUrl: String?

        public var status: String

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case aggregatorName = "aggregator_name"

            case retry

            case redirectUrl = "redirect_url"

            case status

            case success
        }

        public init(aggregatorName: String, redirectUrl: String? = nil, retry: Bool, status: String, success: Bool? = nil) {
            self.aggregatorName = aggregatorName

            self.retry = retry

            self.redirectUrl = redirectUrl

            self.status = status

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            retry = try container.decode(Bool.self, forKey: .retry)

            do {
                redirectUrl = try container.decode(String.self, forKey: .redirectUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(retry, forKey: .retry)

            try? container.encode(redirectUrl, forKey: .redirectUrl)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(success, forKey: .success)
        }
    }
}
