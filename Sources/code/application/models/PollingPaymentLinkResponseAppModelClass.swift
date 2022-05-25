

import Foundation
public extension ApplicationClient {
    /*
         Model: PollingPaymentLinkResponse
         Used By: Payment
     */
    class PollingPaymentLinkResponse: Codable {
        public var httpStatus: Int

        public var aggregatorName: String

        public var success: Bool

        public var status: String

        public var redirectUrl: String

        public enum CodingKeys: String, CodingKey {
            case httpStatus = "http_status"

            case aggregatorName = "aggregator_name"

            case success

            case status

            case redirectUrl = "redirect_url"
        }

        public init(aggregatorName: String, httpStatus: Int, redirectUrl: String, status: String, success: Bool) {
            self.httpStatus = httpStatus

            self.aggregatorName = aggregatorName

            self.success = success

            self.status = status

            self.redirectUrl = redirectUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            httpStatus = try container.decode(Int.self, forKey: .httpStatus)

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            success = try container.decode(Bool.self, forKey: .success)

            status = try container.decode(String.self, forKey: .status)

            redirectUrl = try container.decode(String.self, forKey: .redirectUrl)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(httpStatus, forKey: .httpStatus)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)
        }
    }
}
