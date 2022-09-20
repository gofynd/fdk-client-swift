

import Foundation
public extension PlatformClient {
    /*
         Model: BagStatusHistory
         Used By: Orders
     */

    class BagStatusHistory: Codable {
        public var forward: Bool?

        public var status: String

        public var displayName: Bool?

        public var updatedAt: String?

        public var appDisplayName: Bool?

        public var stateType: Bool?

        public enum CodingKeys: String, CodingKey {
            case forward

            case status

            case displayName = "display_name"

            case updatedAt = "updated_at"

            case appDisplayName = "app_display_name"

            case stateType = "state_type"
        }

        public init(appDisplayName: Bool? = nil, displayName: Bool? = nil, forward: Bool? = nil, stateType: Bool? = nil, status: String, updatedAt: String? = nil) {
            self.forward = forward

            self.status = status

            self.displayName = displayName

            self.updatedAt = updatedAt

            self.appDisplayName = appDisplayName

            self.stateType = stateType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                forward = try container.decode(Bool.self, forKey: .forward)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            do {
                displayName = try container.decode(Bool.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appDisplayName = try container.decode(Bool.self, forKey: .appDisplayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stateType = try container.decode(Bool.self, forKey: .stateType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(forward, forKey: .forward)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encodeIfPresent(stateType, forKey: .stateType)
        }
    }
}
