

import Foundation
public extension ApplicationClient {
    /*
         Model: PollingPaymentLinkResponse
         Used By: Payment
     */
    class PollingPaymentLinkResponse: Codable {
        public var httpStatus: Int?

        public var aggregatorName: String?

        public var message: String?

        public var success: Bool?

        public var statusCode: Int?

        public var redirectUrl: String?

        public var status: String?

        public enum CodingKeys: String, CodingKey {
            case httpStatus = "http_status"

            case aggregatorName = "aggregator_name"

            case message

            case success

            case statusCode = "status_code"

            case redirectUrl = "redirect_url"

            case status
        }

        public init(aggregatorName: String? = nil, httpStatus: Int? = nil, message: String? = nil, redirectUrl: String? = nil, status: String? = nil, statusCode: Int? = nil, success: Bool? = nil) {
            self.httpStatus = httpStatus

            self.aggregatorName = aggregatorName

            self.message = message

            self.success = success

            self.statusCode = statusCode

            self.redirectUrl = redirectUrl

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                httpStatus = try container.decode(Int.self, forKey: .httpStatus)

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
                message = try container.decode(String.self, forKey: .message)

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

            do {
                statusCode = try container.decode(Int.self, forKey: .statusCode)

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
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(httpStatus, forKey: .httpStatus)

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encode(message, forKey: .message)

            try? container.encode(success, forKey: .success)

            try? container.encode(statusCode, forKey: .statusCode)

            try? container.encode(redirectUrl, forKey: .redirectUrl)

            try? container.encode(status, forKey: .status)
        }
    }
}
