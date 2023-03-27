

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentStatusBulkHandlerResponse
         Used By: Payment
     */

    class PaymentStatusBulkHandlerResponse: Codable {
        public var success: String

        public var count: Int?

        public var data: [PaymentStatusObject]?

        public var status: Int

        public var error: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case count

            case data

            case status

            case error
        }

        public init(count: Int? = nil, data: [PaymentStatusObject]? = nil, error: String? = nil, status: Int, success: String) {
            self.success = success

            self.count = count

            self.data = data

            self.status = status

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(String.self, forKey: .success)

            do {
                count = try container.decode(Int.self, forKey: .count)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode([PaymentStatusObject].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Int.self, forKey: .status)

            do {
                error = try container.decode(String.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(count, forKey: .count)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}
