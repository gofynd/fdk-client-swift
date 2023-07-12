

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentStatusBulkHandlerResponse
         Used By: Payment
     */

    class PaymentStatusBulkHandlerResponse: Codable {
        public var error: String?

        public var count: Int?

        public var success: String

        public var data: [PaymentStatusObject]?

        public var status: Int

        public enum CodingKeys: String, CodingKey {
            case error

            case count

            case success

            case data

            case status
        }

        public init(count: Int? = nil, data: [PaymentStatusObject]? = nil, error: String? = nil, status: Int, success: String) {
            self.error = error

            self.count = count

            self.success = success

            self.data = data

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            success = try container.decode(String.self, forKey: .success)

            do {
                data = try container.decode([PaymentStatusObject].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Int.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(count, forKey: .count)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentStatusBulkHandlerResponse
         Used By: Payment
     */

    class PaymentStatusBulkHandlerResponse: Codable {
        public var error: String?

        public var count: Int?

        public var success: String

        public var data: [PaymentStatusObject]?

        public var status: Int

        public enum CodingKeys: String, CodingKey {
            case error

            case count

            case success

            case data

            case status
        }

        public init(count: Int? = nil, data: [PaymentStatusObject]? = nil, error: String? = nil, status: Int, success: String) {
            self.error = error

            self.count = count

            self.success = success

            self.data = data

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            success = try container.decode(String.self, forKey: .success)

            do {
                data = try container.decode([PaymentStatusObject].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Int.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(count, forKey: .count)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
