

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: ReAssignStoreResponse
         Used By: Logistic
     */
    class ReAssignStoreResponse: Codable {
        public var toPincode: String

        public var pystormbreakerUuid: String

        public var success: Bool

        public var error: [String: Any]

        public var assignedStores: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case toPincode = "to_pincode"

            case pystormbreakerUuid = "pystormbreaker_uuid"

            case success

            case error

            case assignedStores = "assigned_stores"
        }

        public init(assignedStores: [[String: Any]]? = nil, error: [String: Any], pystormbreakerUuid: String, success: Bool, toPincode: String) {
            self.toPincode = toPincode

            self.pystormbreakerUuid = pystormbreakerUuid

            self.success = success

            self.error = error

            self.assignedStores = assignedStores
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            pystormbreakerUuid = try container.decode(String.self, forKey: .pystormbreakerUuid)

            success = try container.decode(Bool.self, forKey: .success)

            error = try container.decode([String: Any].self, forKey: .error)

            do {
                assignedStores = try container.decode([[String: Any]].self, forKey: .assignedStores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(pystormbreakerUuid, forKey: .pystormbreakerUuid)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(assignedStores, forKey: .assignedStores)
        }
    }
}
