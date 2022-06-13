

import Foundation
public extension ApplicationClient {
    /*
         Model: PollingPaymentLinkResponse
         Used By: Payment
     */
    class PollingPaymentLinkResponse: Codable {
        public var statusCode: Int?

        public var message: String?

        public var redirectUrl: String?

        public var aggregatorName: String?

        public var status: String?

        public var httpStatus: Int?

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case statusCode = "status_code"

            case message

            case redirectUrl = "redirect_url"

            case aggregatorName = "aggregator_name"

            case status

            case httpStatus = "http_status"

            case success
        }

        public init(aggregatorName: String? = nil, httpStatus: Int? = nil, message: String? = nil, redirectUrl: String? = nil, status: String? = nil, statusCode: Int? = nil, success: Bool? = nil) {
            self.statusCode = statusCode

            self.message = message

            self.redirectUrl = redirectUrl

            self.aggregatorName = aggregatorName

            self.status = status

            self.httpStatus = httpStatus

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                statusCode = try container.decode(Int.self, forKey: .statusCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

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

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                httpStatus = try container.decode(Int.self, forKey: .httpStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(statusCode, forKey: .statusCode)

            try? container.encode(message, forKey: .message)

            try? container.encode(redirectUrl, forKey: .redirectUrl)

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encode(status, forKey: .status)

            try? container.encode(httpStatus, forKey: .httpStatus)

            try? container.encode(success, forKey: .success)
        }
    }
}
