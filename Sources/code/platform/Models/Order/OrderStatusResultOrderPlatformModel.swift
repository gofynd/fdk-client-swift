

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderStatusResult
         Used By: Order
     */

    class OrderStatusResult: Codable {
        public var result: [OrderStatusData]?

        public var success: String

        public enum CodingKeys: String, CodingKey {
            case result

            case success
        }

        public init(result: [OrderStatusData]? = nil, success: String) {
            self.result = result

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                result = try container.decode([OrderStatusData].self, forKey: .result)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(String.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(result, forKey: .result)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderStatusResult
         Used By: Order
     */

    class OrderStatusResult: Codable {
        public var result: [OrderStatusData]?

        public var success: String

        public enum CodingKeys: String, CodingKey {
            case result

            case success
        }

        public init(result: [OrderStatusData]? = nil, success: String) {
            self.result = result

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                result = try container.decode([OrderStatusData].self, forKey: .result)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(String.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(result, forKey: .result)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
