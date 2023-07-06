

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: ReAssignStoreResponse
         Used By: Logistic
     */
    class ReAssignStoreResponse: Codable {
        public var success: Bool

        public var pystormbreakerUuid: String

        public var toPincode: String

        public var error: [String: Any]

        public var assignedStores: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case success

            case pystormbreakerUuid = "pystormbreaker_uuid"

            case toPincode = "to_pincode"

            case error

            case assignedStores = "assigned_stores"
        }

        public init(assignedStores: [[String: Any]]? = nil, error: [String: Any], pystormbreakerUuid: String, success: Bool, toPincode: String) {
            self.success = success

            self.pystormbreakerUuid = pystormbreakerUuid

            self.toPincode = toPincode

            self.error = error

            self.assignedStores = assignedStores
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            pystormbreakerUuid = try container.decode(String.self, forKey: .pystormbreakerUuid)

            toPincode = try container.decode(String.self, forKey: .toPincode)

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

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(pystormbreakerUuid, forKey: .pystormbreakerUuid)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(assignedStores, forKey: .assignedStores)
        }
    }
}
