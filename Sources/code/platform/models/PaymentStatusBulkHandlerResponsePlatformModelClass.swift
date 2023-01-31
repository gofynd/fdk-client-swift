

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentStatusBulkHandlerResponse
         Used By: Payment
     */

    class PaymentStatusBulkHandlerResponse: Codable {
        public var data: [PaymentStatusObject]?

        public var error: String?

        public var count: Int?

        public var status: Int

        public var success: String

        public enum CodingKeys: String, CodingKey {
            case data

            case error

            case count

            case status

            case success
        }

        public init(count: Int? = nil, data: [PaymentStatusObject]? = nil, error: String? = nil, status: Int, success: String) {
            self.data = data

            self.error = error

            self.count = count

            self.status = status

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode([PaymentStatusObject].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                error = try container.decode(String.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                count = try container.decode(Int.self, forKey: .count)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Int.self, forKey: .status)

            success = try container.decode(String.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(count, forKey: .count)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
