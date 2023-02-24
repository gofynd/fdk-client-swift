

import Foundation
public extension PlatformClient {
    /*
         Model: BagStateMapper
         Used By: Order
     */

    class BagStateMapper: Codable {
        public var name: String

        public var journeyType: String

        public var bsId: Int

        public var stateType: String

        public var appStateName: String?

        public var isActive: Bool?

        public var displayName: String

        public var appFacing: Bool?

        public var appDisplayName: String?

        public var notifyCustomer: Bool?

        public enum CodingKeys: String, CodingKey {
            case name

            case journeyType = "journey_type"

            case bsId = "bs_id"

            case stateType = "state_type"

            case appStateName = "app_state_name"

            case isActive = "is_active"

            case displayName = "display_name"

            case appFacing = "app_facing"

            case appDisplayName = "app_display_name"

            case notifyCustomer = "notify_customer"
        }

        public init(appDisplayName: String? = nil, appFacing: Bool? = nil, appStateName: String? = nil, bsId: Int, displayName: String, isActive: Bool? = nil, journeyType: String, name: String, notifyCustomer: Bool? = nil, stateType: String) {
            self.name = name

            self.journeyType = journeyType

            self.bsId = bsId

            self.stateType = stateType

            self.appStateName = appStateName

            self.isActive = isActive

            self.displayName = displayName

            self.appFacing = appFacing

            self.appDisplayName = appDisplayName

            self.notifyCustomer = notifyCustomer
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            bsId = try container.decode(Int.self, forKey: .bsId)

            stateType = try container.decode(String.self, forKey: .stateType)

            do {
                appStateName = try container.decode(String.self, forKey: .appStateName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                appFacing = try container.decode(Bool.self, forKey: .appFacing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appDisplayName = try container.decode(String.self, forKey: .appDisplayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                notifyCustomer = try container.decode(Bool.self, forKey: .notifyCustomer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(bsId, forKey: .bsId)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(appStateName, forKey: .appStateName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(appFacing, forKey: .appFacing)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encodeIfPresent(notifyCustomer, forKey: .notifyCustomer)
        }
    }
}
