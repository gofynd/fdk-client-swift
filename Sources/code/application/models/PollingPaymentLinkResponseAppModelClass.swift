

import Foundation
public extension ApplicationClient {
    /*
         Model: PollingPaymentLinkResponse
         Used By: Payment
     */
    class PollingPaymentLinkResponse: Codable {
        public var status: String

        public var aggregatorName: String

        public var redirectUrl: String

        public var success: Bool

        public var httpStatus: Int

        public enum CodingKeys: String, CodingKey {
            case status

            case aggregatorName = "aggregator_name"

            case redirectUrl = "redirect_url"

            case success

            case httpStatus = "http_status"
        }

        public init(aggregatorName: String, httpStatus: Int, redirectUrl: String, status: String, success: Bool) {
            self.status = status

            self.aggregatorName = aggregatorName

            self.redirectUrl = redirectUrl

            self.success = success

            self.httpStatus = httpStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            redirectUrl = try container.decode(String.self, forKey: .redirectUrl)

            success = try container.decode(Bool.self, forKey: .success)

            httpStatus = try container.decode(Int.self, forKey: .httpStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(httpStatus, forKey: .httpStatus)
        }
    }
}
