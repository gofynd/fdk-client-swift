

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManualAssignDPToShipmentResponse
         Used By: Order
     */

    class ManualAssignDPToShipmentResponse: Codable {
        public var errors: [String]?

        public var success: String

        public enum CodingKeys: String, CodingKey {
            case errors

            case success
        }

        public init(errors: [String]? = nil, success: String) {
            self.errors = errors

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                errors = try container.decode([String].self, forKey: .errors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(String.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(errors, forKey: .errors)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ManualAssignDPToShipmentResponse
         Used By: Order
     */

    class ManualAssignDPToShipmentResponse: Codable {
        public var errors: [String]?

        public var success: String

        public enum CodingKeys: String, CodingKey {
            case errors

            case success
        }

        public init(errors: [String]? = nil, success: String) {
            self.errors = errors

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                errors = try container.decode([String].self, forKey: .errors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(String.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(errors, forKey: .errors)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
