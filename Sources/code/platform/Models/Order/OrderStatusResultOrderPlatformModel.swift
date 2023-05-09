

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderStatusResult
         Used By: Order
     */

    class OrderStatusResult: Codable {
        public var success: String

        public var result: [OrderStatusData]?

        public enum CodingKeys: String, CodingKey {
            case success

            case result
        }

        public init(result: [OrderStatusData]? = nil, success: String) {
            self.success = success

            self.result = result
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(String.self, forKey: .success)

            do {
                result = try container.decode([OrderStatusData].self, forKey: .result)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(result, forKey: .result)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderStatusResult
         Used By: Order
     */

    class OrderStatusResult: Codable {
        public var success: String

        public var result: [OrderStatusData]?

        public enum CodingKeys: String, CodingKey {
            case success

            case result
        }

        public init(result: [OrderStatusData]? = nil, success: String) {
            self.success = success

            self.result = result
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(String.self, forKey: .success)

            do {
                result = try container.decode([OrderStatusData].self, forKey: .result)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(result, forKey: .result)
        }
    }
}
