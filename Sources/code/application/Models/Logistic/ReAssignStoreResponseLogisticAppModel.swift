

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: ReAssignStoreResponse
         Used By: Logistic
     */
    class ReAssignStoreResponse: Codable {
        public var success: Bool

        public var toPincode: String

        public var assignedStores: [[String: Any]]?

        public var pystormbreakerUuid: String

        public var error: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case success

            case toPincode = "to_pincode"

            case assignedStores = "assigned_stores"

            case pystormbreakerUuid = "pystormbreaker_uuid"

            case error
        }

        public init(assignedStores: [[String: Any]]? = nil, error: [String: Any], pystormbreakerUuid: String, success: Bool, toPincode: String) {
            self.success = success

            self.toPincode = toPincode

            self.assignedStores = assignedStores

            self.pystormbreakerUuid = pystormbreakerUuid

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            do {
                assignedStores = try container.decode([[String: Any]].self, forKey: .assignedStores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pystormbreakerUuid = try container.decode(String.self, forKey: .pystormbreakerUuid)

            error = try container.decode([String: Any].self, forKey: .error)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(assignedStores, forKey: .assignedStores)

            try? container.encodeIfPresent(pystormbreakerUuid, forKey: .pystormbreakerUuid)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}
