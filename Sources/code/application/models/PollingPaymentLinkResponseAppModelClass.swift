

import Foundation
public extension ApplicationClient {
    /*
         Model: PollingPaymentLinkResponse
         Used By: Payment
     */
    class PollingPaymentLinkResponse: Codable {
        public var success: Bool

        public var aggregatorName: String

        public var redirectUrl: String

        public var status: String

        public var httpStatus: Int

        public enum CodingKeys: String, CodingKey {
            case success

            case aggregatorName = "aggregator_name"

            case redirectUrl = "redirect_url"

            case status

            case httpStatus = "http_status"
        }

        public init(aggregatorName: String, httpStatus: Int, redirectUrl: String, status: String, success: Bool) {
            self.success = success

            self.aggregatorName = aggregatorName

            self.redirectUrl = redirectUrl

            self.status = status

            self.httpStatus = httpStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            redirectUrl = try container.decode(String.self, forKey: .redirectUrl)

            status = try container.decode(String.self, forKey: .status)

            httpStatus = try container.decode(Int.self, forKey: .httpStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(httpStatus, forKey: .httpStatus)
        }
    }
}
