

import Foundation
public extension ApplicationClient {
    /*
         Model: PollingPaymentLinkResponse
         Used By: Payment
     */
    class PollingPaymentLinkResponse: Codable {
        public var httpStatus: Int

        public var success: Bool

        public var redirectUrl: String

        public var status: String

        public var aggregatorName: String

        public enum CodingKeys: String, CodingKey {
            case httpStatus = "http_status"

            case success

            case redirectUrl = "redirect_url"

            case status

            case aggregatorName = "aggregator_name"
        }

        public init(aggregatorName: String, httpStatus: Int, redirectUrl: String, status: String, success: Bool) {
            self.httpStatus = httpStatus

            self.success = success

            self.redirectUrl = redirectUrl

            self.status = status

            self.aggregatorName = aggregatorName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            httpStatus = try container.decode(Int.self, forKey: .httpStatus)

            success = try container.decode(Bool.self, forKey: .success)

            redirectUrl = try container.decode(String.self, forKey: .redirectUrl)

            status = try container.decode(String.self, forKey: .status)

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(httpStatus, forKey: .httpStatus)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
        }
    }
}
