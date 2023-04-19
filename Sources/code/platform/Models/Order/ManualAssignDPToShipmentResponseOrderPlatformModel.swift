

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManualAssignDPToShipmentResponse
         Used By: Order
     */

    class ManualAssignDPToShipmentResponse: Codable {
        public var success: String

        public var errors: [String]?

        public enum CodingKeys: String, CodingKey {
            case success

            case errors
        }

        public init(errors: [String]? = nil, success: String) {
            self.success = success

            self.errors = errors
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(String.self, forKey: .success)

            do {
                errors = try container.decode([String].self, forKey: .errors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(errors, forKey: .errors)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ManualAssignDPToShipmentResponse
         Used By: Order
     */

    class ManualAssignDPToShipmentResponse: Codable {
        public var success: String

        public var errors: [String]?

        public enum CodingKeys: String, CodingKey {
            case success

            case errors
        }

        public init(errors: [String]? = nil, success: String) {
            self.success = success

            self.errors = errors
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(String.self, forKey: .success)

            do {
                errors = try container.decode([String].self, forKey: .errors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(errors, forKey: .errors)
        }
    }
}
